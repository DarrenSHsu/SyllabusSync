//
//  SyllabiQuery.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 12/1/24.
//

import Foundation

func matchSyllabusToCourse(syllabus: String, relevantCategories: [String], segments: [InformationSegment], prevMatch: [String], apiKey: String, completion: @escaping (String?) -> Void) {
    // Filter the relevant segments
    let relevantDescriptions = segments.filter { relevantCategories.contains($0.id) }.map { $0.description }
    
    // Prepare the prompt for the OpenAI API
    let prompt = """
You are an assistant helping match syllabi to course descriptions. Below is your operation parameters.
Objective:
Assist students in matching syllabi from other universities to UCI courses by referencing UCI's major requirements and course listings, then analyzing the provided syllabi to determine alignment.
Procedure:
Reference Information:
Utilize UCI Major Requirements, Relevant Course Listings, and previously matched courses included in the document as primary references.
Each course is detailed with:
Title
Number of Units
Description
Prerequisites, restrictions, grading options, and repeatability information (if applicable).
Processing Provided Syllabi:
Begin analysis with the lowest-level courses listed in the Major Requirements not already listed as matched, proceeding to upper-division courses.
If no match is found within the specified major requirements, expand the search to other courses in the UCI Course Listing.
Matching Criteria:
Compare syllabus content such as course objectives, topics covered, assignments, and textbook references with UCI course descriptions.
Consider similarity in learning outcomes, scope, and prerequisites.
Ensure new matched course is not in the list of previously matched courses.
Special Considerations:
Pay attention to notes on overlapping courses, restrictions, or courses that are considered equivalent.
Ensure the match accounts for prerequisites and restrictions specified in the UCI course details.
Major Requirements:
Start with core series or required courses (e.g., I&C SCI 31-33, IN4MATX 43, STATS 7/67).
Proceed to Informatics Core Requirements or any other specific series mentioned.
Comprehensive Search:
If a match isn't apparent in the required or core courses, review additional courses listed under I&C SCI, IN4MATX, STATS, or other relevant subjects in the broader UCI course catalog.
Document Management:
Organize responses for easier review and cross-referencing.
Notes:
Restrictions and prerequisites take precedence in determining eligibility for matching.

Syllabus:
\(syllabus)

Degree Requirements:
\(degreeRequirementsFull)

Previously Matched Courses:
\(prevMatch.enumerated().map { "\($0.offset + 1). \($0.element)" }.joined(separator: "\n"))

Course Descriptions:
\(relevantDescriptions.enumerated().map { "\($0.offset + 1). \($0.element)" }.joined(separator: "\n"))

Output Format: Return the following information in order as a list separated by "|". Do not return anything but the list, as I do not need clarification.
Syllabus Course Title: Extracted from the provided syllabus, containing the subject and course number.
Syllabus Summary: A concise 1-2 sentence summary of the course.
Matched Course Title: The UCI course that matches the syllabus.
Matched Course Description: Description of the UCI course from the listing.
Reasoning: Justification for why the courses match based on content, objectives, or prerequisites in 3-4 sentences.

Ensure the output has exactly five sections. Ensure each of the sections are not prefaced with anything. Ensure that they are separated by "|" and only "|", without any new line characters.
"""

    // Prepare the OpenAI API request body
    let requestBody: [String: Any] = [
        "model": "gpt-4o",
        "messages": [
            ["role": "system", "content": "You are an assistant trained to match syllabi with course descriptions."],
            ["role": "user", "content": prompt]
        ],
        "temperature": 0.0
    ]

    // Configure the API URL
    guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
        completion(nil)
        return
    }

    // Configure the request
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

    // Perform the network request
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
            // Step 1: Deserialize the JSON data into a dictionary
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                //print("Parsed JSON: \(json)") // Debug: View the entire JSON structure
                
                // Step 2: Extract the 'choices' array
                if let choices = json["choices"] as? [[String: Any]] {
                    //print("Choices: \(choices)") // Debug: View the 'choices' array
                    
                    // Step 3: Get the first choice's message
                    if let firstChoice = choices.first,
                       let message = firstChoice["message"] as? [String: Any] {
                        //print("Message: \(message)") // Debug: View the 'message' dictionary
                        
                        // Step 4: Extract the 'content' field
                        if let text = message["content"] as? String {
                            //print("Content: \(text)") // Debug: View the extracted text
                            
                            // Step 5: Return the trimmed text
                            completion(text.trimmingCharacters(in: .whitespacesAndNewlines))
                            return
                        }
                    }
                }
            }
            
            // Handle unexpected formats
            print("Unexpected response format")
            completion(nil)
            
        } catch {
            // Handle JSON parsing errors
            print("Error parsing response: \(error)")
            completion(nil)
        }

    }

    task.resume()
}
