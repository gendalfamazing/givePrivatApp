//
//  SearchAdult.swift
//  8button
//
//  Created by Artur Vladymcev on 15.01.24.
//

import SwiftUI
import Combine

struct Adult: Identifiable {
    let id: String
    let title: String
    let content: String
    let view: AnyView
}

final class AdultManager {
    func getAllAdult() async throws -> [Adult] {
        [
            Adult(id: "1",title: "01", content: "«Порядок оказания скорой (неотложной) медицинской помощи»", view: AnyView(Prikaz1030Alg1View())),
            Adult(id: "2",title: "02", content: "«Первичный осмотр пациента (ABCD)»", view: AnyView(Prikaz1030Alg2View())),
            Adult(id: "3",title: "03", content: "«Острая дыхательная недостаточность»", view: AnyView(Prikaz1030Alg3View())),
            Adult(id: "4",title: "04", content: "«Внезапная смерть, сердечно-легочная реанимация»", view: AnyView(Prikaz1030Alg4View())),
            Adult(id: "5",title: "05", content: "«Гиповолемический шок»",  view: AnyView(Prikaz1030Alg5View())),
            Adult(id: "6",title: "06", content: "«Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»", view: AnyView(Prikaz1030Alg6View())),
            Adult(id: "7",title: "07", content: "«Асистолия»", view: AnyView(Prikaz1030Alg7View())),
            Adult(id: "8",title: "08", content: "«Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»", view: AnyView(Prikaz1030Alg8View())),
            Adult(id: "9",title: "09", content: "«Постреанимационная поддержка»", view: AnyView(Prikaz1030Alg9View())),
            Adult(id: "10",title: "10", content: "«Пароксизмальная тахикардия с узким комплексом QRS»",  view: AnyView(Prikaz1030Alg10View())),
            Adult(id: "11",title: "11", content: "«Пароксизмальная тахикардия с широким комплексом QRS»",  view: AnyView(Prikaz1030Alg11View())),
            Adult(id: "12",title: "12", content: "«Желудочковая экстрасистолия (злокачественная)»",  view: AnyView(Prikaz1030Alg12View())),
            Adult(id: "13",title: "13", content: "«Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»",  view: AnyView(Prikaz1030Alg13View())),
            Adult(id: "14",title: "14", content: "«Пароксизмальная мерцательная аритмия»",  view: AnyView(Prikaz1030Alg14View())),
            Adult(id: "15",title: "15", content: "«Острый коронарный синдром»",  view: AnyView(Prikaz1030Alg15View())),
            Adult(id: "16",title: "16", content: "«Кардиогенный шок»",  view: AnyView(Prikaz1030Alg16View())),
            Adult(id: "17",title: "17", content: "«Отек легких»",  view: AnyView(Prikaz1030Alg17View())),
            Adult(id: "18",title: "18", content: "«Тромбоэмболия легочной артерии»",  view: AnyView(Prikaz1030Alg18View())),
            Adult(id: "19",title: "19", content: "«Расслаивающая аневризма аорты»",  view: AnyView(Prikaz1030Alg19View())),
            Adult(id: "20",title: "20", content: "«Острый тромбоз артерий и глубоких вен»",  view: AnyView(Prikaz1030Alg20View())),
            Adult(id: "21",title: "21", content: "«Гипертонический криз»",  view: AnyView(Prikaz1030Alg21View())),
            Adult(id: "22",title: "22", content: "«Обморок»",  view: AnyView(Prikaz1030Alg22View())),
            Adult(id: "23",title: "23", content: "«Приступ бронхиальной астмы»",  view: AnyView(Prikaz1030Alg23View())),
            Adult(id: "24",title: "24", content: "«Пневмония»",  view: AnyView(Prikaz1030Alg24View())),
            Adult(id: "25",title: "25", content: "«Стеноз гортани»",  view: AnyView(Prikaz1030Alg25View())),
            Adult(id: "26",title: "26", content: "«Обструкция дыхательных путей инородным телом»",  view: AnyView(Prikaz1030Alg26View())),
            Adult(id: "27",title: "27", content: "«Кома неясного генеза»",  view: AnyView(Prikaz1030Alg27View())),
            Adult(id: "28",title: "28", content: "«Комы при сахарном диабете»",  view: AnyView(Prikaz1030Alg28View())),
            Adult(id: "29",title: "29", content: "«Судорожный синдром»",  view: AnyView(Prikaz1030Alg29View())),
            Adult(id: "30",title: "30", content: "«Острое нарушение мозгового кровообращения»",  view: AnyView(Prikaz1030Alg30View())),
            Adult(id: "31",title: "31", content: "«Гипертермия»",  view: AnyView(Prikaz1030Alg31View())),
            Adult(id: "32",title: "32", content: "«Высокопатогенный грипп»",  view: AnyView(Prikaz1030Alg32View())),
            Adult(id: "33",title: "33", content: "«Менингиальная инфекция»",  view: AnyView(Prikaz1030Alg33View())),
            Adult(id: "34",title: "34", content: "«Острые кишечные инфекции»",  view: AnyView(Prikaz1030Alg34View())),
            Adult(id: "35",title: "35", content: "«Острый инфекционный гепатит»",  view: AnyView(Prikaz1030Alg35View())),
            Adult(id: "36",title: "36", content: "«Почечная колика»",  view: AnyView(Prikaz1030Alg36View())),
            Adult(id: "37",title: "37", content: "«Носовое кровотечение»",  view: AnyView(Prikaz1030Alg37View())),
            Adult(id: "38",title: "38", content: "«Острая хирургическая патология органов брюшной полости»",  view: AnyView(Prikaz1030Alg38View())),
            Adult(id: "39",title: "39", content: "«Черепно-мозговая травма»",  view: AnyView(Prikaz1030Alg39View())),
            Adult(id: "40",title: "40", content: "«Травма позвоночника»",  view: AnyView(Prikaz1030Alg40View())),
            Adult(id: "41",title: "41", content: "«Травмы конечностей»",  view: AnyView(Prikaz1030Alg41View())),
            Adult(id: "42",title: "42", content: "«Травмы груди»",  view: AnyView(Prikaz1030Alg42View())),
            Adult(id: "43",title: "43", content: "«Травмы живота»",  view: AnyView(Prikaz1030Alg43View())),
            Adult(id: "44",title: "44", content: "«Политравма»",  view: AnyView(Prikaz1030Alg44View())),
            Adult(id: "45",title: "45", content: "«Ожоги»",  view: AnyView(Prikaz1030Alg45View())),
            Adult(id: "46",title: "46", content: "«Тепловой удар»",  view: AnyView(Prikaz1030Alg46View())),
            Adult(id: "47",title: "47", content: "«Гипотермия»",  view: AnyView(Prikaz1030Alg47View())),
            Adult(id: "48",title: "48", content: "«Утопление»",  view: AnyView(Prikaz1030Alg48View())),
            Adult(id: "49",title: "49", content: "«Отравление неизвестным ядом»",  view: AnyView(Prikaz1030Alg49View())),
            Adult(id: "50",title: "50", content: "«Аллергическая реакция»",  view: AnyView(Prikaz1030Alg50View())),
            Adult(id: "51",title: "51", content: "«Неотложные состояния в акушерстве и гинекологии»",  view: AnyView(Prikaz1030Alg51View())),
            Adult(id: "52",title: "52", content: "«Острый реактивный психоз»",  view: AnyView(Prikaz1030Alg52View())),
            Adult(id: "53",title: "53", content: "«Действия бригады СНМП при ДТП»",  view: AnyView(Prikaz1030Alg53View())),
            Adult(id: "54",title: "54", content: "«Острое психотическое возбуждение»",  view: AnyView(Prikaz1030Alg54View())),
            Adult(id: "55",title: "55", content: "«Суицидальное поведение»",  view: AnyView(Prikaz1030Alg55View())),
            Adult(id: "56",title: "56", content: "«Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»",  view: AnyView(Prikaz1030Alg56View())),
            Adult(id: "57",title: "57", content: "«Мигрень»",  view: AnyView(Prikaz1030Alg57View())),
            Adult(id: "58",title: "58", content: "«Длительное сдавление мягких тканей»",  view: AnyView(Prikaz1030Alg58View())),
            Adult(id: "59",title: "59", content: "«Отморожения»",  view: AnyView(Prikaz1030Alg59View())),
            Adult(id: "60",title: "60", content: "«Поражение электрическим током»",  view: AnyView(Prikaz1030Alg60View())),
            Adult(id: "61",title: "61", content: "«Странгуляционная асфиксия»",  view: AnyView(Prikaz1030Alg61View())),
            Adult(id: "62",title: "62", content: "«Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»",  view: AnyView(Prikaz1030Alg62View())),
            Adult(id: "63",title: "63", content: "«Побочные эффекты и осложнения психофармакотерапии»",  view: AnyView(Prikaz1030Alg63View())),
            Adult(id: "64",title: "64", content: "«Острые желудочно-кишечные кровотечения»",  view: AnyView(Prikaz1030Alg64View())),
            Adult(id: "65",title: "65", content: "«Кровотечение в послеродовом периоде»",  view: AnyView(Prikaz1030Alg65View())),
            Adult(id: "66",title: "66", content: "«Травма половых органов (женщины)»",  view: AnyView(Prikaz1030Alg66View())),
            Adult(id: "67",title: "67", content: "«Роды»",  view: AnyView(Prikaz1030Alg67View())),
            Adult(id: "68",title: "68", content: "«Заглоточный абсцесс»",  view: AnyView(Prikaz1030Alg68View())),
            Adult(id: "69",title: "69", content: "«Кровотечение из глотки»",  view: AnyView(Prikaz1030Alg69View())),
            Adult(id: "70",title: "70", content: "«Перелом костей носа и околоносовых пазух»",  view: AnyView(Prikaz1030Alg70View())),
            Adult(id: "71",title: "71", content: "«Кровотечение из уха»",  view: AnyView(Prikaz1030Alg71View())),
            Adult(id: "72",title: "72", content: "«Ожоги и травмы глаза, века, конъюнктивы»",  view: AnyView(Prikaz1030Alg72View())),
            Adult(id: "73",title: "73", content: "«Заболевания глаза, века»",  view: AnyView(Prikaz1030Alg73View())),
            Adult(id: "74",title: "74", content: "«Инородное тело верхних дыхательных путей, уха»",  view: AnyView(Prikaz1030Alg74View())),
            Adult(id: "75",title: "75", content: "«Алкогольный абстинентный синдром»",  view: AnyView(Prikaz1030Alg75View())),
            Adult(id: "76",title: "76", content: "«Острая задержка мочи»",  view: AnyView(Prikaz1030Alg76View())),
            Adult(id: "77",title: "77", content: "«Респираторная поддержка»",  view: AnyView(Prikaz1030Alg77View())),
            Adult(id: "78",title: "78", content: "«Алкогольная интоксикация»",  view: AnyView(Prikaz1030Alg78View())),
            
        ]
    }
}

@MainActor
final class SearchableViewModelAdult: ObservableObject {
    @Published private(set) var allAdult: [Adult] = []
    @Published private(set) var filteredAdult: [Adult] = []
    @Published var searchText: String = ""
    let manager = AdultManager()
    private var cancellables = Set<AnyCancellable>()
    
    var isSearching: Bool {
        !searchText.isEmpty
    }
    
    init() {
        addSubscribers()
    }
    
    private func addSubscribers() {
        $searchText
            .sink { [weak self] searchText in
                self?.filterAdult(seachText: searchText)
            }
            .store(in: &cancellables)
    }
    
    private func filterAdult(seachText: String){
        guard !seachText.isEmpty else {
            filteredAdult = []
            return
        }
        
        let search = searchText.lowercased()
        filteredAdult = allAdult.filter({ adult in
            let titleContainsSearch = adult.content.lowercased().contains(search)
            return titleContainsSearch
        })
    }
    
    func loadAdult() async {
        do {
            allAdult = try await manager.getAllAdult()
        } catch {
            print(error)
        }
        
    }
}

struct SearchAdult: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject private var viewModel = SearchableViewModelAdult()
    
    var body: some View {
        ZStack {
        ScrollView {
                    if viewModel.isSearching && viewModel.filteredAdult.isEmpty {
                        // Отобразите сообщение о том, что совпадений не найдено, и задайте фон для этого сообщения
                        Text("Совпадений не найдено")
                            .foregroundColor(.secondary)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.back)
                    } else {
                        LazyVStack(spacing: 5) {
                            ForEach(viewModel.isSearching ? viewModel.filteredAdult : viewModel.allAdult) { adult in
                                adultRow(adult: adult)
                                    .padding(.horizontal, 10)
                            }
                        }
                        .padding(.bottom, 65)
                        .background(Color.back)
                        //
                    }
                
            
            
            
                        
        }
        
        .background(Color.back)
        .searchable(text: $viewModel.searchText, placement: .automatic, prompt: Text("Поиск..."))
        .navigationBarTitle("Приказ МЗ РБ № 1030", displayMode: .inline)
        
        .task {
            await viewModel.loadAdult()
        }
    }
    }
    
    private struct HighlightedText: View {
        let text: String
        let highlighted: String
        
        var body: some View {
            Text(attributedString)
        }
        
        private var attributedString: AttributedString {
            var attributedString: AttributedString
            
            // Preserve underscores for highlighting:
            let formattedText = text.replacingOccurrences(of: "\\*|[\\[\\]]", with: "", options: .regularExpression)
            
            do {
                attributedString = try AttributedString(markdown: formattedText)
            } catch {
                attributedString = AttributedString(formattedText)
            }
            
            if
                
                let range = attributedString.range(of: highlighted.lowercased()) {
                attributedString[range].backgroundColor = .yellow
            }
            
            
            
            return attributedString
            
        }
    }
    
    private func adultRow(adult: Adult) -> some View {
        VStack (spacing: 5) {
            NavigationLink(destination: adult.view) {
                HStack {
                    HStack (alignment: .center) {
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.titleNumber)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            Text(adult.title)
//                                .padding(.horizontal)
                                .font(.headline)
                                .foregroundColor(Color.titleNumberForeground)
                                .bold()
                                .lineLimit(1)
                        
                    }
                        Text(adult.content)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 3.0)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        Spacer()
                        Image(systemName: ("chevron.right"))
    //                        .resizable()
    //                        .frame(width: 20, height: 20)
                            .opacity(0.3)
    //                        .multilineTextAlignment(.center)
                            .padding(.trailing, 7)
                    }
                    Spacer()
                }
                .padding(5.0)
        //        .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 50)
                .modifier(ThemeTitleBlueColorModifier())
                .cornerRadius(10)
                .shadow(color: .shadowGrayRectangle, radius: 0.5)
            }
            .background(Color.back)
        }
        .background(Color.back)
    }
}





#Preview {
    NavigationStack {
        SearchAdult()
            .background(Color.back)
    }
}

