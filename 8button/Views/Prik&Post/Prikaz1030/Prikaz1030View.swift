//
//  Prikaz1030View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI
import Combine

struct AdultTitle: Identifiable {
    let id: String
    let title: String
    let content: String
    let view: AnyView
    
    
}

@MainActor
func getAllUserData() async throws -> [AdultTitle] {
    
    [
        AdultTitle(id: "2",title: "01", content: "Алгоритм 1", view: AnyView(Prikaz1030Alg1View())),
        AdultTitle(id: "3",title: "02", content: "Алгоритм 2", view: AnyView(Prikaz1030Alg2View())),
        AdultTitle(id: "4",title: "03", content: "Алгоритм 3", view: AnyView(Prikaz1030Alg3View())),
        AdultTitle(id: "5",title: "04", content: "Алгоритм 4", view: AnyView(Prikaz1030Alg4View())),
        AdultTitle(id: "6",title: "05", content: "Алгоритм 5",  view: AnyView(Prikaz1030Alg5View())),
    ]
}
struct Prikaz1030View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    //    let adultLet: [AdultTitle] = []
    let zaebalo: [AdultTitle] = [
        AdultTitle(id: "1",title: "01", content: "«Порядок оказания скорой (неотложной) медицинской помощи»", view: AnyView(Prikaz1030Alg1View())),
        AdultTitle(id: "2",title: "02", content: "«Первичный осмотр пациента (ABCD)»", view: AnyView(Prikaz1030Alg2View())),
        AdultTitle(id: "3",title: "03", content: "«Острая дыхательная недостаточность»", view: AnyView(Prikaz1030Alg3View())),
        AdultTitle(id: "4",title: "04", content: "«Внезапная смерть, сердечно-легочная реанимация»", view: AnyView(Prikaz1030Alg4View())),
        AdultTitle(id: "5",title: "05", content: "«Гиповолемический шок»",  view: AnyView(Prikaz1030Alg5View())),
        AdultTitle(id: "6",title: "06", content: "«Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»", view: AnyView(Prikaz1030Alg6View())),
        AdultTitle(id: "7",title: "07", content: "«Асистолия»", view: AnyView(Prikaz1030Alg7View())),
        AdultTitle(id: "8",title: "08", content: "«Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»", view: AnyView(Prikaz1030Alg8View())),
        AdultTitle(id: "9",title: "09", content: "«Постреанимационная поддержка»", view: AnyView(Prikaz1030Alg9View())),
        AdultTitle(id: "10",title: "10", content: "«Пароксизмальная тахикардия с узким комплексом QRS»",  view: AnyView(Prikaz1030Alg10View())),
        AdultTitle(id: "11",title: "11", content: "«Пароксизмальная тахикардия с широким комплексом QRS»",  view: AnyView(Prikaz1030Alg11View())),
        AdultTitle(id: "12",title: "12", content: "«Желудочковая экстрасистолия (злокачественная)»",  view: AnyView(Prikaz1030Alg12View())),
        AdultTitle(id: "13",title: "13", content: "«Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»",  view: AnyView(Prikaz1030Alg13View())),
        AdultTitle(id: "14",title: "14", content: "«Пароксизмальная мерцательная аритмия»",  view: AnyView(Prikaz1030Alg14View())),
        AdultTitle(id: "15",title: "15", content: "«Острый коронарный синдром»",  view: AnyView(Prikaz1030Alg15View())),
        AdultTitle(id: "16",title: "16", content: "«Кардиогенный шок»",  view: AnyView(Prikaz1030Alg16View())),
        AdultTitle(id: "17",title: "17", content: "«Отек легких»",  view: AnyView(Prikaz1030Alg17View())),
        AdultTitle(id: "18",title: "18", content: "«Тромбоэмболия легочной артерии»",  view: AnyView(Prikaz1030Alg18View())),
        AdultTitle(id: "19",title: "19", content: "«Расслаивающая аневризма аорты»",  view: AnyView(Prikaz1030Alg19View())),
        AdultTitle(id: "20",title: "20", content: "«Острый тромбоз артерий и глубоких вен»",  view: AnyView(Prikaz1030Alg20View())),
        AdultTitle(id: "21",title: "21", content: "«Гипертонический криз»",  view: AnyView(Prikaz1030Alg21View())),
        AdultTitle(id: "22",title: "22", content: "«Обморок»",  view: AnyView(Prikaz1030Alg22View())),
        AdultTitle(id: "23",title: "23", content: "«Приступ бронхиальной астмы»",  view: AnyView(Prikaz1030Alg23View())),
        AdultTitle(id: "24",title: "24", content: "«Пневмония»",  view: AnyView(Prikaz1030Alg24View())),
        AdultTitle(id: "25",title: "25", content: "«Стеноз гортани»",  view: AnyView(Prikaz1030Alg25View())),
        AdultTitle(id: "26",title: "26", content: "«Обструкция дыхательных путей инородным телом»",  view: AnyView(Prikaz1030Alg26View())),
        AdultTitle(id: "27",title: "27", content: "«Кома неясного генеза»",  view: AnyView(Prikaz1030Alg27View())),
        AdultTitle(id: "28",title: "28", content: "«Комы при сахарном диабете»",  view: AnyView(Prikaz1030Alg28View())),
        AdultTitle(id: "29",title: "29", content: "«Судорожный синдром»",  view: AnyView(Prikaz1030Alg29View())),
        AdultTitle(id: "30",title: "30", content: "«Острое нарушение мозгового кровообращения»",  view: AnyView(Prikaz1030Alg30View())),
        AdultTitle(id: "31",title: "31", content: "«Гипертермия»",  view: AnyView(Prikaz1030Alg31View())),
        AdultTitle(id: "32",title: "32", content: "«Высокопатогенный грипп»",  view: AnyView(Prikaz1030Alg32View())),
        AdultTitle(id: "33",title: "33", content: "«Менингиальная инфекция»",  view: AnyView(Prikaz1030Alg33View())),
        AdultTitle(id: "34",title: "34", content: "«Острые кишечные инфекции»",  view: AnyView(Prikaz1030Alg34View())),
        AdultTitle(id: "35",title: "35", content: "«Острый инфекционный гепатит»",  view: AnyView(Prikaz1030Alg35View())),
        AdultTitle(id: "36",title: "36", content: "«Почечная колика»",  view: AnyView(Prikaz1030Alg36View())),
        AdultTitle(id: "37",title: "37", content: "«Носовое кровотечение»",  view: AnyView(Prikaz1030Alg37View())),
        AdultTitle(id: "38",title: "38", content: "«Острая хирургическая патология органов брюшной полости»",  view: AnyView(Prikaz1030Alg38View())),
        AdultTitle(id: "39",title: "39", content: "«Черепно-мозговая травма»",  view: AnyView(Prikaz1030Alg39View())),
        AdultTitle(id: "40",title: "40", content: "«Травма позвоночника»",  view: AnyView(Prikaz1030Alg40View())),
        AdultTitle(id: "41",title: "41", content: "«Травмы конечностей»",  view: AnyView(Prikaz1030Alg41View())),
        AdultTitle(id: "42",title: "42", content: "«Травмы груди»",  view: AnyView(Prikaz1030Alg42View())),
        AdultTitle(id: "43",title: "43", content: "«Травмы живота»",  view: AnyView(Prikaz1030Alg43View())),
        AdultTitle(id: "44",title: "44", content: "«Политравма»",  view: AnyView(Prikaz1030Alg44View())),
        AdultTitle(id: "45",title: "45", content: "«Ожоги»",  view: AnyView(Prikaz1030Alg45View())),
        AdultTitle(id: "46",title: "46", content: "«Тепловой удар»",  view: AnyView(Prikaz1030Alg46View())),
        AdultTitle(id: "47",title: "47", content: "«Гипотермия»",  view: AnyView(Prikaz1030Alg47View())),
        AdultTitle(id: "48",title: "48", content: "«Утопление»",  view: AnyView(Prikaz1030Alg48View())),
        AdultTitle(id: "49",title: "49", content: "«Отравление неизвестным ядом»",  view: AnyView(Prikaz1030Alg49View())),
        AdultTitle(id: "50",title: "50", content: "«Аллергическая реакция»",  view: AnyView(Prikaz1030Alg50View())),
        
    ]
    var body: some View {
        
        ScrollView {
            
            VStack {
                VStack{
                    ForEach(zaebalo) { adult in
                        NavigationLink(destination: adult.view) {
                            MyViewBuilder(title: Text(adult.title), content: Text(adult.content)).buildTitleBlueText()
                        }
                    }
                    //
                }
//                VStack {
//                NavigationLink(destination: Prikaz1030Alg1View()) {
//                    MyViewBuilder(title: Text("01"), content: Text("«Порядок оказания скорой (неотложной) медицинской помощи»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg2View()) {
//                    MyViewBuilder(title: Text("02"), content: Text("«Первичный осмотр пациента (ABCD)»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg3View()) {
//                    MyViewBuilder(title: Text("03"), content: Text("«Острая дыхательная недостаточность»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg4View()) {
//                    MyViewBuilder(title: Text("04"), content: Text("«Внезапная смерть, сердечно-легочная реанимация»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg5View()) {
//                    MyViewBuilder(title: Text("05"), content: Text("«Гиповолемический шок»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg6View()) {
//                    MyViewBuilder(title: Text("06"), content: Text("«Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg7View()) {
//                    MyViewBuilder(title: Text("07"), content: Text("«Асистолия»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg8View()) {
//                    MyViewBuilder(title: Text("08"), content: Text("«Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg9View()) {
//                    MyViewBuilder(title: Text("09"), content: Text("«Постреанимационная поддержка»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg10View()) {
//                    MyViewBuilder(title: Text("10"), content: Text("«Пароксизмальная тахикардия с узким комплексом QRS»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg11View()) {
//                    MyViewBuilder(title: Text("11"), content: Text("«Пароксизмальная тахикардия с широким комплексом QRS»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg12View()) {
//                    MyViewBuilder(title: Text("12"), content: Text("«Желудочковая экстрасистолия (злокачественная)»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg13View()) {
//                    MyViewBuilder(title: Text("13"), content: Text("«Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg14View()) {
//                    MyViewBuilder(title: Text("14"), content: Text("«Пароксизмальная мерцательная аритмия»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg15View()) {
//                    MyViewBuilder(title: Text("15"), content: Text("«Острый коронарный синдром»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg16View()) {
//                    MyViewBuilder(title: Text("16"), content: Text("«Кардиогенный шок»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg17View()) {
//                    MyViewBuilder(title: Text("17"), content: Text("«Отек легких»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg18View()) {
//                    MyViewBuilder(title: Text("18"), content: Text("«Тромбоэмболия легочной артерии»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg19View()) {
//                    MyViewBuilder(title: Text("19"), content: Text("«Расслаивающая аневризма аорты»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg20View()) {
//                    MyViewBuilder(title: Text("20"), content: Text("«Острый тромбоз артерий и глубоких вен»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg21View()) {
//                    MyViewBuilder(title: Text("21"), content: Text("«Гипертонический криз»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg22View()) {
//                    MyViewBuilder(title: Text("22"), content: Text("«Обморок»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg23View()) {
//                    MyViewBuilder(title: Text("23"), content: Text("«Приступ бронхиальной астмы»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg24View()) {
//                    MyViewBuilder(title: Text("24"), content: Text("«Пневмония»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg25View()) {
//                    MyViewBuilder(title: Text("25"), content: Text("«Стеноз гортани»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg26View()) {
//                    MyViewBuilder(title: Text("26"), content: Text("«Обструкция дыхательных путей инородным телом»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg27View()) {
//                    MyViewBuilder(title: Text("27"), content: Text("«Кома неясного генеза»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg28View()) {
//                    MyViewBuilder(title: Text("28"), content: Text("«Комы при сахарном диабете»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg29View()) {
//                    MyViewBuilder(title: Text("29"), content: Text("«Судорожный синдром»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg30View()) {
//                    MyViewBuilder(title: Text("30"), content: Text("«Острое нарушение мозгового кровообращения»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg31View()) {
//                    MyViewBuilder(title: Text("31"), content: Text("«Гипертермия»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg32View()) {
//                    MyViewBuilder(title: Text("32"), content: Text("«Высокопатогенный грипп»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg33View()) {
//                    MyViewBuilder(title: Text("33"), content: Text("«Менингиальная инфекция»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg34View()) {
//                    MyViewBuilder(title: Text("34"), content: Text("«Острые кишечные инфекции»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg35View()) {
//                    MyViewBuilder(title: Text("35"), content: Text("«Острый инфекционный гепатит»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg36View()) {
//                    MyViewBuilder(title: Text("36"), content: Text("«Почечная колика»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg37View()) {
//                    MyViewBuilder(title: Text("37"), content: Text("«Носовое кровотечение»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg38View()) {
//                    MyViewBuilder(title: Text("38"), content: Text("«Острая хирургическая патология органов брюшной полости»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg39View()) {
//                    MyViewBuilder(title: Text("39"), content: Text("«Черепно-мозговая травма»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg40View()) {
//                    MyViewBuilder(title: Text("40"), content: Text("«Травма позвоночника»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg41View()) {
//                    MyViewBuilder(title: Text("41"), content: Text("«Травмы конечностей»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg42View()) {
//                    MyViewBuilder(title: Text("42"), content: Text("«Травмы груди»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg43View()) {
//                    MyViewBuilder(title: Text("43"), content: Text("«Травмы живота»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg44View()) {
//                    MyViewBuilder(title: Text("44"), content: Text("«Политравма»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg45View()) {
//                    MyViewBuilder(title: Text("45"), content: Text("«Ожоги»")).buildTitleBlueText()
//                }
//                NavigationLink(destination: Prikaz1030Alg46View()) {
//                    MyViewBuilder(title: Text("46"), content: Text("«Тепловой удар»")).buildTitleBlueText()
//                }
//            }
                Spacer()
                Spacer()
            }
            .navigationBarTitle("Приказ МЗ РБ № 1030", displayMode: .inline)
            .padding(.horizontal, 10)
            .padding(.bottom, 85)
            
        }
        
        //            .padding(.horizontal, 200)
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
    }
}


#Preview {
    Prikaz1030View()
}





