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

struct TableODN: Identifiable {
    let name: String
    let code: String
    let id: Int
    
    static func getTableODN0() -> [TableODN] {
        [
            TableODN(name: """
                           Уровень сознания
                           """,
                     code: """
                           Ясное
                           """, id: 1),
            TableODN(name: """
                           ЧДД
                           """,
                     code: """
                           12-16
                           """, id: 2),
            TableODN(name: """
                           Кожные покровы
                           """,
                     code: """
                           Обычной окраски
                           """, id: 3),
            TableODN(name: """
                           ЧСС
                           """,
                     code: """
                           60-90
                           """, id: 4),
            TableODN(name: """
                           АД
                           """,
                     code: """
                           Норма
                           """, id: 5),
            TableODN(name: """
                           SpO2 на фоне оксигенотерапии
                           """,
                     code: """
                           96-99
                           """, id: 6),
            
        ]
    }
    static func getTableODN1() -> [TableODN] {
        [
            TableODN(name: """
                           Уровень сознания
                           """,
                     code: """
                           Ясное
                           """, id: 1),
            TableODN(name: """
                           ЧДД
                           """,
                     code: """
                           14-20
                           """, id: 2),
            TableODN(name: """
                           Кожные покровы
                           """,
                     code: """
                           Бледность, умеренный цианоз
                           """, id: 3),
            TableODN(name: """
                           ЧСС
                           """,
                     code: """
                           100-110
                           """, id: 4),
            TableODN(name: """
                           АД
                           """,
                     code: """
                           Норма, умеренная гипертензия
                           """, id: 5),
            TableODN(name: """
                           SpO2 на фоне оксигенотерапии
                           """,
                     code: """
                           92-95
                           """, id: 6),
            
        ]
    }
    static func getTableODN2() -> [TableODN] {
        [
            TableODN(name: """
                           Уровень сознания
                           """,
                     code: """
                           Может быть возбуждение, агрессивность
                           """, id: 1),
            TableODN(name: """
                           ЧДД
                           """,
                     code: """
                           20-30
                           """, id: 2),
            TableODN(name: """
                           Кожные покровы
                           """,
                     code: """
                           Цианоз
                           """, id: 3),
            TableODN(name: """
                           ЧСС
                           """,
                     code: """
                           100-120
                           """, id: 4),
            TableODN(name: """
                           АД
                           """,
                     code: """
                           Умеренная гипертензия
                           """, id: 5),
            TableODN(name: """
                           SpO2 на фоне оксигенотерапии
                           """,
                     code: """
                           90-92
                           """, id: 6),
            
        ]
    }
    static func getTableODN3() -> [TableODN] {
        [
            TableODN(name: """
                           Уровень сознания
                           """,
                     code: """
                           Спутанность, оглушение
                           """, id: 1),
            TableODN(name: """
                           ЧДД
                           """,
                     code: """
                           30-40
                           """, id: 2),
            TableODN(name: """
                           Кожные покровы
                           """,
                     code: """
                           Выраженный цианоз
                           """, id: 3),
            TableODN(name: """
                           ЧСС
                           """,
                     code: """
                           120-140
                           """, id: 4),
            TableODN(name: """
                           АД
                           """,
                     code: """
                           Гипертензия
                           """, id: 5),
            TableODN(name: """
                           SpO2 на фоне оксигенотерапии
                           """,
                     code: """
                           85-90
                           """, id: 6),
            
        ]
    }
    static func getTableODN4() -> [TableODN] {
        [
            TableODN(name: """
                           Уровень сознания
                           """,
                     code: """
                           Гипоксическая кома, судороги, мидриаз
                           """, id: 1),
            TableODN(name: """
                           ЧДД
                           """,
                     code: """
                           <8 или >40
                           """, id: 2),
            TableODN(name: """
                           Кожные покровы
                           """,
                     code: """
                           "Мраморный" цианоз
                           """, id: 3),
            TableODN(name: """
                           ЧСС
                           """,
                     code: """
                           >140 или <60, возможны аритмии
                           """, id: 4),
            TableODN(name: """
                           АД
                           """,
                     code: """
                           Гипотензия
                           """, id: 5),
            TableODN(name: """
                           SpO2 на фоне оксигенотерапии
                           """,
                     code: """
                           <85
                           """, id: 6),
            
        ]
    }
    
    
}

struct TableWells: Identifiable {
    let name: String
    let code: String
    let id: Int
    
    static func getTableWells() -> [TableWells] {
        [
            TableWells(name: """
                           Клинические симптомы тромбоза глубоких вен н/конечностей
                           """,
                       code: """
                           3 балла
                           """, id: 1),
            TableWells(name: """
                           При проведении диф. диагноза ТЭЛА более вероятна, чем другие патологии
                           """,
                       code: """
                           3 балла
                           """, id: 2),
            TableWells(name: """
                           Тахикардия свыше 100 уд/мин
                           """,
                       code: """
                           1,5 балла
                           """, id: 3),
            TableWells(name: """
                           Иммобилизация или хирургическое вмешательство посл. 3 дня
                           """,
                       code: """
                           1,5 балла
                           """, id: 4),
            TableWells(name: """
                           Тромбоз глубоких вен н/конечностей или ТЭЛА в анамнезе
                           """,
                       code: """
                           1,5 балла
                           """, id: 5),
            TableWells(name: """
                           Кровохарканье
                           """,
                       code: """
                           1 балл
                           """, id: 6),
            TableWells(name: """
                           Онкологическая патология в настоящее время или давностью 6 мес.
                           """,
                       code: """
                           1 балл
                           """, id: 7),
            
        ]
    }
    
}

struct TableHSN: Identifiable {
    let name: String
    let code: String
    let id: Int
    
    static func getTableHSN() -> [TableHSN] {
        [
            TableHSN(name: """
                           Одышка
                           """,
                       code: """
                           0 — нет
                           1 — при нагрузке
                           2 — в покое
                           """, id: 1),
            TableHSN(name: """
                           Изменился ли за последнюю неделю вес
                           """,
                       code: """
                           0 — нет
                           1 — увеличился
                           """, id: 2),
            TableHSN(name: """
                           Жалобы на перебои в работе сердца
                           """,
                       code: """
                           0 — нет
                           1 — есть
                           """, id: 3),
            TableHSN(name: """
                           Положение в постели
                           """,
                       code: """
                           0 — горизонтальное
                           1 — с приподнятым головным концом (+2 подушки)
                           2 — с приподнятым головным концом (+2 подушки), просыпается от удушья
                           3 — сидя
                           """, id: 4),
            TableHSN(name: """
                           Набухшие шейные вены
                           """,
                       code: """
                           0 — нет
                           1 — лежа
                           2 — стоя
                           """, id: 5),
            TableHSN(name: """
                           Хрипы в легких
                           """,
                       code: """
                           0 — нет
                           1 — нижние отделы до 1/3
                           2 — до лопаток 2/3
                           3 — над всей поверхностью
                           """, id: 6),
            TableHSN(name: """
                           Наличие ритма галопа
                           """,
                       code: """
                           0 — нет
                           1 — есть
                           """, id: 7),
            TableHSN(name: """
                           Печень
                           """,
                       code: """
                           0 — не увеличена
                           1 — увеличена до 5 см
                           2 — увеличена более 5 см
                           """, id: 8),
            TableHSN(name: """
                           Отеки
                           """,
                       code: """
                           0 — нет
                           1 — пастозность
                           2 — отеки
                           3 — анасарка
                           """, id: 9),
            TableHSN(name: """
                           Уровень САД
                           """,
                       code: """
                           0 — >120
                           1 — 100-120
                           2 — <100
                           """, id: 10),
            
            
        ]
    }
    
}

struct TableSuicide: Identifiable {
    let name: String
    let code: String
    let id: Int
    
    static func getTableSuicide() -> [TableSuicide] {
        [
            TableSuicide(name: """
                           Пол
                           """,
                       code: """
                           1 — мужской;
                           0 — женский
                           """, id: 1),
            TableSuicide(name: """
                           Возраст
                           """,
                       code: """
                           1 — <19 лет или >45 лет
                           """, id: 2),
            TableSuicide(name: """
                           Депрессия
                           """,
                       code: """
                           1 — если есть
                           """, id: 3),
            TableSuicide(name: """
                           Парасуициды в анамнезе
                           """,
                       code: """
                           1 — если есть
                           """, id: 4),
            TableSuicide(name: """
                           Злоупотребление алкоголем
                           """,
                       code: """
                           1 — если есть
                           """, id: 5),
            TableSuicide(name: """
                           Нарушение рационального мышления (бред, галлюцинации, фиксация на потере, депрессивное сужение восприятия)
                           """,
                       code: """
                           1 — шизофрения, расстройство настроения, когнитивные нарушения
                           """, id: 6),
            TableSuicide(name: """
                           Недостаток социальной поддержки (проживание в одиночестве, тяжелые нарушенные отношения, не принимающее социальное окружение)
                           """,
                       code: """
                           1 — если присутствует, особенно при недавней потере «значимого другого»
                           """, id: 7),
            TableSuicide(name: """
                           Организованный план суицида
                           """,
                       code: """
                           1 — если есть, а избранный метод потенциально летален
                           """, id: 8),
            TableSuicide(name: """
                           Отсутствие супруги (супруга)
                           """,
                       code: """
                           1 — разведен, вдовец, живущий отдельно, проживает в одиночестве
                           """, id: 9),
            TableSuicide(name: """
                           Болезнь
                           """,
                       code: """
                           1 — если есть, особенно хроническая, инвалидизирующая, тяжелая
                           """, id: 10),
            
        ]
    }
    
}
