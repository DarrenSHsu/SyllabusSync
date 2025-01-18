//
//  DocumentPicker.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 12/1/24.
//

import SwiftUI
import UIKit

struct DocumentPicker: UIViewControllerRepresentable {
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker

        init(parent: DocumentPicker) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            guard let selectedURL = urls.first else { return }
            parent.didPickDocument(selectedURL)
        }

        func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
            parent.didCancel()
        }
    }

    var didPickDocument: (URL) -> Void
    var didCancel: () -> Void

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf])
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
}
