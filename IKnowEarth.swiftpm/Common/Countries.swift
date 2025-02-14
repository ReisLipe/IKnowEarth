//
//  Countries.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 13/02/25.
//

import SwiftUI

struct Country: Equatable {
    let name: String
    let card: String
    let blankCard: String
    let capital: String
    let population: Int
    let area: Double
}

enum testCountries: CaseIterable {
    case bra
    case chi
    case lyb
    
    var get: Country {
        switch self {
        case .bra: return .init(
            name: "Brazil",
            card: "brazil",
            blankCard: "brazilBlank",
            capital: "Brasília",
            population: 212559417,
            area: 8515767.0
        )
        case .chi: return .init(
            name: "China",
            card: "china",
            blankCard: "chinaBlank",
            capital: "Beijing",
            population: 1402637775,
            area: 12313231.0
        )
        case .lyb: return .init(
            name: "Lybia",
            card: "lybia",
            blankCard: "lybiaBlank",
            capital: "Tripoli",
            population: 6871022,
            area: 1759540.0
        )
            
        }
    }
}

//enum Countries: CaseIterable {
//    case bra
//    case usa
//    case can
//    case chi
//    case rus
//    case ind
//    case saf
//    case arg
//    case egy
//    case mex
//    case ita
//    case ger
//    case fra
//    case eth
//    case vnm
//    case jpn
//    case nga
//    case tur
//    case idn
//    
//    var get: Country {
//        switch self {
//        case .bra: return .init(name: "Brazil", flag: "br", capital: "Brasília", population: 212559417, area: 8515767.0)
//        case .usa: return .init(name: "United States", flag: "us", capital: "Washington, D.C.", population: 331002651, area: 9372610.0)
//        case .can: return .init(name: "Canada", flag: "ca", capital: "Ottawa", population: 37742154, area: 9984670.0)
//        case .chi: return .init(name: "China", flag: "cn", capital: "Beijing", population: 1402112000, area: 9596961.0)
//        case .rus: return .init(name: "Russia", flag: "ru", capital: "Moscow", population: 145934462, area: 17098242.0)
//        case .ind: return .init(name: "India", flag: "in", capital: "New Delhi", population: 1380004385, area: 3287263.0)
//        case .saf: return .init(name: "South Africa", flag: "za", capital: "Pretoria", population: 59308690, area: 1221037.0)
//        case .arg: return .init(name: "Argentina", flag: "ar", capital: "Buenos Aires", population: 45195777, area: 2780400.0)
//        case .egy: return .init(name: "Egypt", flag: "eg", capital: "Cairo", population: 102334404, area: 1002450.0)
//        case .mex: return .init(name: "Mexico", flag: "mx", capital: "Mexico City", population: 128932753, area: 1964375.0)
//        case .ita: return .init(name: "Italy", flag: "it", capital: "Rome", population: 60461826, area: 301340.0)
//        case .ger: return .init(name: "Germany", flag: "de", capital: "Berlin", population: 83783942, area: 357022.0)
//        case .fra: return .init(name: "France", flag: "fr", capital: "Paris", population: 65273511, area: 551695.0)
//        case .eth: return .init(name: "Ethiopia", flag: "et", capital: "Addis Ababa", population: 114963588, area: 1104300.0)
//        case .vnm: return .init(name: "Vietnam", flag: "vn", capital: "Hanoi", population: 97338579, area: 331212.0)
//        case .jpn: return .init(name: "Japan", flag: "jp", capital: "Tokyo", population: 126476461, area: 377975.0)
//        case .nga: return .init(name: "Nigeria", flag: "ng", capital: "Abuja", population: 206139589, area: 923768.0)
//        case .tur: return .init(name: "Turkey", flag: "tr", capital: "Ankara", population: 84339067, area: 783562.0)
//        case .idn: return .init(name: "Indonesia", flag: "id", capital: "Jakarta", population: 273523615, area: 1904569.0)
//        }
//    }

