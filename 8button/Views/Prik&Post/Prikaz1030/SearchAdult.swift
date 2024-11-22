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
    let viewIdentifier: String
}

@MainActor
final class AdultManager {
    func getAllAdult() async throws -> [Adult] {
        [
            Adult(id: "1",title: "01", content: "«Порядок оказания скорой (неотложной) медицинской помощи»", view: AnyView(Prikaz1030Alg1View()), viewIdentifier: "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»"),
            Adult(id: "2",title: "02", content: "«Первичный осмотр пациента (ABCD)»", view: AnyView(Prikaz1030Alg2View()), viewIdentifier: "Алгоритм 2. «Первичный осмотр пациента (ABCD)»"),
            Adult(id: "3",title: "03", content: "«Острая дыхательная недостаточность»", view: AnyView(Prikaz1030Alg3View()), viewIdentifier: "Алгоритм 3. «Острая дыхательная недостаточность»"),
            Adult(id: "4",title: "04", content: "«Внезапная смерть, сердечно-легочная реанимация»", view: AnyView(Prikaz1030Alg4View()), viewIdentifier: "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»"),
            Adult(id: "5",title: "05", content: "«Гиповолемический шок»",  view: AnyView(Prikaz1030Alg5View()), viewIdentifier: "Алгоритм 5. «Гиповолемический шок»"),
            Adult(id: "6",title: "06", content: "«Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»", view: AnyView(Prikaz1030Alg6View()), viewIdentifier: "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»"),
            Adult(id: "7",title: "07", content: "«Асистолия»", view: AnyView(Prikaz1030Alg7View()), viewIdentifier: "Алгоритм 7. «Асистолия»"),
            Adult(id: "8",title: "08", content: "«Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»", view: AnyView(Prikaz1030Alg8View()), viewIdentifier: "Алгоритм 8. «Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»"),
            Adult(id: "9",title: "09", content: "«Постреанимационная поддержка»", view: AnyView(Prikaz1030Alg9View()), viewIdentifier: "Алгоритм 9. «Постреанимационная поддержка»"),
            Adult(id: "10",title: "10", content: "«Пароксизмальная тахикардия с узким комплексом QRS»",  view: AnyView(Prikaz1030Alg10View()), viewIdentifier: "Алгоритм 10. «Пароксизмальная тахикардия с узким комплексом QRS»"),
            Adult(id: "11",title: "11", content: "«Пароксизмальная тахикардия с широким комплексом QRS»",  view: AnyView(Prikaz1030Alg11View()), viewIdentifier: "Алгоритм 11. «Пароксизмальная тахикардия с широким комплексом QRS»"),
            Adult(id: "12",title: "12", content: "«Желудочковая экстрасистолия (злокачественная)»",  view: AnyView(Prikaz1030Alg12View()), viewIdentifier: "Алгоритм 12. «Желудочковая экстрасистолия (злокачественная)»"),
            Adult(id: "13",title: "13", content: "«Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»",  view: AnyView(Prikaz1030Alg13View()), viewIdentifier: "Алгоритм 13. «Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»"),
            Adult(id: "14",title: "14", content: "«Пароксизмальная мерцательная аритмия»",  view: AnyView(Prikaz1030Alg14View()), viewIdentifier: "Алгоритм 14. «Пароксизмальная мерцательная аритмия»"),
            Adult(id: "15",title: "15", content: "«Острый коронарный синдром»",  view: AnyView(Prikaz1030Alg15View()), viewIdentifier: "Алгоритм 15. «Острый коронарный синдром»"),
            Adult(id: "16",title: "16", content: "«Кардиогенный шок»",  view: AnyView(Prikaz1030Alg16View()), viewIdentifier: "Алгоритм 16. «Кардиогенный шок»"),
            Adult(id: "17",title: "17", content: "«Отек легких»",  view: AnyView(Prikaz1030Alg17View()), viewIdentifier: "Алгоритм 17. «Отек легких»"),
            Adult(id: "18",title: "18", content: "«Тромбоэмболия легочной артерии»",  view: AnyView(Prikaz1030Alg18View()), viewIdentifier: "Алгоритм 18. «Тромбоэмболия легочной артерии»"),
            Adult(id: "19",title: "19", content: "«Расслаивающая аневризма аорты»",  view: AnyView(Prikaz1030Alg19View()), viewIdentifier: "Алгоритм 19. «Расслаивающая аневризма аорты»"),
            Adult(id: "20",title: "20", content: "«Острый тромбоз артерий и глубоких вен»",  view: AnyView(Prikaz1030Alg20View()), viewIdentifier: "Алгоритм 20. «Острый тромбоз артерий и глубоких вен»"),
            Adult(id: "21",title: "21", content: "«Гипертонический криз»",  view: AnyView(Prikaz1030Alg21View()), viewIdentifier: "Алгоритм 21. «Гипертонический криз»"),
            Adult(id: "22",title: "22", content: "«Обморок»",  view: AnyView(Prikaz1030Alg22View()), viewIdentifier: "Алгоритм 22. «Обморок»"),
            Adult(id: "23",title: "23", content: "«Приступ бронхиальной астмы»",  view: AnyView(Prikaz1030Alg23View()), viewIdentifier: "Алгоритм 23. «Приступ бронхиальной астмы»"),
            Adult(id: "24",title: "24", content: "«Пневмония»",  view: AnyView(Prikaz1030Alg24View()), viewIdentifier: "Алгоритм 24. «Пневмония»"),
            Adult(id: "25",title: "25", content: "«Стеноз гортани»",  view: AnyView(Prikaz1030Alg25View()), viewIdentifier: "Алгоритм 25. «Стеноз гортани»"),
            Adult(id: "26",title: "26", content: "«Обструкция дыхательных путей инородным телом»",  view: AnyView(Prikaz1030Alg26View()), viewIdentifier: "Алгоритм 26. «Обструкция дыхательных путей инородным телом»"),
            Adult(id: "27",title: "27", content: "«Кома неясного генеза»",  view: AnyView(Prikaz1030Alg27View()), viewIdentifier: "Алгоритм 27. «Кома неясного генеза»"),
            Adult(id: "28",title: "28", content: "«Комы при сахарном диабете»",  view: AnyView(Prikaz1030Alg28View()), viewIdentifier: "Алгоритм 28. «Комы при сахарном диабете»"),
            Adult(id: "29",title: "29", content: "«Судорожный синдром»",  view: AnyView(Prikaz1030Alg29View()), viewIdentifier: "Алгоритм 29. «Судорожный синдром»"),
            Adult(id: "30",title: "30", content: "«Острое нарушение мозгового кровообращения»",  view: AnyView(Prikaz1030Alg30View()), viewIdentifier: "Алгоритм 30. «Острое нарушение мозгового кровообращения»"),
            Adult(id: "31",title: "31", content: "«Гипертермия»",  view: AnyView(Prikaz1030Alg31View()), viewIdentifier: "Алгоритм 31. «Гипертермия»"),
            Adult(id: "32",title: "32", content: "«Высокопатогенный грипп»",  view: AnyView(Prikaz1030Alg32View()), viewIdentifier: "Алгоритм 32. «Высокопатогенный грипп»"),
            Adult(id: "33",title: "33", content: "«Менингиальная инфекция»",  view: AnyView(Prikaz1030Alg33View()), viewIdentifier: "Алгоритм 33. «Менингиальная инфекция»"),
            Adult(id: "34",title: "34", content: "«Острые кишечные инфекции»",  view: AnyView(Prikaz1030Alg34View()), viewIdentifier: "Алгоритм 34. «Острые кишечные инфекции»"),
            Adult(id: "35",title: "35", content: "«Острый инфекционный гепатит»",  view: AnyView(Prikaz1030Alg35View()), viewIdentifier: "Алгоритм 35. «Острый инфекционный гепатит»"),
            Adult(id: "36",title: "36", content: "«Почечная колика»",  view: AnyView(Prikaz1030Alg36View()), viewIdentifier: "Алгоритм 36. «Почечная колика»"),
            Adult(id: "37",title: "37", content: "«Носовое кровотечение»",  view: AnyView(Prikaz1030Alg37View()), viewIdentifier: "Алгоритм 37. «Носовое кровотечение»"),
            Adult(id: "38",title: "38", content: "«Острая хирургическая патология органов брюшной полости»",  view: AnyView(Prikaz1030Alg38View()), viewIdentifier: "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»"),
            Adult(id: "39",title: "39", content: "«Черепно-мозговая травма»",  view: AnyView(Prikaz1030Alg39View()), viewIdentifier: "Алгоритм 39. «Черепно-мозговая травма»"),
            Adult(id: "40",title: "40", content: "«Травма позвоночника»",  view: AnyView(Prikaz1030Alg40View()), viewIdentifier: "Алгоритм 40. «Травма позвоночника»"),
            Adult(id: "41",title: "41", content: "«Травмы конечностей»",  view: AnyView(Prikaz1030Alg41View()), viewIdentifier: "Алгоритм 41. «Травмы конечностей»"),
            Adult(id: "42",title: "42", content: "«Травмы груди»",  view: AnyView(Prikaz1030Alg42View()), viewIdentifier: "Алгоритм 42. «Травмы груди»"),
            Adult(id: "43",title: "43", content: "«Травмы живота»",  view: AnyView(Prikaz1030Alg43View()), viewIdentifier: "Алгоритм 43. «Травмы живота»"),
            Adult(id: "44",title: "44", content: "«Политравма»",  view: AnyView(Prikaz1030Alg44View()), viewIdentifier: "Алгоритм 44. «Политравма»"),
            Adult(id: "45",title: "45", content: "«Ожоги»",  view: AnyView(Prikaz1030Alg45View()), viewIdentifier: "Алгоритм 45. «Ожоги»"),
            Adult(id: "46",title: "46", content: "«Тепловой удар»",  view: AnyView(Prikaz1030Alg46View()), viewIdentifier: "Алгоритм 46. «Тепловой удар»"),
            Adult(id: "47",title: "47", content: "«Гипотермия»",  view: AnyView(Prikaz1030Alg47View()), viewIdentifier: "Алгоритм 47. «Гипотермия»"),
            Adult(id: "48",title: "48", content: "«Утопление»",  view: AnyView(Prikaz1030Alg48View()), viewIdentifier: "Алгоритм 48. «Утопление»"),
            Adult(id: "49",title: "49", content: "«Отравление неизвестным ядом»",  view: AnyView(Prikaz1030Alg49View()), viewIdentifier: "Алгоритм 49. «Отравление неизвестным ядом»"),
            Adult(id: "50",title: "50", content: "«Аллергическая реакция»",  view: AnyView(Prikaz1030Alg50View()), viewIdentifier: "Алгоритм 50. «Аллергическая реакция»"),
            Adult(id: "51",title: "51", content: "«Неотложные состояния в акушерстве и гинекологии»",  view: AnyView(Prikaz1030Alg51View()), viewIdentifier: "Алгоритм 51. «Неотложные состояния в акушерстве и гинекологии»"),
            Adult(id: "52",title: "52", content: "«Острый реактивный психоз»",  view: AnyView(Prikaz1030Alg52View()), viewIdentifier: "Алгоритм 52. «Острый реактивный психоз»"),
            Adult(id: "53",title: "53", content: "«Действия бригады СНМП при ДТП»",  view: AnyView(Prikaz1030Alg53View()), viewIdentifier: "Алгоритм 53. «Действия бригады СНМП при ДТП»"),
            Adult(id: "54",title: "54", content: "«Острое психотическое возбуждение»",  view: AnyView(Prikaz1030Alg54View()), viewIdentifier: "Алгоритм 54. «Острое психотическое возбуждение»"),
            Adult(id: "55",title: "55", content: "«Суицидальное поведение»",  view: AnyView(Prikaz1030Alg55View()), viewIdentifier: "Алгоритм 55. «Суицидальное поведение»"),
            Adult(id: "56",title: "56", content: "«Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»",  view: AnyView(Prikaz1030Alg56View()), viewIdentifier: "Алгоритм 56. «Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»"),
            Adult(id: "57",title: "57", content: "«Мигрень»",  view: AnyView(Prikaz1030Alg57View()), viewIdentifier: "Алгоритм 57. «Мигрень»"),
            Adult(id: "58",title: "58", content: "«Длительное сдавление мягких тканей»",  view: AnyView(Prikaz1030Alg58View()), viewIdentifier: "Алгоритм 58. «Длительное сдавление мягких тканей»"),
            Adult(id: "59",title: "59", content: "«Отморожения»",  view: AnyView(Prikaz1030Alg59View()), viewIdentifier: "Алгоритм 59. «Отморожения»"),
            Adult(id: "60",title: "60", content: "«Поражение электрическим током»",  view: AnyView(Prikaz1030Alg60View()), viewIdentifier: "Алгоритм 60. «Поражение электрическим током»"),
            Adult(id: "61",title: "61", content: "«Странгуляционная асфиксия»",  view: AnyView(Prikaz1030Alg61View()), viewIdentifier: "Алгоритм 61. «Странгуляционная асфиксия»"),
            Adult(id: "62",title: "62", content: "«Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»",  view: AnyView(Prikaz1030Alg62View()), viewIdentifier: "Алгоритм 62. «Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»"),
            Adult(id: "63",title: "63", content: "«Побочные эффекты и осложнения психофармакотерапии»",  view: AnyView(Prikaz1030Alg63View()), viewIdentifier: "Алгоритм 63. «Побочные эффекты и осложнения психофармакотерапии»"),
            Adult(id: "64",title: "64", content: "«Острые желудочно-кишечные кровотечения»",  view: AnyView(Prikaz1030Alg64View()), viewIdentifier: "Алгоритм 64. «Острые желудочно-кишечные кровотечения»"),
            Adult(id: "65",title: "65", content: "«Кровотечение в послеродовом периоде»",  view: AnyView(Prikaz1030Alg65View()), viewIdentifier: "Алгоритм 65. «Кровотечение в послеродовом периоде»"),
            Adult(id: "66",title: "66", content: "«Травма половых органов (женщины)»",  view: AnyView(Prikaz1030Alg66View()), viewIdentifier: "Алгоритм 66. «Травма половых органов (женщины)»"),
            Adult(id: "67",title: "67", content: "«Роды»",  view: AnyView(Prikaz1030Alg67View()), viewIdentifier: "Алгоритм 67. «Роды»"),
            Adult(id: "68",title: "68", content: "«Заглоточный абсцесс»",  view: AnyView(Prikaz1030Alg68View()), viewIdentifier: "Алгоритм 68. «Заглоточный абсцесс»"),
            Adult(id: "69",title: "69", content: "«Кровотечение из глотки»",  view: AnyView(Prikaz1030Alg69View()), viewIdentifier: "Алгоритм 69. «Кровотечение из глотки»"),
            Adult(id: "70",title: "70", content: "«Перелом костей носа и околоносовых пазух»",  view: AnyView(Prikaz1030Alg70View()), viewIdentifier: "Алгоритм 70. «Перелом костей носа и околоносовых пазух»"),
            Adult(id: "71",title: "71", content: "«Кровотечение из уха»",  view: AnyView(Prikaz1030Alg71View()), viewIdentifier: "Алгоритм 71. «Кровотечение из уха»"),
            Adult(id: "72",title: "72", content: "«Ожоги и травмы глаза, века, конъюнктивы»",  view: AnyView(Prikaz1030Alg72View()), viewIdentifier: "Алгоритм 72. «Ожоги и травмы глаза, века, конъюнктивы»"),
            Adult(id: "73",title: "73", content: "«Заболевания глаза, века»",  view: AnyView(Prikaz1030Alg73View()), viewIdentifier: "Алгоритм 73. «Заболевания глаза, века»"),
            Adult(id: "74",title: "74", content: "«Инородное тело верхних дыхательных путей, уха»",  view: AnyView(Prikaz1030Alg74View()), viewIdentifier: "Алгоритм 74. «Инородное тело верхних дыхательных путей, уха»"),
            Adult(id: "75",title: "75", content: "«Алкогольный абстинентный синдром»",  view: AnyView(Prikaz1030Alg75View()), viewIdentifier: "Алгоритм 75. «Алкогольный абстинентный синдром»"),
            Adult(id: "76",title: "76", content: "«Острая задержка мочи»",  view: AnyView(Prikaz1030Alg76View()), viewIdentifier: "Алгоритм 76. «Острая задержка мочи»"),
            Adult(id: "77",title: "77", content: "«Респираторная поддержка»",  view: AnyView(Prikaz1030Alg77View()), viewIdentifier: "Алгоритм 77. «Респираторная поддержка»"),
            Adult(id: "78",title: "78", content: "«Алкогольная интоксикация»",  view: AnyView(Prikaz1030Alg78View()), viewIdentifier: "Алгоритм 78. «Алкогольная интоксикация»"),

            
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
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    
    var isSearching: Bool {
        !searchText.isEmpty
    }

    init() {
        addSubscribers()
        Task {
            await loadDataIfNeeded()
        }
    }

    private func addSubscribers() {
        $searchText
            .sink { [weak self] searchText in
                self?.filterAdult(seachText: searchText)
            }
            .store(in: &cancellables)
    }

    private func filterAdult(seachText: String) {
        guard !seachText.isEmpty else {
            filteredAdult = []
            return
        }

        let search = searchText.lowercased()
        filteredAdult = allAdult.filter { adult in
            adult.content.lowercased().contains(search)
        }
    }

    @MainActor
    func loadAdult() async {
        do {
            allAdult = try await manager.getAllAdult()
        } catch {
            print(error)
        }
    }

    @MainActor
    private func loadDataIfNeeded() async {
        if allAdult.isEmpty {
            await loadAdult()
        }
    }
    var shouldShowOverlay: Bool {
            switch context {
            case .favorites:
                // В избранном не показываем оверлей
                return false
            case .nonFavorites, .other:
                // В других контекстах показываем оверлей
                return true
            }
        }
    func addToFavorites(adult: Adult) {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: adult.viewIdentifier, isExpanded: false, isNavigationLink: true)
        _ = FavoritesManager.shared.addItem(newItem) // Добавляем элемент в избранное
    }

    func removeFromFavorites(adult: Adult) {
        if let item = FavoritesManager.shared.favorites.first(where: { $0.viewIdentifier == adult.viewIdentifier }) {
            FavoritesManager.shared.removeItem(item) // Удаляем элемент из избранного
        }
    }
    func isInFavorites(adult: Adult) -> Bool {
        return FavoritesManager.shared.favorites.contains { $0.viewIdentifier == adult.viewIdentifier }
    }
    
}

struct SearchAdult: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @ObservedObject var viewModel: SearchableViewModelAdult

    init(viewModel: SearchableViewModelAdult? = nil) {
        _viewModel = ObservedObject(wrappedValue: viewModel ?? SearchableViewModelAdult())
    }

    var body: some View {
        ZStack {
            ScrollView {
                if viewModel.isSearching && viewModel.filteredAdult.isEmpty {
                    noResultsView
                } else {
                    adultListView
                }
            }
            .background(Color.back)
            .searchable(text: $viewModel.searchText, placement: .automatic, prompt: Text("Поиск..."))
            .navigationBarTitle("", displayMode: .inline)
            .toolbar { toolbarContent }
        }
    }

    /// Отображение, если совпадений нет
    private var noResultsView: some View {
        Text("Совпадений не найдено")
            .foregroundColor(.secondary)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.back)
    }

    /// Список элементов
    private var adultListView: some View {
        VStack(spacing: 1) {
            ForEach(viewModel.isSearching ? viewModel.filteredAdult : viewModel.allAdult) { adult in
                adultRow(for: adult)
                    .padding(.horizontal, 8)
            }
        }
        .padding(.bottom, 55)
        .background(Color.back)
    }

    /// Верхняя панель инструментов
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            VStack {
                Text("Приказ МЗ РБ № 1030")
                    .font(.headline)
                    .foregroundStyle(Color.toolBar)
                    .bold()
                Text("«Взрослые протоколы»")
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
            }
        }
    }

    /// Отображение элемента с контекстным меню
    private func adultRow(for adult: Adult) -> some View {
        VStack(spacing: 1) {
            HStack {
                NavigationLink(destination: adult.view) {
                    rowContent(for: adult)
                }
            }
            .padding(5.0)
            .modifier(ThemeTitleBlueColorModifier())
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowFavorites, lineWidth: 1)
            )
            .background(Color.back)
            .cornerRadius(10)
            .padding(2)
            .contextMenu {
                contextMenuContent(for: adult)
            }
        }
        .background(Color.back)
    }

    /// Содержимое строки
    private func rowContent(for adult: Adult) -> some View {
        HStack {
            ZStack {
                Rectangle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowFavorites, lineWidth: 0.5)
                    )
                Text(adult.title)
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
            Image(systemName: ("chevron.right"))
                .opacity(0.3)
                .padding(.trailing, 15)
                .padding(.leading, 10)
        }
        .overlay(
            HStack {
                Spacer()
                VStack {
                    if viewModel.shouldShowOverlay {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(viewModel.isInFavorites(adult: adult) ? .favoriteStar : Color.clear)
                            .rotationEffect(.degrees(viewModel.isInFavorites(adult: adult) ? -360 : 0))
                            .animation(.snappy, value: viewModel.isInFavorites(adult: adult))
                            .padding(.vertical, -2)
                            .padding(.horizontal, -2)
                    }
                    Spacer()
                }
            }
        )
    }

    /// Кнопка управления избранным
    

    /// Контекстное меню
    private func contextMenuContent(for adult: Adult) -> some View {
        Group {
            if context == .favorites || viewModel.isInFavorites(adult: adult) {
                Button(action: {
                    viewModel.removeFromFavorites(adult: adult)
                }) {
                    Text("Удалить из избранного")
                    Image(systemName: "star.slash")
                }
            } else {
                Button(action: {
                    viewModel.addToFavorites(adult: adult)
                }) {
                    Text("Добавить в избранное")
                    Image(systemName: "star.fill")
                }
            }
        }
    }
}





#Preview {
    NavigationStack {
        SearchAdult(viewModel: SearchableViewModelAdult())
            .background(Color.back)
    }
}

