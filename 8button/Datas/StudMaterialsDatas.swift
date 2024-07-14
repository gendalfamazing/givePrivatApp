//
//  PamyatkiDatas.swift
//  8button
//
//  Created by Artur Vladymcev on 13.03.24.
//

import SwiftUI

import Foundation
import SwiftUI
import SwiftData

struct TablePamyatki: Identifiable {
    let content1: String
    let content2: String
    let content3: String
    let content4: String
    let content5: String
    let content6: String
    let content7: String
    let content8: String
    let content9: String
    let content10: String
    let content11: String
    let content12: String
    let content13: String
    let content14: String
    let content15: String
    let content16: String
    let content17: String
    let content18: String
    let content19: String
    let content20: String
    let content21: String
    let content22: String
    let content23: String
    let content24: String
    let content25: String
    let content26: String
    let content27: String
    let content28: String
    let id: Int
    
    //памятка - характер боли в грудной клетке
    
    //¹²³
    static func getTablePamyatkaSSS() -> [TablePamyatki] {
        [
            TablePamyatki(content1: """
                                Ишемия миокарда (острый коронарный синдром (15-25% болей в груди по скорой помощи), стенокардия)¹
                                """,
                          content2: """
                                - Острая давящая боль, иррадиирующая → шея, челюсть, рука;
                                - Боль при физической нагрузке, проходящая в покое (стенокардия напряжения)
                                - Одышка, гипергидроз (обильная выработка пота)
                                - S4 ритм галопа (IV тон сердца)
                                - Иногда — систолический шум митральной регургитации
                                - Возможен анамнез перенесенного инфаркта миокарда
                                - Часто выявляются симптомы, требующие особого внимания **
                                """,
                          content3: """
                                Перикардит и миоперикардит²
                                """,
                          content4: """
                                - Постоянная или периодическая острая боль, часто усиливается при дыхании, глотании пищи, в положении лежа на спине и уменьшается в сидячем положении или при наклоне вперед.
                                - Шум трения перикарда
                                - Набухание шейных вен
                                """,
                          content5: """
                                Миокардит²
                                """,
                          content6: """
                                - Лихорадка, одышка, утомляемость, боль в груди (при наличии миоперикардита), недавно перенесенная вирусная или другая инфекция.
                                - Иногда — признаки сердечной недостаточности, перикардита или и того, и другого
                                """,
                          content7: """
                                Диссекция аорты¹
                                """,
                          content8: """
                                - Внезапная очень сильная «терзающая» боль с иррадиацией в спину.
                                - Иногда — обмороки, инсульт или признаки ишемии нижних конечностей.
                                - Возможно наличие асимметрии пульса или артериального давления на конечностях (> 20 мм рт.ст.).
                                - Возраст старше 55 лет.
                                - Артериальная гипертензия в анамнезе.
                                - Симптомы, которые требуют особого внимания **
                                """,
                          content9: """
                                * Клиническая значимость причин боли различается следующим образом:
                                ¹ Жизненно опасны.
                                ² Потенциально опасные для жизни.
                                ³ Вызывают дискомфорт, но обычно безопасны.
                                
                                ** Особое внимание следует обратить при нарушении жизненно важных функций (появление тахикардии, брадикардии, тахипноэ, гипотензии), признаков гипоперфузии органов (например, нарушение сознания, серый оттенок кожи, потливость), одышки, асимметрии дыхательных шумов или пульса, появлении новых шумов в сердце или парадоксального пульса > 10 мм рт. ст.
                                """,
                          content10: """
                                
                                """,
                          content11: """
                                
                                """,
                          content12: """
                                
                                """,
                          content13: """
                                
                                """,
                          content14: """
                                
                                """,
                          content15:"",
                          content16:"",
                          content17:"",
                          content18:"",
                          content19:"",
                          content20:"",
                          content21:"",
                          content22:"",
                          content23:"",
                          content24:"",
                          content25:"",
                          content26:"",
                          content27:"",
                          content28:"",
                          id: 1)
        ]
    }
    static func getTablePamyatkaLungs() -> [TablePamyatki] {
        [
            TablePamyatki(content1: """
                                Пневмония²
                                """,
                          content2: """
                                - Лихорадка, озноб, кашель и гнойная мокрота
                                - Часто — одышка, тахикардия, признаки уплотнения легочной ткани
                                """,
                          content3: """
                                Пневмоторакс²
                                """,
                          content4: """
                                Иногда — одностороннее ослабление дыхательных шумов, воздух в подкожной клетчатке
                                """,
                          content5: """
                                Плеврит³
                                """,
                          content6: """
                                - Может возникать после пневмонии, эмболии легочной артерии или вирусной респираторной инфекции
                                - Боль при дыхании, кашле
                                - В некоторых случаях — шум трения плевры
                                """,
                          content7: """
                                Напряженный пневмоторакс¹
                                """,
                          content8: """
                                - Выраженная одышка, гипотензия, напряжение шейных вен, одностороннее ослабление дыхательных шумов и усиления перкуторного тона
                                - Иногда — признаки наличия воздуха под кожей
                                """,
                          content9: """
                                Эмболия легочной артерии¹
                                """,
                          content10: """
                                - Внезапное начало плевритической боли.
                                - Часто — одышка, тахикардия
                                - Иногда — незначительная лихорадка, кровохарканье, шок
                                - Наибольшая вероятность — при наличии факторов риска
                                """,
                          content11: """
                                * Клиническая значимость причин боли различается следующим образом:
                                ¹ Жизненно опасны.
                                ² Потенциально опасные для жизни.
                                ³ Вызывают дискомфорт, но обычно безопасны.
                                
                                ** Особое внимание следует обратить при нарушении жизненно важных функций (появление тахикардии, брадикардии, тахипноэ, гипотензии), признаков гипоперфузии органов (например, нарушение сознания, серый оттенок кожи, потливость), одышки, асимметрии дыхательных шумов или пульса, появлении новых шумов в сердце или парадоксального пульса > 10 мм рт. ст.
                                """,
                          content12: """
                                
                                """,
                          content13: """
                                
                                """,
                          content14: """
                                
                                """,
                          content15:"",
                          content16:"",
                          content17:"",
                          content18:"",
                          content19:"",
                          content20:"",
                          content21:"",
                          content22:"",
                          content23:"",
                          content24:"",
                          content25:"",
                          content26:"",
                          content27:"",
                          content28:"",
                          id: 1)
        ]
    }
    
    static func getTablePamyatkaGastro() -> [TablePamyatki] {
        [
            TablePamyatki(content1: """
                                Разрыв пищевода¹
                                """,
                          content2: """
                                - Внезапная сильная боль после рвоты или проведения инструментальных вмешательств (например, эзофагогастроскопии или чреспищеводной эхокардиографии), усиливается при глотании.
                                - Воздух в средостении пальпируется и визуализируется на КТ.
                                - Подкожная крепитация при аускультации.
                                - Множественные признаки, требующие особого внимания **
                                """,
                          content3: """
                                Панкреатит²
                                """,
                          content4: """
                                - Боль в эпигастрии или нижней части грудной клетки, обычно усиливается в положении лежа и уменьшается при наклоне вперед, рвота
                                - Напряжение мышц верхнего отдела живота, шок
                                - Часто — анамнестические указания на злоупотребление алкоголем или заболевания желчевыводящих путей
                                """,
                          content5: """
                                Язвенная болезнь желудка³
                                """,
                          content6: """
                                - Рецидивирующая боль с неопределенной локализацией в эпигастрии, особенно в случае пациента, который курит или употребляет алкоголь в избыточном количестве, боль уменьшается на фоне приема пищи, антацидов или и того, и другого.
                                - Нет признаков, требующих повышенного внимания **
                                """,
                          content7: """
                                Рефлюкс-эзофагит³
                                """,
                          content8: """
                                - Рецидивирующая жгучая боль от эпигастрии к шее, усиливающаяся при наклонах вперед, в положении лежа и уменьшающаяся при приеме антацидов
                                """,
                          content9: """
                                Заболевания желчевыводящих путей³
                                """,
                          content10: """
                                - Рецидивирующий дискомфорт в верхнем правом квадранте живота или в эпигастрии после приема пищи (но не после физической нагрузки)
                                """,
                          content11: """
                                Нарушение моторики пищевода³
                                """,
                          content12: """
                                - Длительная боль с внезапным началом, которая иногда может сопровождать акт глотания
                                - Обычно также глотание затруднено
                                """,
                          content13: """
                                * Клиническая значимость причин боли различается следующим образом:
                                ¹ Жизненно опасны.
                                ² Потенциально опасные для жизни.
                                ³ Вызывают дискомфорт, но обычно безопасны.
                                
                                ** Особое внимание следует обратить при нарушении жизненно важных функций (появление тахикардии, брадикардии, тахипноэ, гипотензии), признаков гипоперфузии органов (например, нарушение сознания, серый оттенок кожи, потливость), одышки, асимметрии дыхательных шумов или пульса, появлении новых шумов в сердце или парадоксального пульса > 10 мм рт. ст.
                                """,
                          content14: """
                                
                                """,
                          content15:"",
                          content16:"",
                          content17:"",
                          content18:"",
                          content19:"",
                          content20:"",
                          content21:"",
                          content22:"",
                          content23:"",
                          content24:"",
                          content25:"",
                          content26:"",
                          content27:"",
                          content28:"",
                          id: 1)
        ]
    }
    
    static func getTablePamyatkaOther() -> [TablePamyatki] {
        [
            TablePamyatki(content1: """
                                Патология опорно-двигательного аппарата как причина боли грудной стенки (например, вследствие травмы, перенапряжения или реберного хондрита)³
                                """,
                          content2: """
                                - Диагноз часто предполагается на основании данных анамнеза
                                - Боль обычно длительная (несколько дней или дольше), усиливающаяся при активных или пассивных движениях
                                - Диффузное или локальное напряжение мышц
                                """,
                          content3: """
                                Фибромиалгия³
                                """,
                          content4: """
                                - Практически постоянная боль во многих областях тела, включая грудную клетку
                                - Типичными симптомами являются усталость и плохой сон
                                - Множественные триггерные точки
                                """,
                          content5: """
                                Опухоли грудной клетки²
                                """,
                          content6: """
                                - Симптомы варьируют, но иногда боль плевритическая
                                - Иногда — хронический кашель, курение в анамнезе, признаки хронического заболевания (потеря веса, лихорадка), шейная лимфаденопатия
                                """,
                          content7: """
                                Инфекция Herpes zoster³
                                """,
                          content8: """
                                - Острая опоясывающая боль в средней части грудной клетки с одной стороны
                                - Классическая везикулярная сыпь
                                - Боль может предшествовать появлению сыпи за несколько дней
                                """,
                          content9: """
                                Идиопатический болевой синдром³
                                """,
                          content10: """
                                - Различные признаки
                                - Нет признаков, требующих повышенного внимания **
                                - Диагноз исключения
                                """,
                          content11: """
                                * Клиническая значимость причин боли различается следующим образом:
                                ¹ Жизненно опасны.
                                ² Потенциально опасные для жизни.
                                ³ Вызывают дискомфорт, но обычно безопасны.
                                
                                ** Особое внимание следует обратить при нарушении жизненно важных функций (появление тахикардии, брадикардии, тахипноэ, гипотензии), признаков гипоперфузии органов (например, нарушение сознания, серый оттенок кожи, потливость), одышки, асимметрии дыхательных шумов или пульса, появлении новых шумов в сердце или парадоксального пульса > 10 мм рт. ст.
                                """,
                          content12: """
                                
                                """,
                          content13: """
                                
                                """,
                          content14: """
                                
                                """,
                          content15:"",
                          content16:"",
                          content17:"",
                          content18:"",
                          content19:"",
                          content20:"",
                          content21:"",
                          content22:"",
                          content23:"",
                          content24:"",
                          content25:"",
                          content26:"",
                          content27:"",
                          content28:"",
                          id: 1)
        ]
    }
    //Показатели детские в норме
    static func getTableParametersChild() -> [TablePamyatki] {
        [ 
            TablePamyatki(content1:"""
                                 Новор.
                                 """,
                        content2:"""
                                 3,5
                                 """,
                        content3:"""
                                 40-60
                                 """,
                        content4:"""
                                 130-140
                                 """,
                        content5:"""
                                  70/40
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 1),
            TablePamyatki(content1:"""
                                 3 мес.
                                 """,
                        content2:"""
                                 5
                                 """,
                        content3:"""
                                 35-40
                                 """,
                        content4:"""
                                 120-130
                                 """,
                        content5:"""
                                  85/40
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 2),
            TablePamyatki(content1:"""
                                 6 мес.
                                 """,
                        content2:"""
                                 7
                                 """,
                        content3:"""
                                 33-35
                                 """,
                        content4:"""
                                 120-125
                                 """,
                        content5:"""
                                  90/55
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 3),
            TablePamyatki(content1:"""
                                 1 год
                                 """,
                        content2:"""
                                 10
                                 """,
                        content3:"""
                                 30-32
                                 """,
                        content4:"""
                                 120
                                 """,
                        content5:"""
                                  92/56
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 4),
            TablePamyatki(content1:"""
                                 2 года
                                 """,
                        content2:"""
                                 12
                                 """,
                        content3:"""
                                 26-30
                                 """,
                        content4:"""
                                 110-115
                                 """,
                        content5:"""
                                  94/56
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 5),
            TablePamyatki(content1:"""
                                 4 года
                                 """,
                        content2:"""
                                 16
                                 """,
                        content3:"""
                                 25-26
                                 """,
                        content4:"""
                                 100-105
                                 """,
                        content5:"""
                                  98/56
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 6),
            TablePamyatki(content1:"""
                                 5 лет
                                 """,
                        content2:"""
                                 19
                                 """,
                        content3:"""
                                 25-26
                                 """,
                        content4:"""
                                 100
                                 """,
                        content5:"""
                                  100/58
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 7),
            TablePamyatki(content1:"""
                                 6 лет
                                 """,
                        content2:"""
                                 20
                                 """,
                        content3:"""
                                 25
                                 """,
                        content4:"""
                                 90-95
                                 """,
                        content5:"""
                                  100/60
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 8),
            TablePamyatki(content1:"""
                                 8 лет
                                 """,
                        content2:"""
                                 25
                                 """,
                        content3:"""
                                 22-24
                                 """,
                        content4:"""
                                 80-85
                                 """,
                        content5:"""
                                  100/65
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 9),
            TablePamyatki(content1:"""
                                 10 лет
                                 """,
                        content2:"""
                                 30
                                 """,
                        content3:"""
                                 20-22
                                 """,
                        content4:"""
                                 78-80
                                 """,
                        content5:"""
                                  105/70
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 10),
            TablePamyatki(content1:"""
                                 12 лет
                                 """,
                        content2:"""
                                 33-35
                                 """,
                        content3:"""
                                 18-20
                                 """,
                        content4:"""
                                 75-82
                                 """,
                        content5:"""
                                  110/70
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 11),
            TablePamyatki(content1:"""
                                 14 лет
                                 """,
                        content2:"""
                                 до 45
                                 """,
                        content3:"""
                                 16-18
                                 """,
                        content4:"""
                                 72-78
                                 """,
                        content5:"""
                                  120/70
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 12),
            
        ]
    }
    
    // объемы промывания желудка у детей
    static func getTableZondPromivanieChild() -> [TablePamyatki] {
        [
            TablePamyatki(content1:"""
                                 Новор.
                                 """,
                        content2:"""
                                 10-12 мл/кг
                                 """,
                        content3:"""
                                 50-100
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                 """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 1),
            TablePamyatki(content1:"""
                                 1 неделя
                                 """,
                          content2:"""
                                   10-12 мл/кг
                                   """,
                          content3:"""
                                   50-100
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 2),
            TablePamyatki(content1:"""
                                 2 неделя
                                 """,
                          content2:"""
                                   10-12 мл/кг
                                   """,
                          content3:"""
                                   50-100
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 3),
            TablePamyatki(content1:"""
                                 3 неделя
                                 """,
                          content2:"""
                                   10-12 мл/кг
                                   """,
                          content3:"""
                                   100-150
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 4),
            TablePamyatki(content1:"""
                                 4 неделя
                                 """,
                          content2:"""
                                   10-12 мл/кг
                                   """,
                          content3:"""
                                   150-200
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 5),
            TablePamyatki(content1:"""
                                 1-2 мес.
                                 """,
                          content2:"""
                                   60-90
                                   """,
                          content3:"""
                                   200-250
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 6),
            TablePamyatki(content1:"""
                                 3-4 мес.
                                 """,
                          content2:"""
                                   90-100
                                   """,
                          content3:"""
                                   300-400
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 7),
            TablePamyatki(content1:"""
                                 5-6 мес.
                                 """,
                          content2:"""
                                   100-110
                                   """,
                          content3:"""
                                   400-500
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 8),
            TablePamyatki(content1:"""
                                 7-8 мес.
                                 """,
                          content2:"""
                                   110-120
                                   """,
                          content3:"""
                                   600-700
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 9),
            TablePamyatki(content1:"""
                                 9-12 мес.
                                 """,
                          content2:"""
                                   120-150
                                   """,
                          content3:"""
                                   800-900
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 10),
            TablePamyatki(content1:"""
                                 2-3 года
                                 """,
                          content2:"""
                                   200-250
                                   """,
                          content3:"""
                                   1000-1500
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 11),
            TablePamyatki(content1:"""
                                 4-5 лет
                                 """,
                          content2:"""
                                   300-350
                                   """,
                          content3:"""
                                   1500-2000
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 12),
            TablePamyatki(content1:"""
                                 6-7 лет
                                 """,
                          content2:"""
                                   350-400
                                   """,
                          content3:"""
                                   2500-3000
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 13),
            TablePamyatki(content1:"""
                                 8-11 лет
                                 """,
                          content2:"""
                                   400-450
                                   """,
                          content3:"""
                                   3500-4000
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 14),
            TablePamyatki(content1:"""
                                 12-14 лет
                                 """,
                          content2:"""
                                   450-500
                                   """,
                          content3:"""
                                   4000-4500
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 14),
            
        ]
    }
    
    
        //Шоковый индекс
    
    static func getTableShockIndex() -> [TablePamyatki] {
        [
            TablePamyatki(content1:"""
                                 0,6-0,9
                                 """,
                        content2:"""
                                 До 20%
                                 """,
                        content3:"""
                                 0,5-1,0 л
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                 """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 1),
            TablePamyatki(content1:"""
                                 1,0-1,4
                                 """,
                          content2:"""
                                   20-40%
                                   """,
                          content3:"""
                                   1,1-1,5 л
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 2),
            TablePamyatki(content1:"""
                                 Более 1,5
                                 """,
                          content2:"""
                                   40-70%
                                   """,
                          content3:"""
                                   Более 1,5 л
                                   """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 3),
            
        ]
    }
    
        // **Использование шкалы CHA2DS2-VASc**
    static func getTableScaleCHA2DS2() -> [TablePamyatki] {
        [
            TablePamyatki(content1:"""
                                 0
                                 """,
                        content2:"""
                                 0,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                 """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 1),
            TablePamyatki(content1:"""
                                 1
                                 """,
                        content2:"""
                                 0,6%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 2),
            TablePamyatki(content1:"""
                                 2
                                 """,
                        content2:"""
                                 2,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 3),
            TablePamyatki(content1:"""
                                 3
                                 """,
                        content2:"""
                                 3,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 4),
            TablePamyatki(content1:"""
                                 4
                                 """,
                        content2:"""
                                 4,8%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 5),
            TablePamyatki(content1:"""
                                 5
                                 """,
                        content2:"""
                                 7,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 6),
            TablePamyatki(content1:"""
                                 6
                                 """,
                        content2:"""
                                 9,7%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 7),
            TablePamyatki(content1:"""
                                 7
                                 """,
                        content2:"""
                                 11,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 8),
            TablePamyatki(content1:"""
                                 8
                                 """,
                        content2:"""
                                 10,8%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 9),
            TablePamyatki(content1:"""
                                 9
                                 """,
                        content2:"""
                                 12,2%
                                 """,
                        content3:"""
                                 """,
                        content4:"""
                                 """,
                        content5:"""
                                  """,
                        content6:"",
                        content7:"",
                        content8:"",
                        content9:"",
                        content10:"",
                        content11:"",
                        content12:"",
                        content13:"",
                        content14:"",
                        content15:"",
                        content16:"",
                        content17:"",
                        content18:"",
                        content19:"",
                        content20:"",
                        content21:"",
                        content22:"",
                        content23:"",
                        content24:"",
                        content25:"",
                        content26:"",
                        content27:"",
                        content28:"",
                        id: 10)
            
        ]
    }
}
struct TablePharmacology: Identifiable {
    let name: String
    let code: String
    let id: Int
    
    static func getTablePharmacologyAdult() -> [TablePharmacology] {
        [
            
            
            
            TablePharmacology(name: """
                                    **Аминокапроновая кислота**
                                    *(только для применения в стационарных условиях)*
                                    """,
                              code: """
                                    Маточное кровотечение
                                    Повреждение парехиматозных органов
                                    ЖКК (до 50-100 мл при критической гиповолемии)
                                    Кровотечение из ЛОР-органов (для смачивания тампонов и в/в)
                                    """,
                              id: 1),
            TablePharmacology(name: """
                                    **Аминофиллин**
                                    (Эуфиллин)
                                    """,
                              code: """
                                    ТЭЛА с бронхоспазмом,
                                    БА средней, тяжелой степени и астматический статус
                                    Бронхоспазм при аллергических реакциях
                                    Термоингаляционное поражение /Ожоговый шок для улучшения почечного кровотока
                                    Тяжелый приступ астмы у детей при отсутствии эффекта от терапии, усилении обструкции / недавнее применения ГКС
                                    ––––––––––––––––––
                                    Жизнеугрожающая брадикария с отсутствием эффекта от атропина - 240 мг
                                    """,
                              id: 2),
            TablePharmacology(name: """
                                    **Амиодарон**
                                    (Аритмил)
                                    """,
                              code: """
                                    Средство выбора при аритмиях у пациентов с СН.
                                    Наджелудочковая тахикардия, ФП при WPW, ЖТ, ЖЭ, устойчивая ФЖ после 3-го разряда
                                    """,
                              id: 3),
            TablePharmacology(name: """
                                    **Аскорбиновая кислота**
                                    """,
                              code: """
                                    Утопление, Ожоги органа зрения у детей при попадании перманганата калия
                                    ––––––––––––––––––
                                    Отравление угарным газом, сульфаниламидами, цианидами
                                    Отравление метгемоглобинообразователями (анилин, нитриты, бензол)
                                    """,
                              id: 4),
            TablePharmacology(name: """
                                    **Аспаркам**
                                    """,
                              code: """
                                    В комплексной терапии при ИБС, аритмиях, обусловленных электролитными нарушениями, ЖЭ.
                                    Профилактика интоксикации сердечными гликозидами.
                                    ––––––––––––––––––
                                    Гипокальциемические судороги
                                    Утопление в соленой воде
                                    Отравление ФОС
                                    """,
                              id: 5),
            TablePharmacology(name: """
                                    **Атропин**
                                    *3 мг - это доза, обеспечивающая максимальнуюблокаду блуждающего нерва*
                                    """,
                              code: """
                                    Асистолия, ЭМД, СССУ, AV-блокады (у больных с ОИМ и АВ-блокадой II ст. 2-го типа (дистальной) или III степени атропин малоэффективен и может вызывать ангинозную боль, ЖЭ или ФЖ)
                                    Почечная колика при повторном приступе и отсутствии эффекта от дротаверина и анальгина в дозе 0,5 мл п/к
                                    У детей при обмороке с замедлением сердечной деятельности, некупирующемся ваготоническом кризе, переломе костей таза, остром панкреатите
                                    В составе комплексной седативной терапии при инородном теле дыхательных путей 0,05-0,1 мл/год жизни
                                    ––––––––––––––––––
                                    Профилактика отека легких при утоплении
                                    Антидот при отравлении ФОС
                                    Стеноз 4 стадии при остром стенозирующем ларинготрахеите
                                    """,
                              id: 6),
            TablePharmacology(name: """
                                    **Аспирин**
                                    """,
                              code: """
                                    ОКС, кардиогенный шок
                                    ––––––––––––––––––
                                    Отморожение, при СДС и гиперкоагуляции
                                    """,
                              id: 7),
            TablePharmacology(name: """
                                    **Ацизол**
                                    """,
                              code: """
                                    Антидот при отравлении угарным газом, может применяться для профилактики перед входом в очаг
                                    """,
                              id: 8),
            TablePharmacology(name: """
                                    **Верапамил**
                                    """,
                              code: """
                                    Наджелудочковая тахикардия с узким QRS – средство выбора, ФП
                                    НЖТ, ТП, ФП у детей
                                    """,
                              id: 9),
            TablePharmacology(name: """
                                    **Галоперидол**
                                    """,
                              code: """
                                    Психомоторное возбуждение при острых психотических состояниях
                                    Острые психотические расстройства при употреблении психоактивных веществ (вместе с диазепамом)
                                    """,
                              id: 10),
            TablePharmacology(name: """
                                    **Гепарин**
                                    """,
                              code: """
                                    ОКС, КШ, ТЭЛА, острый тромбоз артерий и глубоких вен,
                                    ––––––––––––––––––
                                    При СДС и гиперкоагуляции, перед экстренной ЭИТ, длительной гипергликемической коме
                                    """,
                              id: 11),
            TablePharmacology(name: """
                                    **ГЭК**
                                    """,
                              code: """
                                    Инфузионная терапия, соотношение с кристаллоидами (1:2) при гиповолемическом шоке, острый тромбоз артерий и глубоких вен, утопление, септический шок, стартовые растворы при острой патологии органов брюшной полости у детей – прободная язва, ЖКК, мезотромбоз; ЧМТ тяжелой степени, электротравма у детей
                                    """,
                              id: 12),
            TablePharmacology(name: """
                                    **Глицерил тринитрат** (Нитроглицерин)
                                    """,
                              code: """
                                    ОКС, ССН, НС, АГ, ОЛЖН, ОЛ, расслаивающая аневризма аорты
                                    ––––––––––––––––––
                                    Отравления психостимуляторами (эфедрин,экстази,кокаин,эуфиллин)
                                    """,
                              id: 13),
            TablePharmacology(name: """
                                    **Глицин** (Громецин)
                                    """,
                              code: """
                                    ОНМК
                                    """,
                              id: 14),
            TablePharmacology(name: """
                                    **Глюкоза**
                                    """,
                              code: """
                                    Гипогликемическое состояние, абсцесс и флегмона слезной железы, острый дакриоаденит и дакриоцистит, алкогольный абстинентный синдром (капельно)
                                    ––––––––––––––––––
                                    Переохлаждение 1 ст., пароксизмальный экстрапирамидный синдром
                                    """,
                              id: 15),
            TablePharmacology(name: """
                                    **Дексаметазон**
                                    """,
                              code: """
                                    Ваготонический и паралитический коллапс у детей, острый стенозирующий ларинготрахеит у детей, гипертермия/менингеальный синдром с отеком ГМ, ИТШ, ожоги, утопление, острый эписклерит
                                    """,
                              id: 16),
            TablePharmacology(name: """
                                    **Диазепам**
                                    """,
                              code: """
                                    Седация при постреанимационной поддержке, перед проведением экстренной кардиоверсии, перед проведением интубации трахеи, при гипертоническом кризе и эмоциональной лабильности, купирование судорожного синдрома в т.ч. для предупреждения повторного приступа, седация при ожогах/ожоговом шоке, тяжелый гестоз, преэклампсия, эклампсия, состояния сопровождающиеся возбуждением, суицидальное поведение или мысли (при выраженной ажитированной депрессии или меланхолическом раптусе), дополнительно если при вертеброгенном болевом синдроме боль не снимается анальгетиками (анальгином, кеторолаком, трамадолом), при тяжелом приступе мигрени по показаниям (затянувшийся тяжелый приступ, если помогает сон, мигренозный статус), психоз вызванный употреблением психоактивных веществ (бред, галлюциинации, возбуждение), алкогольный абстинентный синдром средней и тяжелой степени (внутримышечно).
                                    При ОЛЖН, переломах костей таза у детей, политравма у детей, при затянувшемся тяжелом приступе мигрени у детей, симптомы судорожной готовности.
                                    """,
                              id: 17),
            TablePharmacology(name: """
                                    **Дибазол**
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 18),
            TablePharmacology(name: """
                                    **Дигоксин**
                                    **Строфантин**
                                    """,
                              code: """
                                    Постоянная форма ФП или повторный пароксизм длительностью более 48 часов при ЧСС>120
                                    ОЛЖН и нарастающая клиника ОЛ при пониженном АД и гипокинетическом варианте миокардиальной недостаточности у детей, пароксизм мерцания/трепетания предсердий у детей, при тахиаритмии на фоне синдрома слабости синусового узла у детей
                                    """,
                              id: 19),
            TablePharmacology(name: """
                                    **Дифенгидрамин**
                                    """,
                              code: """
                                    Острый тромбоз артерий и глубоких вен, вертеброгенный болевой синдром, острый приступ глаукомы
                                    Мигренеподобный криз у детей, при гипертермии, электротравма у детей, инородное тело дыхательных путей в составе смеси для седации у детей, острый приступ глаукомы у детей, болевой синдром различной степени выраженности у детей
                                    """,
                              id: 20),
            TablePharmacology(name: """
                                    **Добутамин**
                                    """,
                              code: """
                                    КШ при САД >90, ОЛЖН с умеренной (75-90) гипотензией у детей
                                    """,
                              id: 21),
            TablePharmacology(name: """
                                    **Допамин**
                                    *Использование вазопрессоров (допамин) при травматическом шоке без восполненной кровопотери считается грубой лечебной ошибкой.*
                                    """,
                              code: """
                                    При гиповолемическом шоке и невозможности поднять САД>90 коллоидами, постреанимационная поддержка САД<90, кардиогенный шок до достажения САД>100, ТЭЛА, ОЛЖН, ОЛ, ИТШ (при невозможности поднять АД инфузионной терапией), анафилаксия, брадиаритмии при отсутствии эффекта от атропина и ЧЭКС
                                    """,
                              id: 22),
            TablePharmacology(name: """
                                    **Дроперидол**
                                    """,
                              code: """
                                    Нейролептаналгезия при расслаивающей аневризме аорты, ГК при феохромоцитоме, преэклампсия/эклампсия у беременных
                                    ––––––––––––––––––
                                    Перегревание, алкогольный абстинентный синдром в/м, психомоторное возбуждение при острых психотических состояниях, лихорадка с симптомами судорожной готовности
                                    """,
                              id: 23),
            TablePharmacology(name: """
                                    **Дротаверин**
                                    """,
                              code: """
                                    Острый тромбоз артерий и глубоких вен, гипертермия, обструкция желчных путей при гепатите с выраженным болевым синдромом, почечная, кишечная, печеночная колика, выкидыш в малом сроке
                                    Симпатотонический коллапс у детей, острый холецистит, панкреатит, ОКН, мезотромбоз у детей
                                    """,
                              id: 24),
            TablePharmacology(name: """
                                    **Изосорбид динитрат**
                                    """,
                              code: """
                                    ОЛЖН, ОЛ, ОКС
                                    """,
                              id: 25),
            TablePharmacology(name: """
                                    **Кальция глюконат**
                                    """,
                              code: """
                                    При гипокальциемических судорогах у детей.
                                    ––––––––––––––––––
                                    При утоплении в пресной воде, при гипокальциемических судорогах
                                    """,
                              id: 26),
            TablePharmacology(name: """
                                    **Каптоприл**
                                    """,
                              code: """
                                    АГ, гипертонический криз, ОКС
                                    """,
                              id: 27),
            TablePharmacology(name: """
                                    **Кеторолак**
                                    """,
                              code: """
                                    Гипертермия, менингеальная инфекция, обезболивание при травмах, ожогах , мигрени, вертеброгенном болевом синдроме, ожогах и травмах глаза
                                    """,
                              id: 28),
            TablePharmacology(name: """
                                    **Клемастин**
                                    """,
                              code: """
                                    Аллергическая реакция
                                    """,
                              id: 29),
            TablePharmacology(name: """
                                    **Клонидин**
                                    """,
                              code: """
                                    Гипертонический криз, резистентные формы АГ, повышение АД>220/120 при ОНМК
                                    """,
                              id: 30),
            TablePharmacology(name: """
                                    **Клопидогрел**
                                    """,
                              code: """
                                    ОКС
                                    """,
                              id: 31),
            TablePharmacology(name: """
                                    **Лидокаин**
                                    """,
                              code: """
                                    ЖЭ, ЖТ, ФЖ, острый гнойный кератит
                                    """,
                              id: 32),
            TablePharmacology(name: """
                                    **Кофеин**
                                    **натрия бензоат**
                                    """,
                              code: """
                                    Ваготонический криз, затянувшийся обморок у детей.
                                    ––––––––––––––––––
                                    Вспомогательное средство при угнетении дыхания при легких отравлениях наркотическими анальгетиками и снотворными ЛС, оксидом углерода
                                    """,
                              id: 33),
            TablePharmacology(name: """
                                    **Магния сульфат**
                                    *При ОНМК 25% 5-10 мл внутривенно капельно, не чаще 60 кап/мин на 0,9% р-ре натрия хлорида или солевом р-ре (ацесоль).*
                                    """,
                              code: """
                                    Нейропротекция при ОНМК, ГК осложненный носовым кровотечением, гестозы с повышением АД, преэклампсия, эклампсия, судороги при ОНМК, повышение АД при ЧМТ, алкогольный абстинентный синдром, полиморфная ЖТ на фоне удлиненного QT интервала
                                    ––––––––––––––––––
                                    Пароксизмальный экстрапирамидный синдром
                                    """,
                              id: 34),
            TablePharmacology(name: """
                                    **Метамизол натрия**
                                    """,
                              code: """
                                    Гипертермия, почечная колика, обезболивание, мигрень, премедикация перед экстренной кардиоверсией, прободные ранения глазного яблока, ВСК
                                    """,
                              id: 35),
            TablePharmacology(name: """
                                    **Метоклопрамид**
                                    """,
                              code: """
                                    Рвота при ОНМК, мигрени
                                    """,
                              id: 36),
            TablePharmacology(name: """
                                    **Метопролол (инъекционный)**
                                    *Беталок*
                                    """,
                              code: """
                                    При «электрическом шторме» – непрерывно рецидивирующий характер фибрилляции/трепетания желудочков, ОКС + ФП для снижения ЧСС, полиморфная ЖТ на фоне нормального и удулиненного QT интервала, купирование СВТ при непереносимости верапамила, ОКС + ЖЭ, ОКС + СВТ
                                    """,
                              id: 37),
            TablePharmacology(name: """
                                    **Морфин**
                                    """,
                              code: """
                                    ОКС, обезболивание при выраженном болевом синдроме, нейролептаналгезия, премедикация перед экстренной кардиоверсией, КШ, ОЛЖН/отек легких при САД>90, расслаивающая аневризма аорты, острый тромбоз артерий и глубоких вен.
                                    ОЛЖН, ожоги, ожоговый шок – у детей
                                    """,
                              id: 38),
            TablePharmacology(name: """
                                    **Налоксон**
                                    """,
                              code: """
                                    Передозировка морфина, возможное отравление опиатами, алкогольная интоксикация тяжелой степени
                                    ––––––––––––––––––
                                    Кома при алкогольном абстинентном синдроме, отравление клофелином при угнетении сознания
                                    """,
                              id: 39),
            TablePharmacology(name: """
                                    **Натрия гидрокарбонат**
                                    """,
                              code: """
                                    Алкогольное отравление тяжелое, длительная СЛР более 20 мин, утопление с нарушением сознания
                                    ––––––––––––––––––
                                    Инфузионная терапия 4% раствором при отравлении этанолом, метанолом, этиленгликолем
                                    """,
                              id: 40),
            TablePharmacology(name: """
                                    **Натрия оксибутират**
                                    """,
                              code: """
                                    Седативная терапия при постреанимационной поддержке, эпистатус, при возбуждении при утоплении, ОКС при непереносимости нитратов, наркотических анальгетиков
                                    """,
                              id: 41),
            TablePharmacology(name: """
                                    **Парацетамол**
                                    """,
                              code: """
                                    Розовая гипертермия у детей
                                    """,
                              id: 42),
            TablePharmacology(name: """
                                    **Платифиллин**
                                    """,
                              code: """
                                    В протоколах отсутствует
                                    ––––––––––––––––––
                                    Спазмы гладких мышц при язвенной болезни желудка и двенадцатиперстной кишки, кишечной, печеночной и почечной коликах, спазмы сосудов головного мозга, болевой синдром при панкреатите, панкреатическая кома, дискинезия желчевыводящих путей, рефлюкс-эзофагит, отравления ацетоном, борной кислотой, крепкими кислотами, мышьяком, резерпином.
                                    """,
                              id: 43),
            TablePharmacology(name: """
                                    **Преднизолон**
                                    """,
                              code: """
                                    Перед введением стрептокиназы, БА, стеноз гортани, гипертермия, осложненная отеком головного мозга, ИТШ, травмы груди, позвоночника, политравма, утопление, аллергическая реакция, мигренозный статус, странгуляционная асфиксия, острый эписклерит.
                                    ОЛЖН при снижении АД у детей, паралитический, ваготонический коллапс, КШ у детей, СВТ при отсутствии эффекта после вагусных проб и верапамила в течение 15 минут, судорожный синдром со стойким угнетением сознания, при затянувшемся тяжелом приступе мигрени, ЧМТ средней и тяжелой степени, термоингаляционные поражения, ожоговый шок, перегревание, общее переохлаждение средней и тяжелой степени, агональный период
                                    ––––––––––––––––––
                                    Спинальная травма, гипогликемическое состояние при отсутствии эффекта от введения глюкозы, тяжелая пневмония с гипотензией, отравления до стабилизации АД, синдром острой бронхиальной обструкции, острый стенозирующий ларинготрахеит
                                    """,
                              id: 44),
            TablePharmacology(name: """
                                    **Прокаин (Новокаин)**
                                    """,
                              code: """
                                    Химические ожоги глаза, острый гнойный кератит (язва роговицы), непрободные ранения глазного яблока
                                    """,
                              id: 45),
            TablePharmacology(name: """
                                    **Прокаинамид (Новокаинамид)**
                                    """,
                              code: """
                                    СВТ, пароксизмальная форма ФП <48 часов, пароксизмальная форма ФП на фоне WPW у детей средство выбора, устойчивая мономорфная ЖТ с сохр. ФВ средство первой линии
                                    """,
                              id: 46),
            TablePharmacology(name: """
                                    **Пропранолол**
                                    """,
                              code: """
                                    АГ, алкогольный абстинентный синдром, ОКС (при отсутствии метопролола)
                                    """,
                              id: 47),
            TablePharmacology(name: """
                                    **Стрептокиназа**
                                    """,
                              code: """
                                    ОКС, массивная ТЭЛА/инфаркт легкого при прогрессировании симптомов и гипотензии
                                    """,
                              id: 48),
            TablePharmacology(name: """
                                    **Сульфацетамид**
                                    """,
                              code: """
                                    Конъюнктивит, блефарит, гнойная язва роговицы, профилактика и лечение бленнореи у новорожденных, инстилляция при ранениях век и конъюнктивы после обработки йодом, прободные ранения глазного яблока, ожоги органа зрения
                                    """,
                              id: 49),
            TablePharmacology(name: """
                                    **Тиамин**
                                    """,
                              code: """
                                    Алкогольный абстинентный синдром
                                    ––––––––––––––––––
                                    Отравление алкоголем
                                    """,
                              id: 50),
            TablePharmacology(name: """
                                    **Трамадол**
                                    """,
                              code: """
                                    Выраженный болевой синдром, стартовый анальгетик при переломах костей таза, спинальной травме
                                    """,
                              id: 51),
            TablePharmacology(name: """
                                    **Тримеперидин
                                    (Промедол)**
                                    """,
                              code: """
                                    Острый тромбоз артерий и глубоких вен, травмы груди, живота, конечностей, ожоги с выраженным болевым синдромом, стартовый анальгетик при длительном сдавлении мягких тканей, в реактивном периоде при отморожениях средство выбора
                                    Премедикация перед экстренной кардиоверсией
                                    """,
                              id: 52),
            TablePharmacology(name: """
                                    **Уголь активированный**
                                    """,
                              code: """
                                    Энтеросорбент после промывания желудка
                                    """,
                              id: 53),
            TablePharmacology(name: """
                                    **Унитиол**
                                    """,
                              code: """
                                    Странгуляционная асфиксия, антидот при отравлении солями тяжелых металлов
                                    ––––––––––––––––––
                                    Отравление алкоголем
                                    """,
                              id: 54),
            TablePharmacology(name: """
                                    **Урапидил**
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 55),
            TablePharmacology(name: """
                                    **Фенилэфрин**
                                    """,
                              code: """
                                    В одном шприце с антиаритмическим препаратом для предотвращения снижения АД, при ЖКК и САД<80 в 800 мл 5% глюкозы в/в кап
                                    Обморок с выраженной гипотензией у детей, при коллапсе и некупирующейся артериальной гипотензии, острый иридоциклит у детей инстилляция 2 капли
                                    """,
                              id: 56),
            TablePharmacology(name: """
                                    **Фенотерол или сальбутамол**
                                    """,
                              code: """
                                    Приступ БА, бронхоспазм при анафилаксии
                                    """,
                              id: 57),
            TablePharmacology(name: """
                                    **Фентанил**
                                    """,
                              code: """
                                    Седация при постреанимационной поддержке, ТЭЛА, ОКС, выраженный болевой синдром, расслаивающая аневризма аорты, проведение нейролептаналгезии
                                    """,
                              id: 58),
            TablePharmacology(name: """
                                    **Фондапаринукс**
                                    """,
                              code: """
                                    ОКС
                                    """,
                              id: 59),
            TablePharmacology(name: """
                                    **Фуросемид**
                                    """,
                              code: """
                                    АГ, гипертонический криз неосложненный, гипертоническая энцефалопатия, ОЛЖН, ОЛ, (при САД>90), признаки отека головного мозга, утопление, острый приступ глаукомы, абсцесс и флегмона, острый дакриоаденит и дакриоцистит
                                    При мигренеподобном кризе, мигрени у детей.
                                    """,
                              id: 60),
            TablePharmacology(name: """
                                    **Хлорамфеникол**
                                    """,
                              code: """
                                    Менингококковая инфекция
                                    """,
                              id: 61),
            TablePharmacology(name: """
                                    **Хлоропирамин**
                                    """,
                              code: """
                                    Аллергическая реакция, анафилаксия
                                    """,
                              id: 62),
            TablePharmacology(name: """
                                    **Хлорпромазин**
                                    """,
                              code: """
                                    Декомпенсация психического заболевания с возбуждением, в составе седативной смеси при ИТ дыхательных путей у детей
                                    """,
                              id: 63),
            TablePharmacology(name: """
                                    **Цефтриаксон
                                    (Цефотаксим)**
                                    """,
                              code: """
                                    Пневмония средней и тяжелой степени, при гриппе с признаками отека головного мозга, менингококковая инфекция
                                    """,
                              id: 64),
            TablePharmacology(name: """
                                    **Электролиты (Ацесоль)**
                                    """,
                              code: """
                                    Предпочтительнее физиологического раствора как кристаллоид
                                    """,
                              id: 65),
            TablePharmacology(name: """
                                    **Эноксапарин**
                                    """,
                              code: """
                                    ОКС
                                    """,
                              id: 66),
            TablePharmacology(name: """
                                    **Эмоксипин**
                                    """,
                              code: """
                                    Нейропротекция при ОНМК, антигипоксант при утоплении
                                    """,
                              id: 67),
            TablePharmacology(name: """
                                    **Эпинефрин (Адреналин)**
                                    """,
                              code: """
                                    Асистолия, ФЖ, СМД, брадиаритмии с приступами Морганьи- Адамса-Стокса, анафилаксия, астматический статус и БА тяжелой степени при отсутствии сознания и угнетении дыхания, орошение слизистой оболочки глотки, полости носа и рта при стенозе гортани 3 степени
                                    """,
                              id: 68),
            TablePharmacology(name: """
                                    **Этамзилат**
                                    """,
                              code: """
                                    Носовое кровотечение, ЖКК.
                                    Кровотечение из глотки, массивное носовое кровотечение, ЖКК у детей
                                    """,
                              id: 69),
            
        ]
    }
    static func getTablePharmacologyChild() -> [TablePharmacology] {
        [
            
            TablePharmacology(name: """
                                    **Активированный уголь**
                                    *5-10 таблеток*
                                    """,
                              code: """
                                    Острая крапивница, отек Квинке, многоформная экссудативная эритема, токсидермия, синдром Лайелла, Стивенса-Джонсона, Острые отравления
                                    """,
                              id: 1),
            TablePharmacology(name: """
                                    **Аминофиллин (Эуфиллин)**
                                    *5 мг/кг массы тела в/в*
                                    """,
                              code: """
                                    Приступ бронхиальной астмы
                                    """,
                              id: 2),
            TablePharmacology(name: """
                                    **Атропина сульфат**
                                    *0,01 мл/кг (или 0,1 мл/год жизни) 0,02 мг/кг (0,02 мл/кг) при реанимации (общая доза не более 1 мг).*
                                    """,
                              code: """
                                    СЛР
                                    """,
                              id: 3),
            TablePharmacology(name: """
                                    **Бендазол (Дибазол)**
                                    *0,1-0,2 мл/год жизни в/м или в/в*
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 4),
            TablePharmacology(name: """
                                    **Бикарбонат натрия**
                                    *1 мл/кг 8,4% в/в медленно в течение 2 мин*
                                    """,
                              code: """
                                    СЛР (использовать разные венозные доступы с адреналином)
                                    """,
                              id: 5),
            TablePharmacology(name: """
                                    **Верапамил**
                                    *0,1 мг/кг массы или в возрастных дозировках: до 1 месяца 0,2-0,3 мл, до 1 года 0,3-0,4 мл, 1-5 лет 0,4-0,5 мл, 5-10 лет 1-1,5 мл, старше 10 лет 1,5-2 мл в/в*
                                    """,
                              code: """
                                    Приступ наджелудочковой тахикардии, Пароксизм мерцания предсердий для восстановления синусового ритма, Пароксизм трепетания предсердий
                                    """,
                              id: 6),
            TablePharmacology(name: """
                                    **Гексаметония бензосульфонат**
                                    *детям 1-3 лет в дозе 1-3 мг/кг, старше 3 лет 0,5-1 мг/кг*
                                    """,
                              code: """
                                    ОЛЖН при повышенном АД и гиперкинетическом варианте миокардиальной недостаточности
                                    """,
                              id: 7),
            TablePharmacology(name: """
                                    **Гепарин**
                                    *п/к 100 ЕД/кг*
                                    """,
                              code: """
                                    Острый тромбоз глубоких вен нижних конечностей и таза
                                    """,
                              id: 8),
            TablePharmacology(name: """
                                    **Гидрокортизон**
                                    *в разовой дозе 4 мг/кг*
                                    """,
                              code: """
                                    При явлениях симпатотонического коллапса при нейротоксикозе, острой надпочечниковой недостаточности, При явлениях ваготонического и паралитического коллапса, Гипогликемия
                                    """,
                              id: 9),
            TablePharmacology(name: """
                                    **ГЭК**
                                    *в/в капельно 10-20 мл/кг*
                                    """,
                              code: """
                                    Открытые повреждения живота при явлениях шока, Политравма, Прободная язва желудка и двенадцатиперстной кишки, Острые желудочно-кишечные кровотечения, Острая артериальная непроходимость магистральных сосудов конечностей (эмболии и тромбозы), ЧМТ - при ушибе и сдавлении головного мозга, Пневмония при гипотензии, Утопление, Электротравма при гипотензии
                                    """,
                              id: 10),
            TablePharmacology(name: """
                                    **Глицерил тринитрат**
                                    *2-5 мкг/кг в/в*
                                    """,
                              code: """
                                    ОЛЖН
                                    """,
                              id: 11),
            TablePharmacology(name: """
                                    **Глюкоза 10% раствор**
                                    *5 мл/кг в/в*
                                    """,
                              code: """
                                    
                                    """,
                              id: 12),
            TablePharmacology(name: """
                                    **Глюкоза 20-40% раствор**
                                    *2 мл/кг в/в струйно или 20-80 мл (0,5 г/кг) в/в струйно медленно*
                                    """,
                              code: """
                                    Обморок и гипогликемия
                                    """,
                              id: 13),
            TablePharmacology(name: """
                                    **Глюкоза 40% раствор**
                                    *2 мл/кг в/в струйно*
                                    """,
                              code: """
                                    Гипогликемия в бессознательном состоянии
                                    """,
                              id: 14),
            TablePharmacology(name: """
                                    **Дексаметазон**
                                    *0,5-0,6 мг/кг в/м или в/в*
                                    """,
                              code: """
                                    При явлениях ваготонического и паралитического коллапса, При явлениях симпатотонического коллапса при нейротоксикозе, острой надпочечниковой недостаточности, Острый стенозирующий ларинготрахеит
                                    """,
                              id: 15),
            TablePharmacology(name: """
                                    **Декстран/натрия хлорид**
                                    *10-15 мл/кг*
                                    """,
                              code: """
                                    При явлениях ваготонического и паралитического коллапса, Открытые повреждения живота при явлениях шока, Политравма, Прободная язва желудка и двенадцатиперстной кишки, Острые желудочно-кишечные кровотечения, Острая артериальная непроходимость магистральных сосудов конечностей (эмболии и тромбозы), ЧМТ - при ушибе и сдавлении головного мозга, Пневмония при гипотензии, Утопление, Электротравма при гипотензии
                                    """,
                              id: 16),
            TablePharmacology(name: """
                                    **Диазепам**
                                    *0,02-0,05 мл/кг (0,1-0,3 мг/кг) в/м (или в/в струйно) или 0,1 мл/год жизни или 0,5 мг/кг массы тела в/в или в/м, общая доза не более 3 мл*
                                    """,
                              code: """
                                    ОЛЖН, Кардиогенный шок, ЭИТ, Гипертонический криз, Симпатоадреналовый криз при выраженном беспокойстве, При истероподобном кризе или «судорожной готовности», Переломы костей таза, Политравма, Судорожный синдром, Мигрень при затянувшемся тяжелом приступе, ЧМТ, ИТШ, Утопление, Электротравма
                                    """,
                              id: 17),
            TablePharmacology(name: """
                                    **Диклофенак натрия**
                                    *1,5-2 мл в/м (1мг/кг)*
                                    """,
                              code: """
                                    Мигрень
                                    """,
                              id: 18),
            TablePharmacology(name: """
                                    **Дифенгидрамин**
                                    *0,1 мл/год жизни*
                                    """,
                              code: """
                                    Мигренеподобный криз, Политравма, ИТШ при менингококковой инфекции, "розовая" и "бледная" гипертермия, Электротравма, Инородные тела ВДП, Острый приступ глаукомы
                                    """,
                              id: 19),
            TablePharmacology(name: """
                                    **Добутамин**
                                    *2,5-8 мкг/кг/мин в/в титрованно*
                                    """,
                              code: """
                                    ОЛЖН при пониженном АД и гипокинетическом варианте миокардиальной недостаточности, Кардиогенный шок
                                    """,
                              id: 20),
            TablePharmacology(name: """
                                    **Допамин**
                                    *5-10 мкг/кг/мин*
                                    """,
                              code: """
                                    ОЛЖН, при явлениях ваготонического и паралитического коллапса, Кардиогенный шок, Брадиаритмии, Пневмония, Утопление, Электротравма
                                    """,
                              id: 21),
            TablePharmacology(name: """
                                    **Дроперидол**
                                    *0,1 мл/кг в/в или в/м*
                                    """,
                              code: """
                                    ОЛЖН при повышенном АД и гиперкинетическом варианте миокардиальной недостаточности
                                    """,
                              id: 22),
            TablePharmacology(name: """
                                    **Дротаверин**
                                    *0,1 мл/год жизни в/м или в/в*
                                    """,
                              code: """
                                    При явлениях симпатотонического коллапса, Острый холецистит, Острый панкреатит, ОКН, Острая артериальная непроходимость магистральных сосудов конечностей (эмболии и тромбозы), При «бледной» гипертермии
                                    """,
                              id: 23),
            TablePharmacology(name: """
                                    **Ибупрофен**
                                    *5-10 мг/кг на прием*
                                    """,
                              code: """
                                    При «розовой» гипертермии
                                    """,
                              id: 24),
            TablePharmacology(name: """
                                    **Изосорбид динитрат**
                                    *2-5 мкг/кг в/в*
                                    """,
                              code: """
                                    ОЛЖН при повышенном АД и гиперкинетическом варианте миокардиальной недостаточности
                                    """,
                              id: 25),
            TablePharmacology(name: """
                                    **Кальция глюконат**
                                    *1 мл/год жизни в/в медленно после предварительного разведения его раствором 10% глюкозы в 2 раза*
                                    """,
                              code: """
                                    При гипокальциемических судорогах
                                    """,
                              id: 26),
            TablePharmacology(name: """
                                    **Каптоприл**
                                    *0,1-0,2 мг/кг*
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 27),
            TablePharmacology(name: """
                                    **Кеторолак**
                                    *(с 6 лет) 10-30 мг в/в (или в/м) 0,1-0,3 мг/кг веса*
                                    """,
                              code: """
                                    Раны шеи, Раны конечностей, Открытые и закрытые повреждения груди, Открытые повреждения живота, Закрытая травма живота при политравме, Перелом костей носа и околоносовых пазух, Острый паратонзиллит, Заглоточный абсцесс
                                    """,
                              id: 28),
            TablePharmacology(name: """
                                    **Клонидин (Клофелин)**
                                    *0,3-0,5-1 мл в зависимости от возраста в/м (или в/в) на физ. р-ре в течение 5-7 мин*
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 29),
            TablePharmacology(name: """
                                    **Кофеин**
                                    *10% 0,1 мл/год жизни п/к (не более 1мл)*
                                    """,
                              code: """
                                    При затянувшемся обмороке, При ваготоническом кризе
                                    """,
                              id: 30),
            TablePharmacology(name: """
                                    **Лидокаин**
                                    *0,5-1 мг/кг в/в медленно*
                                    """,
                              code: """
                                    Желудочковая пароксизмальная тахикардия, СЛР
                                    """,
                              id: 31),
            TablePharmacology(name: """
                                    **Метамизол**
                                    *0,1 мл/год жизни в/м*
                                    """,
                              code: """
                                    Кардиогенный шок, ЭИТ, Вегето-сосудистые кризы (симпатоадреналовый криз), Мигренеподобный криз, Раны шеи, Раны и переломы конечностей, Открытые и закрытые повреждения груди, Повреждения живота, Переломы костей таза, Повреждения позвоночника, Политравма, гипертермия при ИТШ, пневмонии, "розовая" и "бледная" гипертермия, При отравлении прижигающими ядами перед промыванием желудка , Ожоги, Перегревание, Отморожение, Поражение электрическим током, Перелом костей носа и околоносовых пазух, Острый паратонзиллит, Заглоточный абсцесс, Острый приступ глаукомы, Прободные ранения глазного яблока, Ожоги органа зрения
                                    """,
                              id: 32),
            TablePharmacology(name: """
                                    **Метоклопрамид**
                                    *0,01 мг/кг в/м или в/в (не более 1 мл)*
                                    """,
                              code: """
                                    Мигренеподобный криз, Мигрень
                                    """,
                              id: 33),
            TablePharmacology(name: """
                                    **Морфин**
                                    *0,1 мл/год жизни в/м*
                                    """,
                              code: """
                                    ОЛЖН, Ожоги, Ожоговый шок
                                    """,
                              id: 34),
            TablePharmacology(name: """
                                    **Налоксон**
                                    *1 мг до 1 года, 2 мг старше одного года*
                                    """,
                              code: """
                                    Отравление наркотическими веществами
                                    """,
                              id: 35),
            TablePharmacology(name: """
                                    **Настойка валерианы или пустырника**
                                    *1-2 кап/год жизни*
                                    """,
                              code: """
                                    Пароксизмальная тахикардия, Вегето-сосудистые кризы (симпатоадреналовый криз)
                                    """,
                              id: 36),
            TablePharmacology(name: """
                                    **Нифедипин**
                                    *0,25-0,5 мг/кг*
                                    """,
                              code: """
                                    Гипертонический криз
                                    """,
                              id: 37),
            TablePharmacology(name: """
                                    **Норэпинефрин**
                                    *0,1 мл/год жизни в/в кап. на 0,9% NaCl со скоростью 10-20 кап/мин*
                                    """,
                              code: """
                                    Коллапс
                                    """,
                              id: 38),
            TablePharmacology(name: """
                                    **Папаверин**
                                    *0,1 мл/год жизни*
                                    """,
                              code: """
                                    Коллапс, Вегето-сосудистые кризы
                                    """,
                              id: 39),
            TablePharmacology(name: """
                                    **Парацетамол**
                                    *10-15 мг/кг*
                                    """,
                              code: """
                                    Гипертермический синдром
                                    """,
                              id: 40),
            TablePharmacology(name: """
                                    **Пентоксифиллин**
                                    *3-5 мг/кг в/в кап на 200 мл 0,9% NaCl*
                                    """,
                              code: """
                                    Острая артериальная непроходимость магистральных сосудов конечностей, Острый тромбоз глубоких вен нижних конечностей и таза
                                    """,
                              id: 41),
            TablePharmacology(name: """
                                    **Преднизолон**
                                    *1-10 мг/кг*
                                    """,
                              code: """
                                    ОЛЖН, Коллапс, Кардиогенный шок, Пароксизмальная тахикардия, Политравма, Судорожный синдром, Мигрень, Черепно-мозговая травма, Анафилактический шок, Острая крапивница, отек Квинке, многоформная экссудативная эритема, токсидермия, синдром Лайелла, Стивенса-Джонсона, Приступ бронхиальной астмы, Гипогликемия, Инфекционно-токсический шок, Менингококковая инфекция, Острый стенозирующий ларинготрахеит, Острая осложненная пневмония, Термоингаляционные поражения, Ожоговый шок, Перегревание, Переохлаждение, Утопление, Внутричерепное осложнение при оториноларингологических заболеваниях
                                    """,
                              id: 42),
            TablePharmacology(name: """
                                    **Прокаин (Новокаин)**
                                    *0,25-0,5% раствор*
                                    """,
                              code: """
                                    Острый гнойный кератит. Язва роговицы, Непрободные ранения глазного яблока, Ожоги органа зрения
                                    """,
                              id: 43),
            TablePharmacology(name: """
                                    **Прокаинамид (Новокаинамид)**
                                    *в/в в дозе 0,15-0,2 мл/кг*
                                    """,
                              code: """
                                    Пароксизмальная тахикардия, Желудочковая пароксизмальная тахикардия, При пароксизме мерцания предсердий на фоне синдрома WPW
                                    """,
                              id: 44),
            TablePharmacology(name: """
                                    **Сальбутамол**
                                    """,
                              code: """
                                    Анафилактический шок, Приступ бронхиальной астмы
                                    """,
                              id: 45),
            TablePharmacology(name: """
                                    **Строфантин**
                                    *0,025% из расчета 0,03 мг/кг массы для детей до 3 лет и 0,02-0,01 мг/кг массы детям старше 3 лет*
                                    """,
                              code: """
                                    ОЛЖН, Пароксизмальная тахикардия (при развивающейся сердечной недостаточности), При пароксизме мерцания предсердий, При пароксизме трепетания предсердий, При тахиаритмии на фоне синдрома слабости синусового узла
                                    """,
                              id: 46),
            TablePharmacology(name: """
                                    **Сульфацетамид**
                                    *20% раствор*
                                    """,
                              code: """
                                    Острый конъюнктивит, Ранения век и конъюнктивы, Прободные ранения глазного яблока, При ожоге органа зрения известью, анилиновыми красителями, перманганатом калия
                                    """,
                              id: 47),
            TablePharmacology(name: """
                                    **Трамадол**
                                    *1-2 мг/кг в/м*
                                    """,
                              code: """
                                    Кардиогенный шок (детям первых двух лет жизни), Переломы костей таза, Политравма
                                    """,
                              id: 48),
            TablePharmacology(name: """
                                    **Тримеперидин (Промедол)**
                                    *0,1 мл/год жизни в/м, 1 мл перед ЭИТ*
                                    """,
                              code: """
                                    ОЛЖН, Кардиогенный шок, Раны шеи, Раны конечностей, Закрытые повреждения груди, Открытые повреждения груди, Открытые повреждения живота, Закрытая травма живота, Переломы костей конечностей, Переломы костей таза, Повреждения шейных позвонков, Повреждения грудных и поясничных позвонков, Политравма, Острая артериальная непроходимость магистральных сосудов конечностей (эмболии и тромбозы), Острый тромбоз глубоких вен нижних конечностей и таза, Ожоги кожи, Ожоговый шок, Перелом костей носа и околоносовых пазух, Инородное тело дыхательных путей
                                    """,
                              id: 49),
            TablePharmacology(name: """
                                    **Унитиол**
                                    *5% раствор унитиола в/в из расчета 1 мл на 10 кг массы тела*
                                    """,
                              code: """
                                    Проведение антидотной терапии (ввести при отравлении солями тяжелых металлов)
                                    """,
                              id: 50),
            TablePharmacology(name: """
                                    **Фенилэфрин**
                                    *0,1 мл/год жизни в/м или в/в, но не более 1 мл*
                                    """,
                              code: """
                                    Обморок, Коллапс (при некупирующейся артериальной гипотензии), Пароксизмальная тахикардия, Желудочковая пароксизмальная тахикардия, При пароксизме трепетания предсердий, Острый иридоциклит
                                    """,
                              id: 51),
            TablePharmacology(name: """
                                    **Фенотерол**
                                    """,
                              code: """
                                    Анафилактический шок при бронхоспазме
                                    """,
                              id: 52),
            TablePharmacology(name: """
                                    **Фентанил**
                                    *0,005% дозе 0,01 мг/кг, 1 мл перед ЭИТ*
                                    """,
                              code: """
                                    Кардиогенный шок, премедикация перед ЭИТ, Переломы костей таза
                                    """,
                              id: 53),
            TablePharmacology(name: """
                                    **Фуросемид**
                                    *1-2 мг/кг, 0,1-0,2 мл/кг (1-3 мг/кг)*
                                    """,
                              code: """
                                    ОЛЖН, Пароксизмальная тахикардия - при развивающейся сердечной недостаточности, Гипертонический криз - при симптомах внутричерепной гипертензии, Вегето-сосудистые кризы - при мигренеподобном кризе, Судорожный синдром, Мигрень, Инфекционно-токсический шок, Менингококковая инфекция, Утопление - агональный период и клиническая смерть, Внутричерепное осложнение при оториноларингологических заболеваниях , Острый приступ глаукомы
                                    """,
                              id: 54),
            TablePharmacology(name: """
                                    **Хлорамфеникол**
                                    *30 мг/кг в/м*
                                    """,
                              code: """
                                    Инфекционно-токсический шок, Менингококковая инфекция
                                    """,
                              id: 55),
            TablePharmacology(name: """
                                    **Хлоропирамин (Супрастин)**
                                    *в/в (или в/м) 2% до года 0,1-0,25 мл, 1-4 года 0,3 мл, 5-9 лет 0,4-0,5 мл, 10-14 лет 0,75-1 мл*
                                    """,
                              code: """
                                    Анафилактический шок, Острая крапивница, отек Квинке, многоформная экссудативная эритема, токсидермия, синдром Лайелла, Стивенса-Джонсона
                                    """,
                              id: 56),
            TablePharmacology(name: """
                                    **Эпинефрин**
                                    *0,01 мл/кг в/м, 0,1-0,3 мл на ингаляцию через небулайзер*
                                    """,
                              code: """
                                    Внезапная смерть, Нарушение сердечного ритма - брадиаритмии, Анафилактический шок, Приступ бронхиальной астмы
                                    """,
                              id: 57),
            TablePharmacology(name: """
                                    **Этамзилат натрия**
                                    *5 мг/кг или 2-4 мл*
                                    """,
                              code: """
                                    Острые желудочно-кишечные кровотечения, Носовое кровотечение, Кровотечение из глотки
                                    """,
                              id: 58),
            TablePharmacology(name: """
                                    **Этиловый спирт**
                                    *1-2 г/кг (на 5% растворе глюкозы)*
                                    """,
                              code: """
                                    ОЛЖН, Проведение антидотной терапии (отравление метиловым спиртом)
                                    """,
                              id: 59),
            
        ]
    }
    
    //вазопрессоры и кардиотоники
    
    static func getTablePharmacologyVasopressors() -> [TablePharmacology] {
        [
            
            
            
            TablePharmacology(name: """
                                    **Адреналин**
                                    *Вазопрессор, α и β-адреномиметик, увеличивает силу сердечных сокращений, ударный объем, ОПСС. При большой скорости выраженней сосудосуживающее действие.*
                                    """,
                              code: """
                                    Остановка кровообращения, кардиогенный шок, анафилаксия, бронхоспазсм, гипотензия вызванная шоком, травмой, ОПН, передозировкой лекарств.
                                    """,
                              id: 1),
            TablePharmacology(name: """
                                    **Добутамин**
                                    *Кардиотоник, β1–адреномиметик. Умеренно увеличивает ЧСС, увеличивает ударный и минутный объемы, коронарный кровоток, снижает ОПСС и сосудистое сопротивление в малом круге.*
                                    """,
                              code: """
                                    Кардиогенный шок, особенно в случаях высокого ОПСС или давления в легочной артерии, декомпенсация ХСН.
                                    """,
                              id: 2),
            TablePharmacology(name: """
                                    **Допамин**
                                    *Вазопрессор, кардиотоник.
                                    При низких дозах (0,5–2,5 мкг/кг/мин) вызывает расширение почечных, мезентериальных, коронарных и мозговых сосудов;
                                    При средних дозах (2–10 мкг/кг/мин) стимулирует β1–адренорецепторы, вызывая положительный инотропный эффект;
                                    При высоких дозах (10 мкг/кг/мин и более) стимулирует α1–адренорецепторы, вызывая повышение ОПСС и сужение почечных сосудов.
                                    Если инотропный эффект недостаточен при дозе 10–20 мкг/кг/мин, отдать предпочтение адреналину.*
                                    """,
                              code: """
                                    Шоковые состояния различного генеза (КШ, гиповолемический шок, анафилактический шок, ИТШ), почечная дисфункция и недостаточность, ОСН.
                                    """,
                              id: 3),
            TablePharmacology(name: """
                                    **Мезатон**
                                    *Вазопрессор, α-адреномиметик, вызывает сужение артериол, повышение АД и ОПСС.*
                                    """,
                              code: """
                                    Гипотензия вследствие периферической вазодилатации, состояние с низким ОПСС (например, септический шок), препарат-индуцированная гипотензия, временная терапия гиповолемии до восстановления объема циркулирующей крови (как исключение), суправентрикулярная тахикардия (может восстановить ритм из-за рефлекторного повышения тонуса n. vagus на подъем АД).
                                    """,
                              id: 4),
            
            
        ]
    }
}



