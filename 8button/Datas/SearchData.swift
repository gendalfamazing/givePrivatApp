//
//  SearchData.swift
//  8button
//
//  Created by Artur Vladymcev on 19.12.23.
//

import SwiftUI
import Combine

struct UserData: Identifiable, Hashable {
    let id: String
    let title: String
    let content: String
    let age: Age
}


enum Age: String {
    case adult, child, other
}


final class UserDataManager {
    
    func getAllUserData() async throws -> [UserData] {
        [
            UserData(id: "2",title: "**Глава 2. Медицинская сортировка и неотложные состояния**", content: NSLocalizedString("Post118Alg2B1G0S1", comment: "123"), age: .child),
            UserData(id: "3",title: "**Глава 2. Медицинская сортировка и неотложные состояния**", content: NSLocalizedString("Post118Alg2B2G0S1", comment: ""), age: .child),
            UserData(id: "4",title: "**Глава 2. Медицинская сортировка и неотложные состояния**", content: NSLocalizedString("Post118Alg2B3G0S1", comment: ""), age: .child),
            UserData(id: "5",title: "**Глава 2. Медицинская сортировка и неотложные состояния**", content: NSLocalizedString("Post118Alg2B4G0S1", comment: ""), age: .child),
            UserData(id: "6",title: "", content: NSLocalizedString("SearchPost118Alg2-5", comment: ""), age: .child),
        ]
    }
    
    
}
