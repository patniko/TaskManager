//
//  Task.swift
//  TaskManager
//
//  Created by Patrick Nikoletich
//

import Foundation
import SwiftUI

struct CherishedPerson : Identifiable , Equatable {
    var id : String = UUID().uuidString
    // Name of person
    let name : String
    // Gender of person
    let gender : Gender
    // Birthday of person
    let birthDay : Date
    // Important dates to remember
    let dates : [DateToRemember]
    // Keywords that identify this person and their interests
    let attributes : [String]
    // Relationship between user and this person
    let relationship : Relationship
}

struct DateToRemember : Identifiable, Equatable {
    var id : String = UUID().uuidString
    let title : String
    let date : Date
}

enum Gender : Int , Identifiable , CaseIterable {
    var id : Int { rawValue }
    
    case male
    case female
    case nonbinary
    
    var title : String {
        switch self {
            case .male :
                return "Male"
            case .female :
                return "Female"
            case .nonbinary :
                return "Non-Binary"
        }
    }
}

enum Relationship : Int , Identifiable , CaseIterable {
    var id : Int { rawValue }
    
    case significantOther
    case spouse
    case friend
    case parent
    
    var title : String {
        switch self {
            case .significantOther :
                return "Significant Other"
            case .spouse :
                return "Spouse"
            case .friend :
                return "Friend"
            case .parent :
                return "Parent"
        }
    }
}

func daysUntil(birthday: Date) -> Int {
    let cal = Calendar.current
    let today = cal.startOfDay(for: Date())
    let date = cal.startOfDay(for: birthday)
    let components = cal.dateComponents([.day, .month], from: date)
    let nextDate = cal.nextDate(after: today, matching: components, matchingPolicy: .nextTimePreservingSmallerComponents)
    return cal.dateComponents([.day], from: today, to: nextDate ?? today).day ?? 0
}

func daysUntilNextEvent(dates: [DateToRemember]) -> Int {
    return 25
}
