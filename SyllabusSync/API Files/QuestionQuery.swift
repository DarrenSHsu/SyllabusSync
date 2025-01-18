//
//  QuestionQuery.swift
//  TestOpenAIAPI
//
//  Created by Darren Hsu on 12/1/24.
//

import Foundation

func answerQuestionWithRelevantCategories(question: String, relevantCategories: [String], segments: [InformationSegment], apiKey: String, completion: @escaping (String?) -> Void) {
    // Filter the relevant segments
    let relevantDescriptions = segments.filter { relevantCategories.contains($0.id) }.map { $0.description }
    
    // Prepare the input for the OpenAI API
    //Assume the question is from a undergraduate Informatics major. 
    let prompt = """
You are an assistant. Use the following relevant information segments to answer the question. 

Question:
"\(question)"

Relevant Information:
\(relevantDescriptions.enumerated().map { "\($0.offset + 1). \($0.element)" }.joined(separator: "\n"))

Answer the question using the provided information.
"""

    let requestBody: [String: Any] = [
        "model": "gpt-4o",
        "messages": [
            ["role": "system", "content": "You are an assistant."],
            ["role": "user", "content": prompt]
        ],
        "max_tokens": 500,
        "temperature": 0.7
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
                completion(text.trimmingCharacters(in: .whitespacesAndNewlines))
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
