// FavoritesView.swift

import SwiftUI



struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var itemHeights: [UUID: CGFloat] = [:] // Словарь для хранения высот элементов

    var body: some View {
        ScrollView {
            VStack(spacing: 1) {
                if favoritesManager.favorites.isEmpty {
                    Text("Нет элементов в избранном")
                        .foregroundColor(.gray)
                        .bold()
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.back)
                }

                VStack(alignment: .leading, spacing: 1) {
                    ForEach(favoritesManager.favorites) { item in
                        ViewFactory.view(for: item.viewIdentifier)
                            .frame(maxHeight: .infinity)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .environment(\.viewContext, .favorites)
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Избранное")
                            .font(.headline)
                            .foregroundColor(Color.toolBar)
                            .bold()
                        Text("«Часто используемые элементы»")
                            .font(.caption2)
                            .foregroundColor(Color.toolBar)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        removeAllFavorites() // Удаление всех элементов
                    }) {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                    }
                }
            }
        }
        .background(Color.back)
        .onAppear {
            // Очищаем словарь высот, чтобы пересчитать при открытии
            itemHeights.removeAll()
        }
    }

    private func removeAllFavorites() {
        favoritesManager.favorites.removeAll()
    }
}
            
enum ViewContext {
    case favorites
    case nonFavorites
    case other
}
    
struct ViewContextKey: EnvironmentKey {
    static let defaultValue: ViewContext = .other
}

extension EnvironmentValues {
    var viewContext: ViewContext {
        get { self[ViewContextKey.self] }
        set { self[ViewContextKey.self] = newValue }
    }
}


#Preview {
    FavoritesView()
}

class SharedState: ObservableObject {
    @Published var isTextExpanded3 = false
}

struct ViewFactory {
    static func view(for identifier: String) -> AnyView {
        switch identifier {
        case "GENEVA":
            return AnyView(Geneva())
        case "PESI":
            return AnyView(PESI())
        case "Приказы и постановления":
            return AnyView(PrikazyPostanovleniyaFavorites())
        case "МКБ-10":
            return AnyView(CodesMkb10Favorites())
        case "Шкалы и таблицы":
            return AnyView(ScalesTablesFavorites())
        case "Учебные материалы":
            return AnyView(StudMaterialsFavorites())
        case "Калькулятор Допамина":
            return AnyView(InfusionRateCalculatorViewFavorites())
        case "Акушерское пособие":
            return AnyView(AkusherskoePosobieFavorites())
        case "Атлас ЭКГ":
            return AnyView(AtlasECGFavorites())
        case "Поиск детских дозировок":
            return AnyView(FastChildDosesFavorites())
        case "Постановление №118 (детские протоколы)":
            return AnyView(Postanovlenie118ViewFavorites())
        case "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»":
            return AnyView(Prikaz1030Alg1ViewFavorites())
        case "Алгоритм 2. «Первичный осмотр пациента (ABCD)»":
            return AnyView(Prikaz1030Alg2ViewFavorites())
        case "Алгоритм 3. «Острая дыхательная недостаточность»":
            return AnyView(Prikaz1030Alg3ViewFavorites())
        case "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»":
            return AnyView(Prikaz1030Alg4ViewFavorites())
        case "Алгоритм 5. «Гиповолемический шок»":
            return AnyView(Prikaz1030Alg5ViewFavorites())
        case "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»":
            return AnyView(Prikaz1030Alg6ViewFavorites())
        case "Алгоритм 7. «Асистолия»":
            return AnyView(Prikaz1030Alg7ViewFavorites())
        case "Алгоритм 8. «Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»":
            return AnyView(Prikaz1030Alg8ViewFavorites())
        case "Алгоритм 9. «Постреанимационная поддержка»":
            return AnyView(Prikaz1030Alg9ViewFavorites())
        case "Алгоритм 10. «Пароксизмальная тахикардия с узким комплексом QRS»":
            return AnyView(Prikaz1030Alg10ViewFavorites())
        case "Алгоритм 11. «Пароксизмальная тахикардия с широким комплексом QRS»":
            return AnyView(Prikaz1030Alg11ViewFavorites())
        case "Алгоритм 12. «Желудочковая экстрасистолия (злокачественная)»":
            return AnyView(Prikaz1030Alg12ViewFavorites())
        case "Алгоритм 13. «Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»":
            return AnyView(Prikaz1030Alg13ViewFavorites())
        case "Алгоритм 14. «Пароксизмальная мерцательная аритмия»":
            return AnyView(Prikaz1030Alg14ViewFavorites())
        case "Алгоритм 15. «Острый коронарный синдром»":
            return AnyView(Prikaz1030Alg15ViewFavorites())
        case "Алгоритм 16. «Кардиогенный шок»":
            return AnyView(Prikaz1030Alg16ViewFavorites())
        case "Алгоритм 17. «Отек легких»":
            return AnyView(Prikaz1030Alg17ViewFavorites())
        case "Алгоритм 18. «Тромбоэмболия легочной артерии»":
            return AnyView(Prikaz1030Alg18ViewFavorites())
        case "Алгоритм 19. «Расслаивающая аневризма аорты»":
            return AnyView(Prikaz1030Alg19ViewFavorites())
        case "Алгоритм 20. «Острый тромбоз артерий и глубоких вен»":
            return AnyView(Prikaz1030Alg20ViewFavorites())
        case "Алгоритм 21. «Гипертонический криз»":
            return AnyView(Prikaz1030Alg21ViewFavorites())
        case "Алгоритм 22. «Обморок»":
            return AnyView(Prikaz1030Alg22ViewFavorites())
        case "Алгоритм 23. «Приступ бронхиальной астмы»":
            return AnyView(Prikaz1030Alg23ViewFavorites())
        case "Алгоритм 24. «Пневмония»":
            return AnyView(Prikaz1030Alg24ViewFavorites())
        case "Алгоритм 25. «Стеноз гортани»":
            return AnyView(Prikaz1030Alg25ViewFavorites())
        case "Алгоритм 26. «Обструкция дыхательных путей инородным телом»":
            return AnyView(Prikaz1030Alg26ViewFavorites())
        case "Алгоритм 27. «Кома неясного генеза»":
            return AnyView(Prikaz1030Alg27ViewFavorites())
        case "Алгоритм 28. «Комы при сахарном диабете»":
            return AnyView(Prikaz1030Alg28ViewFavorites())
        case "Алгоритм 29. «Судорожный синдром»":
            return AnyView(Prikaz1030Alg29ViewFavorites())
        case "Алгоритм 30. «Острое нарушение мозгового кровообращения»":
            return AnyView(Prikaz1030Alg30ViewFavorites())
        case "Алгоритм 31. «Гипертермия»":
            return AnyView(Prikaz1030Alg31ViewFavorites())
        case "Алгоритм 32. «Высокопатогенный грипп»":
            return AnyView(Prikaz1030Alg32ViewFavorites())
        case "Алгоритм 33. «Менингиальная инфекция»":
            return AnyView(Prikaz1030Alg33ViewFavorites())
        case "Алгоритм 34. «Острые кишечные инфекции»":
            return AnyView(Prikaz1030Alg34ViewFavorites())
        case "Алгоритм 35. «Острый инфекционный гепатит»":
            return AnyView(Prikaz1030Alg35ViewFavorites())
        case "Алгоритм 36. «Почечная колика»":
            return AnyView(Prikaz1030Alg36ViewFavorites())
        case "Алгоритм 37. «Носовое кровотечение»":
            return AnyView(Prikaz1030Alg37ViewFavorites())
        case "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»":
            return AnyView(Prikaz1030Alg38ViewFavorites())
        case "Алгоритм 39. «Черепно-мозговая травма»":
            return AnyView(Prikaz1030Alg39ViewFavorites())
        case "Алгоритм 40. «Травма позвоночника»":
            return AnyView(Prikaz1030Alg40ViewFavorites())
        case "Алгоритм 41. «Травмы конечностей»":
            return AnyView(Prikaz1030Alg41ViewFavorites())
        case "Алгоритм 42. «Травмы груди»":
            return AnyView(Prikaz1030Alg42ViewFavorites())
        case "Алгоритм 43. «Травмы живота»":
            return AnyView(Prikaz1030Alg43ViewFavorites())
        case "Алгоритм 44. «Политравма»":
            return AnyView(Prikaz1030Alg44ViewFavorites())
        case "Алгоритм 45. «Ожоги»":
            return AnyView(Prikaz1030Alg45ViewFavorites())
        case "Алгоритм 46. «Тепловой удар»":
            return AnyView(Prikaz1030Alg46ViewFavorites())
        case "Алгоритм 47. «Гипотермия»":
            return AnyView(Prikaz1030Alg47ViewFavorites())
        case "Алгоритм 48. «Утопление»":
            return AnyView(Prikaz1030Alg48ViewFavorites())
        case "Алгоритм 49. «Отравление неизвестным ядом»":
            return AnyView(Prikaz1030Alg49ViewFavorites())
        case "Алгоритм 50. «Аллергическая реакция»":
            return AnyView(Prikaz1030Alg50ViewFavorites())
        case "Алгоритм 51. «Неотложные состояния в акушерстве и гинекологии»":
            return AnyView(Prikaz1030Alg51ViewFavorites())
        case "Алгоритм 52. «Острый реактивный психоз»":
            return AnyView(Prikaz1030Alg52ViewFavorites())
        case "Алгоритм 53. «Действия бригады СНМП при ДТП»":
            return AnyView(Prikaz1030Alg53ViewFavorites())
        case "Алгоритм 54. «Острое психотическое возбуждение»":
            return AnyView(Prikaz1030Alg54ViewFavorites())
        case "Алгоритм 55. «Суицидальное поведение»":
            return AnyView(Prikaz1030Alg55ViewFavorites())
        case "Алгоритм 56. «Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»":
            return AnyView(Prikaz1030Alg56ViewFavorites())
        case "Алгоритм 57. «Мигрень»":
            return AnyView(Prikaz1030Alg57ViewFavorites())
        case "Алгоритм 58. «Длительное сдавление мягких тканей»":
            return AnyView(Prikaz1030Alg58ViewFavorites())
        case "Алгоритм 59. «Отморожения»":
            return AnyView(Prikaz1030Alg59ViewFavorites())
        case "Алгоритм 60. «Поражение электрическим током»":
            return AnyView(Prikaz1030Alg60ViewFavorites())
        case "Алгоритм 61. «Странгуляционная асфиксия»":
            return AnyView(Prikaz1030Alg61ViewFavorites())
        case "Алгоритм 62. «Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»":
            return AnyView(Prikaz1030Alg62ViewFavorites())
        case "Алгоритм 63. «Побочные эффекты и осложнения психофармакотерапии»":
            return AnyView(Prikaz1030Alg63ViewFavorites())
        case "Алгоритм 64. «Острые желудочно-кишечные кровотечения»":
            return AnyView(Prikaz1030Alg64ViewFavorites())
        case "Алгоритм 65. «Кровотечение в послеродовом периоде»":
            return AnyView(Prikaz1030Alg65ViewFavorites())
        case "Алгоритм 66. «Травма половых органов (женщины)»":
            return AnyView(Prikaz1030Alg66ViewFavorites())
        case "Алгоритм 67. «Роды»":
            return AnyView(Prikaz1030Alg67ViewFavorites())
        case "Алгоритм 68. «Заглоточный абсцесс»":
            return AnyView(Prikaz1030Alg68ViewFavorites())
        case "Алгоритм 69. «Кровотечение из глотки»":
            return AnyView(Prikaz1030Alg69ViewFavorites())
        case "Алгоритм 70. «Перелом костей носа и околоносовых пазух»":
            return AnyView(Prikaz1030Alg70ViewFavorites())
        case "Алгоритм 71. «Кровотечение из уха»":
            return AnyView(Prikaz1030Alg71ViewFavorites())
        case "Алгоритм 72. «Ожоги и травмы глаза, века, конъюнктивы»":
            return AnyView(Prikaz1030Alg72ViewFavorites())
        case "Алгоритм 73. «Заболевания глаза, века»":
            return AnyView(Prikaz1030Alg73ViewFavorites())
        case "Алгоритм 74. «Инородное тело верхних дыхательных путей, уха»":
            return AnyView(Prikaz1030Alg74ViewFavorites())
        case "Алгоритм 75. «Алкогольный абстинентный синдром»":
            return AnyView(Prikaz1030Alg75ViewFavorites())
        case "Алгоритм 76. «Острая задержка мочи»":
            return AnyView(Prikaz1030Alg76ViewFavorites())
        case "Алгоритм 77. «Респираторная поддержка»":
            return AnyView(Prikaz1030Alg77ViewFavorites())
        case "Алгоритм 78. «Алкогольная интоксикация»":
            return AnyView(Prikaz1030Alg78ViewFavorites())
        // Добавьте остальные представления
        default:
            return AnyView(Text("Неизвестное представление"))
        }
    }
}
