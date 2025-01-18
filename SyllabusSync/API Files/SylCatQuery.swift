//
//  InformationSegment.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 12/1/24.
//


import Foundation

func determineSyllabusListings(syllabus: String, segments: [InformationSegment], apiKey: String, completion: @escaping ([String]?) -> Void) {
    // Prepare the input for the OpenAI API
    let prompt = """
You are an assistant. Based on the Syllabus Summary provided, identify the IDs of subject course listings that could be used to answer the question.

Syllabus Summary:
"\(syllabus)"

Course Listings by Subject:
\(segments.map { "\($0.id): \($0.description)" }.joined(separator: "\n"))

Return the relevant IDs as a comma-separated list. Do not return anything but a comma-separated list, as I do not need clarification. If none seem like they can be used to answer the question, return \"None\".
"""
    let requestBody: [String: Any] = [
        "model": "gpt-4o",
        "messages": [
            ["role": "system", "content": "You are an assistant."],
            ["role": "user", "content": prompt]
        ],
        "max_tokens": 100,
        "temperature": 0
    ]
    
    guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
        completion(nil)
        return
    }

    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")

    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: requestBody, options: [])
    } catch {
        print("Error encoding request body: \(error)")
        completion(nil)
        return
    }

    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard error == nil else {
            print("Error in API call: \(error!.localizedDescription)")
            completion(nil)
            return
        }

        guard let data = data else {
            print("No data received")
            completion(nil)
            return
        }

        do {
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let choices = json["choices"] as? [[String: Any]],
               let message = choices.first?["message"] as? [String: Any],
               let text = message["content"] as? String {
                let relevantIds = text.split(separator: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                completion(relevantIds)
            } else {
                print("Unexpected response format")
                completion(nil)
            }
        } catch {
            print("Error parsing response: \(error)")
            completion(nil)
        }
    }

    task.resume()
}
