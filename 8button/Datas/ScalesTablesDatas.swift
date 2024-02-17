//
//  ScalesTablesDatas.swift
//  8button
//
//  Created by Artur Vladymcev on 4.02.24.
//

import Foundation
import SwiftUI
import SwiftData

struct TableGlazgo: Identifiable {
    let content1: String
    let content2: String
    let content3: String
    let id: Int
    
    
    
    static func getTableGlazgoAdultE() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "4", content2: "Спонтанное открывание; сохранено открывание с морганием на базовом уровне", content3: "Открывание глаз", id: 1),
            TableGlazgo(content1: "3", content2: "Открывание глаз в ответ на словесную инструкцию, речь или оклик", content3: "Открывание глаз", id: 2),
            TableGlazgo(content1: "2", content2: "Открывание глаз в ответ на боль, приложенную к конечностям или грудине", content3: "Открывание глаз", id: 3),
            TableGlazgo(content1: "1", content2: "Нет", content3: "Открывание глаз", id: 4),
        ]
    }
    static func getTableGlazgoAdultV() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "5", content2: "Ориентирован", content3: "Речевая реакция", id: 1),
            TableGlazgo(content1: "4", content2: "Речь спутанная, но готов отвечать на вопросы", content3: "Речевая реакция", id: 2),
            TableGlazgo(content1: "3", content2: "Неадекватная реакция; бессвязные слова", content3: "Речевая реакция", id: 3),
            TableGlazgo(content1: "2", content2: "Нечленораздельная речь", content3: "Речевая реакция", id: 4),
            TableGlazgo(content1: "1", content2: "Нет", content3: "Речевая реакция", id: 5),
            
        ]
    }
    static func getTableGlazgoAdultM() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "6", content2: "Подчиняется командам для движения", content3: "Двигательная реакция", id: 1),
            TableGlazgo(content1: "5", content2: "Защищает рукой область болевого раздражения", content3: "Двигательная реакция", id: 2),
            TableGlazgo(content1: "4", content2: "Отдергивает конечность в ответ на болевой стимул", content3: "Двигательная реакция", id: 3),
            TableGlazgo(content1: "3", content2: "Отвечает на боль сгибательной реакцией (декортикационная поза)", content3: "Двигательная реакция", id: 4),
            TableGlazgo(content1: "2", content2: "Отвечает на боль разгибательной реакцией (децеребрационная поза)", content3: "Двигательная реакция", id: 5),
            TableGlazgo(content1: "1", content2: "Нет", content3: "Двигательная реакция", id: 6),
        ]
    }
    
        // child less 1 year
    
    static func getTableGlazgoChildSmallE() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "4", content2: "Спонтанное", content3: "Открывание глаз", id: 1),
            TableGlazgo(content1: "3", content2: "В ответ на голосовой раздражитель", content3: "Открывание глаз", id: 2),
            TableGlazgo(content1: "2", content2: "В ответ только на болевой раздражитель", content3: "Открывание глаз", id: 3),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Открывание глаз", id: 4),
        ]
    }
    static func getTableGlazgoChildSmallV() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "5", content2: "Гулит и лепечет", content3: "Речевая реакция", id: 1),
            TableGlazgo(content1: "4", content2: "Раздражительный плач", content3: "Речевая реакция", id: 2),
            TableGlazgo(content1: "3", content2: "Плач в ответ на болевой раздражитель", content3: "Речевая реакция", id: 3),
            TableGlazgo(content1: "2", content2: "Стоны в ответ на болевой раздражитель", content3: "Речевая реакция", id: 4),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Речевая реакция", id: 5),
            
        ]
    }
    static func getTableGlazgoChildSmallM() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "6", content2: "Движения спонтанные и целенаправленные", content3: "Двигательная реакция", id: 1),
            TableGlazgo(content1: "5", content2: "Отдергивание в ответ на прикосновение", content3: "Двигательная реакция", id: 2),
            TableGlazgo(content1: "4", content2: "Отдергивание в ответ на болевой раздражитель", content3: "Двигательная реакция", id: 3),
            TableGlazgo(content1: "3", content2: "Децеребрационная поза в ответ на болевой раздражитель (патологическое сгибание)", content3: "Двигательная реакция", id: 4),
            TableGlazgo(content1: "2", content2: "Децеребрационная поза в ответ на болевой раздражитель (патологическое разгибание)", content3: "Двигательная реакция", id: 5),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Двигательная реакция", id: 6),
        ]
    }
    
    // child more 1 year
    
    static func getTableGlazgoChildE() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "4", content2: "Спонтанное", content3: "Открывание глаз", id: 1),
            TableGlazgo(content1: "3", content2: "В ответ на голосовой раздражитель", content3: "Открывание глаз", id: 2),
            TableGlazgo(content1: "2", content2: "В ответ только на болевой раздражитель", content3: "Открывание глаз", id: 3),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Открывание глаз", id: 4),
        ]
    }
    static func getTableGlazgoChildV() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "5", content2: "Ориентирован, отвечает на вопросы", content3: "Речевая реакция", id: 1),
            TableGlazgo(content1: "4", content2: "Бредовое состояние", content3: "Речевая реакция", id: 2),
            TableGlazgo(content1: "3", content2: "Несвязанный набор слов", content3: "Речевая реакция", id: 3),
            TableGlazgo(content1: "2", content2: "Неразборчивые слова или нечленораздельные звуки", content3: "Речевая реакция", id: 4),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Речевая реакция", id: 5),
            
        ]
    }
    static func getTableGlazgoChildM() -> [TableGlazgo] {
        [
            TableGlazgo(content1: "6", content2: "Выполняет команды", content3: "Двигательная реакция", id: 1),
            TableGlazgo(content1: "5", content2: "Локализация болевого раздражителя", content3: "Двигательная реакция", id: 2),
            TableGlazgo(content1: "4", content2: "Отдергивание в ответ на болевой раздражитель", content3: "Двигательная реакция", id: 3),
            TableGlazgo(content1: "3", content2: "Децеребрационная поза в ответ на болевой раздражитель (патологическое сгибание)", content3: "Двигательная реакция", id: 4),
            TableGlazgo(content1: "2", content2: "Децеребрационная поза в ответ на болевой раздражитель (патологическое разгибание)", content3: "Двигательная реакция", id: 5),
            TableGlazgo(content1: "1", content2: "Реакция отсутствует", content3: "Двигательная реакция", id: 6),
        ]
    }
}
