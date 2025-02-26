//
//  Countries.swift
//  IKnowEarth
//
//  Created by Joao Filipe Reis Justo da Silva on 13/02/25.
//

import SwiftUI



// MARK: - Copyright - FLAG LICENSE
// Copyright of the flags imported from figma and used for the game cards
/*
 Graphical assets, files, code and documentation released under the MIT.
 Docs released under Creative Commons.
 
 Credits,
 Jonas Bröms.
 */

enum Countries: CaseIterable {
    case brazil
    case china
    case argentina
    case angola
    case uruguay
    case chile
    case colombia
    case ecuador
    case papuanewguinea
    case newzeland
    case kiribati
    case usa
    case ukraine
    case poland
    case palestine
    case france
    case southkorea
    case vietnam
    case lebanon
    case ethipia
    case liberia
    case kuwait
    case mexico
    case panama
    case portugal
    case guatemala
    case greece
    case hungary
    case ireland
    case croatia
    case switzerland
    case germany
    case cyprus
    case uganda
    case turkey
    case israel
    case denmark
    case egypt
    case russia
    case nigeria
    case japan
    
    var get: Country {
        switch self {
        case .brazil: return .init(
            name: "Brazil",
            card: "CardBrazil",
            blankCard: "CardBrazilBlank",
            capital: "Brasília",
            population: 212559417,
            area: 8515767.0
        )
        case .china: return .init(
            name: "China",
            card: "CardChina",
            blankCard: "CardChinaBlank",
            capital: "Beijing",
            population: 1402637775,
            area: 12313231.0
        )
        case .argentina: return .init(
            name: "Argentina",
            card: "CardArgentina",
            blankCard: "CardArgentinaBlank",
            capital: "Buenos Aires",
            population: 45195777,
            area: 2780400.0
        )
        case .angola: return .init(
            name: "Angola",
            card: "CardAngola",
            blankCard: "CardAngolaBlank",
            capital: "Luanda",
            population: 32866268,
            area: 1246700.0
        )
        case .uruguay: return .init(
            name: "Uruguay",
            card: "CardUruguay",
            blankCard: "CardUruguayBlank",
            capital: "Montevideo",
            population: 3473727,
            area: 181034.0
        )
        case .chile: return .init(
            name: "Chile",
            card: "CardChile",
            blankCard: "CardChileBlank",
            capital: "Santiago",
            population: 19116209,
            area: 756102.0
        )
        case .colombia: return .init(
            name: "Colombia",
            card: "CardColombia",
            blankCard: "CardColombiaBlank",
            capital: "Bogotá",
            population: 50882884,
            area: 1141748.0
        )
        case .ecuador: return .init(
            name: "Ecuador",
            card: "CardEcuador",
            blankCard: "CardEcuadorBlank",
            capital: "Quito",
            population: 17643060,
            area: 276841.0
        )
        case .papuanewguinea: return .init(
            name: "Papua New Guinea",
            card: "CardPapuaNewGuinea",
            blankCard: "CardPapuaNewGuineaBlank",
            capital: "Port Moresby",
            population: 8947027,
            area: 462840.0
        )
        case .newzeland: return .init(
            name: "New Zealand",
            card: "CardNewZealand",
            blankCard: "CardNewZealandBlank",
            capital: "Wellington",
            population: 5122600,
            area: 270467.0
        )
        case .kiribati: return .init(
            name: "Kiribati",
            card: "CardKiribati",
            blankCard: "CardKiribatiBlank",
            capital: "South Tarawa",
            population: 119449,
            area: 811.0
        )
        case .usa: return .init(
            name: "USA",
            card: "CardUSA",
            blankCard: "CardUSABlank",
            capital: "Washington, D.C.",
            population: 331002651,
            area: 9372610.0
        )
        case .ukraine: return .init(
            name: "Ukraine",
            card: "CardUkraine",
            blankCard: "CardUkraineBlank",
            capital: "Kyiv",
            population: 43733759,
            area: 603500.0
        )
        case .poland: return .init(
            name: "Poland",
            card: "CardPoland",
            blankCard: "CardPolandBlank",
            capital: "Warsaw",
            population: 37846611,
            area: 312696.0
        )
        case .palestine: return .init(
            name: "Palestine",
            card: "CardPalestine",
            blankCard: "CardPalestineBlank",
            capital: "Ramallah",
            population: 5101416,
            area: 6020.0
        )
        case .france: return .init(
            name: "France",
            card: "CardFrance",
            blankCard: "CardFranceBlank",
            capital: "Paris",
            population: 65273511,
            area: 551695.0
        )
        case .southkorea: return .init(
            name: "South Korea",
            card: "CardSouthKorea",
            blankCard: "CardSouthKoreaBlank",
            capital: "Seoul",
            population: 51780579,
            area: 100210.0
        )
        case .vietnam: return .init(
            name: "Vietnam",
            card: "CardVietnam",
            blankCard: "CardVietnamBlank",
            capital: "Hanoi",
            population: 97338579,
            area: 331212.0
        )
        case .lebanon: return .init(
            name: "Lebanon",
            card: "CardLebanon",
            blankCard: "CardLebanonBlank",
            capital: "Beirut",
            population: 6825442,
            area: 10452.0
        )
        case .ethipia: return .init(
            name: "Ethiopia",
            card: "CardEthiopia",
            blankCard: "CardEthiopiaBlank",
            capital: "Addis Ababa",
            population: 114963588,
            area: 1104300.0
        )
        case .liberia: return .init(
            name: "Liberia",
            card: "CardLiberia",
            blankCard: "CardLiberiaBlank",
            capital: "Monrovia",
            population: 5057681,
            area: 111369.0
        )
        case .kuwait: return .init(
            name: "Kuwait",
            card: "CardKuwait",
            blankCard: "CardKuwaitBlank",
            capital: "Kuwait City",
            population: 4270571,
            area: 17818.0
        )
        case .mexico: return .init(
            name: "Mexico",
            card: "CardMexico",
            blankCard: "CardMexicoBlank",
            capital: "Mexico City",
            population: 128932753,
            area: 1964375.0
        )
        case .panama: return .init(
            name: "Panama",
            card: "CardPanama",
            blankCard: "CardPanamaBlank",
            capital: "Panama City",
            population: 4314767,
            area: 75417.0
        )
        case .portugal: return .init(
            name: "Portugal",
            card: "CardPortugal",
            blankCard: "CardPortugalBlank",
            capital: "Lisbon",
            population: 10196709,
            area: 92090.0
        )
        case .guatemala: return .init(
            name: "Guatemala",
            card: "CardGuatemala",
            blankCard: "CardGuatemalaBlank",
            capital: "Guatemala City",
            population: 17915567,
            area: 108889.0
        )
        case .greece: return .init(
            name: "Greece",
            card: "CardGreece",
            blankCard: "CardGreeceBlank",
            capital: "Athens",
            population: 10423054,
            area: 131957.0
        )
        case .hungary: return .init(
            name: "Hungary",
            card: "CardHungary",
            blankCard: "CardHungaryBlank",
            capital: "Budapest",
            population: 9660351,
            area: 93028.0
        )
        case .ireland: return .init(
            name: "Ireland",
            card: "CardIreland",
            blankCard: "CardIrelandBlank",
            capital: "Dublin",
            population: 4937786,
            area: 70273.0
        )
        case .croatia: return .init(
            name: "Croatia",
            card: "CardCroatia",
            blankCard: "CardCroatiaBlank",
            capital: "Zagreb",
            population: 4105267,
            area: 56594.0
        )
        case .switzerland: return .init(
            name: "Switzerland",
            card: "CardSwitzerland",
            blankCard: "CardSwitzerlandBlank",
            capital: "Bern",
            population: 8654622,
            area: 41285.0
        )
        case .germany: return .init(
            name: "Germany",
            card: "CardGermany",
            blankCard: "CardGermanyBlank",
            capital: "Berlin",
            population: 83783942,
            area: 357022.0
        )
        case .cyprus: return .init(
            name: "Cyprus",
            card: "CardCyprus",
            blankCard: "CardCyprusBlank",
            capital: "Nicosia",
            population: 1207359,
            area: 9251.0
        )
        case .uganda: return .init(
            name: "Uganda",
            card: "CardUganda",
            blankCard: "CardUgandaBlank",
            capital: "Kampala",
            population: 45741007,
            area: 241038.0
        )
        case .turkey: return .init(
            name: "Turkey",
            card: "CardTurkey",
            blankCard: "CardTurkeyBlank",
            capital: "Ankara",
            population: 84339067,
            area: 783562.0
        )
        case .israel: return .init(
            name: "Israel",
            card: "CardIsrael",
            blankCard: "CardIsraelBlank",
            capital: "Jerusalem",
            population: 8655535,
            area: 22072.0
        )
        case .denmark: return .init(
            name: "Denmark",
            card: "CardDenmark",
            blankCard: "CardDenmarkBlank",
            capital: "Copenhagen",
            population: 5792202,
            area: 43094.0
        )
        case .egypt: return .init(
            name: "Egypt",
            card: "CardEgypt",
            blankCard: "CardEgyptBlank",
            capital: "Cairo",
            population: 102334404,
            area: 1002450.0
        )
        case .russia: return .init(
            name: "Russia",
            card: "CardRussia",
            blankCard: "CardRussiaBlank",
            capital: "Moscow",
            population: 145934462,
            area: 17098242.0
        )
        case .nigeria: return .init(
            name: "Nigeria",
            card: "CardNigeria",
            blankCard: "CardNigeriaBlank",
            capital: "Abuja",
            population: 206139589,
            area: 923768.0
        )
        case .japan: return .init(
            name: "Japan",
            card: "CardJapan",
            blankCard: "CardJapanBlank",
            capital: "Tokyo",
            population: 126476461,
            area: 377975.0
        )
        }
    }
}

let countriesList = [
    Countries.brazil.get,
    Countries.china.get,
    Countries.argentina.get,
    Countries.angola.get,
    Countries.uruguay.get,
    Countries.chile.get,
    Countries.colombia.get,
    Countries.ecuador.get,
    Countries.papuanewguinea.get,
    Countries.newzeland.get,
    Countries.kiribati.get,
    Countries.usa.get,
    Countries.ukraine.get,
    Countries.poland.get,
    Countries.palestine.get,
    Countries.france.get,
    Countries.southkorea.get,
    Countries.vietnam.get,
    Countries.lebanon.get,
    Countries.ethipia.get,
    Countries.liberia.get,
    Countries.kuwait.get,
    Countries.mexico.get,
    Countries.panama.get,
    Countries.portugal.get,
    Countries.guatemala.get,
    Countries.greece.get,
    Countries.hungary.get,
    Countries.ireland.get,
    Countries.croatia.get,
    Countries.switzerland.get,
    Countries.germany.get,
    Countries.cyprus.get,
    Countries.uganda.get,
    Countries.turkey.get,
    Countries.israel.get,
    Countries.denmark.get,
    Countries.egypt.get,
    Countries.russia.get,
    Countries.nigeria.get,
    Countries.japan.get
]
