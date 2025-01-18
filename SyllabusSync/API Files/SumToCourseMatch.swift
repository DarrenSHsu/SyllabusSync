//
//  SumToCourseMatch.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 12/4/24.
//

import Foundation

func matchSyllabusToCourse(syllabusSummary: String, courseListings: String, apiKey: String, completion: @escaping (String?) -> Void) {
    
    
    let prompt = """
    Match the following syllabus summary to the three most relevant course from the course listings:
    
    Syllabus Summary:
    \(syllabusSummary)
    
    Course Listings:
    \(courseListings)
    
    Return the matched course information, consisting of the course title, course description, and any other details listed for the course, as a list seperated by two new line characters. Return just the list of courses, without any additional text. 
    """
    
    // Set up the request
    let url = URL(string: "https://api.openai.com/v1/chat/completions")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
    
    // Configure the request body
    let requestBody: [String: Any] = [
        "model": "gpt-4o",
        "messages": [
            ["role": "system", "content": "You are an assistant that matches syllabus summaries to course listings."],
            ["role": "user", "content": prompt]
        ],
        "max_tokens": 100,
        "temperature": 0.0
    ]
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: requestBody, options: [])
    } catch {
        print("Failed to encode request body: \(error)")
        completion(nil)
        return
    }
    
    // Perform the API call
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data, error == nil else {
            print("API call failed: \(error?.localizedDescription ?? "No error description")")
            completion(nil)
            return
        }
        
        // Parse the response
        do {
            // Attempt to parse the JSON
            print("Starting JSON parsing...")
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                print("JSON successfully parsed: \(json)")
                
                // Attempt to extract "choices"
                if let choices = json["choices"] as? [[String: Any]] {
                    print("Choices extracted: \(choices)")
                    
                    // Attempt to extract the first "message"
                    if let message = choices.first?["message"] as? [String: Any] {
                        print("Message extracted: \(message)")
                        
                        // Attempt to extract "content" from the message
                        if let text = message["content"] as? String {
                            print("Content extracted: \(text)")
                            
                            // Trim whitespaces and newlines
                            let matchingCourseID = text.trimmingCharacters(in: .whitespacesAndNewlines)
                            print("Final trimmed course ID: \(matchingCourseID)")
                            
                            // Call the completion handler with the result
                            completion(matchingCourseID)
                        } else {
                            print("Failed to extract 'content' from message")
                            completion(nil)
                        }
                    } else {
                        print("Failed to extract 'message' from choices")
                        completion(nil)
                    }
                } else {
                    print("Failed to extract 'choices' from JSON")
                    completion(nil)
                }
            } else {
                print("Failed to parse JSON as [String: Any]")
                completion(nil)
            }
        } catch {
            print("Failed to parse JSON response: \(error)")
            completion(nil)
        }

    }
    
    task.resume()
}
