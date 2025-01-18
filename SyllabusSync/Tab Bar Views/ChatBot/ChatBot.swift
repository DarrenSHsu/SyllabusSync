//
//  ChatBot.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//
import SwiftUI
import SwiftData

struct Message: Identifiable, Hashable {
    var id: UUID = .init()
    var text: String
    var isUser: Bool
}

struct ChatBot: View {
    @State private var showProgressView = false
    @State private var searchFieldValue = ""
    @State private var messages = [Message]()
    
    var body: some View {
        VStack {
            // Display the messages
            Responses(chatLog: messages)
            
            // Show a progress indicator if API is being called
            if showProgressView {
                ProgressView("Processing...")
                    .padding()
            }
            
            Section {
                HStack {
                    Button(action: { UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)}) {
                        Image(systemName: "keyboard")
                            .font(Font.title.weight(.light))
                            .foregroundColor(.blue)
                    }
                    TextField("Message...", text: $searchFieldValue, axis: .vertical)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .background(Color.gray.opacity(0.1))
                        .disabled(messages.last?.isUser == true) // Safely unwrapped
                    
                    // Button to clear the text field and send the message
                    Button(action: {
                        if inputDataValidated() {
                            let currentQuestion = searchFieldValue // Save a local copy
                            messages.append(Message(text: currentQuestion, isUser: true))
                            searchFieldValue = "" // Clear input field immediately
                            
                            showProgressView = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                searchApi(question: currentQuestion)
                            }
                        }
                    }) {
                        Image(systemName: "paperplane.circle.fill")
                            .imageScale(.medium)
                            .font(Font.title.weight(.regular))
                    }
                    .disabled(messages.last?.isUser == true) // Safely unwrapped
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 15))
            }
        }
        .padding()
    }
    
    // Validate user input
    func inputDataValidated() -> Bool {
        return !searchFieldValue.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    /*
     ------------------
     MARK: Search API
     ------------------
     */
    func searchApi(question: String) {
        print("Question sent to API: \(question)")
        
        determineRelevantCategories(question: question, segments: segments, apiKey: apiKey) { relevantIds in
            if let relevantIds = relevantIds {
                print("Relevant segment IDs: \(relevantIds)")
                if (relevantIds[0] == "None") {
                    DispatchQueue.main.async {
                        print("Bad Question.")
                        messages.append(Message(text: "I can only answer questions regarding topics I know.", isUser: false))
                        showProgressView = false
                    }
                }
                else {
                    answerQuestionWithRelevantCategories(
                        question: question,
                        relevantCategories: relevantIds,
                        segments: fullSegments,
                        apiKey: apiKey
                    ) { response in
                        DispatchQueue.main.async {
                            if let response = response {
                                print("AI Response: \(response)")
                                messages.append(Message(text: response, isUser: false))
                            } else {
                                print("Failed to get a response.")
                                messages.append(Message(text: "Please try again later.", isUser: false))
                            }
                            showProgressView = false
                        }
                    }
                }
            } else {
                print("Failed to determine relevant segments.")
                DispatchQueue.main.async {
                    messages.append(Message(text: "Please try again later.", isUser: false))
                    showProgressView = false
                }
            }
        }
    }
}
