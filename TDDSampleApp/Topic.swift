//
//  Topic.swift
//  TDDSampleApp
//
//  Created by Rene Valdes on 1/31/24.
//

import Foundation

struct Topic {
    
    let name: String
    let tag: String
    private(set) var _recentQuestions: [Question] = []
    
    func recentQuestions() -> [Question] {
        return _recentQuestions.sorted(by: {$0.date < $1.date})
    }
    
    mutating func addQuestion(_ question: Question) {
        _recentQuestions.append(question)
    }
}
