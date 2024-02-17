//
//  Post99Datas.swift
//  8button
//
//  Created by Artur Vladymcev on 27.01.24.
//

import Foundation
import SwiftUI
import SwiftData


struct TableRASS: Identifiable {
    let content1: String
    let content2: String
    let content3: String
    let id: Int
    
    
    
    static func getTableRASS() -> [TableRASS] {
        [
            TableRASS(content1: "+4", content2: "Агрессия", content3: "Пациент агрессивен, возникают проявления выраженного психомоторного возбуждения, представляет непосредственную опасность для медицинских работников, нанесение физического ущерба медицинским работникам", id: 1),
            TableRASS(content1: "+3", content2: "Выраженная ажитация", content3: "Пациент агрессивен, удаляет катетеры, зонды, дренажи, трубки", id: 2),
            TableRASS(content1: "+2", content2: "Ажитация", content3: "Частая нецеленаправленная двигательная активность, «борьба» с дыхательным аппаратом при проведении ИВЛ", id: 3),
            TableRASS(content1: "+1", content2: "Беспокойство", content3: "Взволнован, но движения не энергичные и неагрессивные", id: 4),
            TableRASS(content1: "0", content2: "", content3: "Бодрствует, спокоен и внимателен", id: 5),
            TableRASS(content1: "-1", content2: "Сонливость", content3: "Потеря внимательности, но при вербальном контакте не закрывает глаза в течение более 10 с", id: 6),
            TableRASS(content1: "-2", content2: "Легкая седация", content3: "При вербальном контакте закрывает глаза менее чем через 10 с", id: 7),
            TableRASS(content1: "-3", content2: "Умеренная седация", content3: "Любое движение, но без зрительного контакта в ответ на голос", id: 8),
            TableRASS(content1: "-4", content2: "Глубокая седация", content3: "Никакой реакции на голос, но есть какие-либо движения или открывание глаз на физическую стимуляцию", id: 9),
            TableRASS(content1: "-5", content2: "Отсутствие пробуждения", content3: "Никакой реакции ни на голос, ни на физическую стимуляцию", id: 10),
            
            
        ]
    }
    static func getTableAlko() -> [TableRASS] {
        [
            TableRASS(content1: "Диазепам", content2: "2,5–10 мг каждые 5–10 мин", content3: "2,5–10 мг при необходимости каждый час, либо инфузия. Максимальная суточная доза у пациентов без ИВЛ – 1–1,5 мг/кг/сутки; при проведении ИВЛ доза может быть увеличена до 2–3 мг/кг/сутки", id: 1),
            TableRASS(content1: "Мидазолам", content2: "1–5 мг", content3: "0,03–0,3 мг/кг/ч через шприцевой дозатор. Максимальная суточная доза у пациентов без ИВЛ – 1–1,5 мг/кг/сутки; при проведении ИВЛ доза может быть увеличена до 2–3 мг/кг/сутки", id: 2),
            TableRASS(content1: "Фенобарбитал", content2: "1–3 мг/кг/сутки внутрь (кратность 1–3 раза в сутки), при тяжелом течении – 6–15 мг/кг/сутки *", content3: "Не назначают, если пациент уже получал бензодиазепины", id: 3),
            TableRASS(content1: "Галоперидол", content2: "5–10 мг каждые 10–15 мин.", content3: "2,5–5 мг x 2–4 раза в сутки внутривенно или внутрь. Дозы > 40 мг используют редко. Максимальная суточная доза – 60 мг", id: 4),
            TableRASS(content1: "Клонидин *", content2: "100–300 мкг", content3: "0,8–4 мкг/кг/ч через шприцевой дозатор (6 мл 0,01 % раствора в разведении до 20 мл или 15 мл 0,01 % раствора/до 50 мл; 2–10 мл/ч). При необходимости возможно увеличение дозы до 200 мкг/ч с последующей коррекцией", id: 5),
            TableRASS(content1: "Дексмедетомидин *", content2: "Разводят 2 мл 0,01 % раствора до 50 мл (4 мкг/мл), вводят со скоростью 17 мл/ч (0,7 мкг/кг) в течение 10 мин. (до достижения эффекта)", content3: "Поддерживающая инфузия 3,5–12,5 мл/ч (0,2–0,7 мкг/кг/ч)", id: 6),
            
        ]
    }
}
