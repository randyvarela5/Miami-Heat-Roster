//
//  Roster.swift
//  Miami Heat Roster
//
//  Created by Randy Varela on 4/29/25.
//

import Foundation

struct Roster: Identifiable {
    let id = UUID()
    let name: String
    let playerImage: String
    let position: String
    let number: Int
    let school: String
    let seasonsPlayed: Int
    let yearlySalary: String
}

struct RosterData {
    
    static let roster = [
        Roster(name: "Bam Adebayo",
               playerImage: "Bam-Adebayo",
               position: "Forward",
               number: 13,
               school: "University of Kentucky",
               seasonsPlayed: 8,
               yearlySalary: "35.8 Million"),
        
        Roster(name: "Kyle Anderson",
               playerImage: "Kyle-Anderson",
               position: "Forward",
               number: 20,
               school: "UCLA",
               seasonsPlayed: 12,
               yearlySalary: "8,780,488 Million"),
        
        Roster(name: "Alec Burks",
               playerImage: "Alec-Burks",
               position: "Guard",
               number: 18,
               school: "University of Colorado",
               seasonsPlayed: 14,
               yearlySalary: "3,303,771 Million"),
        
        Roster(name: "Josh Christopher",
               playerImage: "Josh-Christopher",
               position: "Guard",
               number: 8,
               school: "Arizona State",
               seasonsPlayed: 3,
               yearlySalary: "578,577"),
        
        Roster(name: "Tyler Herro",
               playerImage: "Tyler-Herro",
               position: "Guard",
               number: 14,
               school: "University of Kentucky",
               seasonsPlayed: 6,
               yearlySalary: "29,000,000"),
        
        Roster(name: "Haywood Highsmith",
               playerImage: "Haywood-Highsmith",
               position: "Forward",
               number: 24,
               school: "Wheeling",
               seasonsPlayed: 5,
               yearlySalary: "5,200,000"),
        
        Roster(name: "Jamie Jaquez Jr.",
               playerImage: "Jaime-Jaquez",
               position: "Forward",
               number: 11,
               school: "UCLA",
               seasonsPlayed: 2,
               yearlySalary: "3,685,800"),
        
        Roster(name: "Keshad Johnson",
               playerImage: "Keshad-Johnson",
               position: "Forward",
               number: 16,
               school: "University of Arizona",
               seasonsPlayed: 1,
               yearlySalary: "937,214"),
        
        Roster(name: "Nikola Jović",
               playerImage: "Nikola-Jovic",
               position: "Forward",
               number: 5,
               school: "KK Mega Basket",
               seasonsPlayed: 3,
               yearlySalary: "2,464,200"),
        
        Roster(name: "Pelle Larsson",
               playerImage: "Pelle-Larsson",
               position: "Guard",
               number: 9,
               school: "University of Arizona",
               seasonsPlayed: 1,
               yearlySalary: "1,157,153"),
        
        Roster(name: "Kevin Love",
               playerImage: "Kevin-Love",
               position: "Forward",
               number: 42,
               school: "UCLA",
               seasonsPlayed: 17,
               yearlySalary: "3,850,000"),
        
        Roster(name: "Davion Mitchell",
               playerImage: "Davion-Mitchell",
               position: "Guard",
               number: 45,
               school: "Baylor University",
               seasonsPlayed: 5,
               yearlySalary: "6,451,077"),
        
        Roster(name: "Duncan Robinson",
               playerImage: "Duncan-Robinson",
               position: "Forward",
               number: 55,
               school: "University of Michigan",
               seasonsPlayed: 7,
               yearlySalary: "19,406,000"),
        
        Roster(name: "Terry Rozier III",
               playerImage: "Terry-Rozier",
               position: "Guard",
               number: 2,
               school: "University of Louisville",
               seasonsPlayed: 11,
               yearlySalary: "24,924,126"),
        
        Roster(name: "Dru Smith",
               playerImage: "Dru-Smith",
               position: "Guard",
               number: 12,
               school: "University of Missouri",
               seasonsPlayed: 3,
               yearlySalary: "508,891"),
        
        Roster(name: "Isiah Stevens",
               playerImage: "Isaiah-Stevens",
               position: "Guard",
               number: 4,
               school: "Colorado State University",
               seasonsPlayed: 1,
               yearlySalary: "350,668"),
        
        Roster(name: "Kel'el Ware",
               playerImage: "Kelel-Ware",
               position: "Center",
               number: 7,
               school: "University of Indiana",
               seasonsPlayed: 1,
               yearlySalary: "4,231,800"),
        
        Roster(name: "Andrew Wiggins",
               playerImage: "Andrew-Wiggins",
               position: "Forward",
               number: 22,
               school: "University of Kansas",
               seasonsPlayed: 12,
               yearlySalary: "27,250,001"),
    ]
    
}
