import Foundation

func summarizeSyllabusSync(syllabus: String, apiKey: String) -> String? {
    let url = URL(string: "https://api.openai.com/v1/chat/completions")!
    let headers: [String: String] = [
        "Authorization": "Bearer \(apiKey)",
        "Content-Type": "application/json"
    ]
    
    let requestBody: [String: Any] = [
        "model": "gpt-3.5-turbo",
        "messages": [
            ["role": "system", "content": "You are an expert summarizer for academic content. Summarize the syllabus provided in a way that preserves maximum details about topics, structure, and learning outcomes, focusing on clarity and matching potential for similar course descriptions."],
            ["role": "user", "content": syllabus]
        ],
        "temperature": 0.2,
        "max_tokens": 1000
    ]
    print("Prompt: \(syllabus)\n\n")
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = headers
    request.httpBody = try? JSONSerialization.data(withJSONObject: requestBody, options: [])
    
    let semaphore = DispatchSemaphore(value: 0)
    var resultSummary: String?
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        defer { semaphore.signal() }
        
        guard let data = data, error == nil else {
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
            return
        }
        
        do {
            if let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let choices = jsonResponse["choices"] as? [[String: Any]],
               let message = choices.first?["message"] as? [String: Any],
               let summary = message["content"] as? String {
                resultSummary = summary
            } else {
                print("Invalid response structure.")
            }
        } catch {
            print("Error parsing JSON: \(error.localizedDescription)")
        }
    }
    
    task.resume()
    semaphore.wait() // Wait for the network call to finish
    return resultSummary
}
