//
//  Prikaz1030Alg1View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Prikaz1030Alg1View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ScrollView {
            Spacer()
            VStack {
                
                        MyViewBuilder(title: Text("1"), content: Text("**Убедиться в личной безопасности и безопасности пациента**")).buildGrayTextCenter()
                    
                Image(systemName: "arrow.down")
                
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text("1"), content: Text("Осуществить **первичный осмотр пациента** для оценки нарушения витальных функций")).buildGrayInHidden59Text()
                        
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("1"), content: Text("Алгоритм 2 «Первичный осмотр пациента (ABCD)».")).buildNavigationText()
                        }
                        .padding(.horizontal, 5.0)
                        
                        MyViewBuilder(title: Text("1"), content: Text("Обеспечить **проходимость дыхательных путей, иммобилизацию шейного отдела позвоночника**, адекватное дыхание, гемодинамику, остановку профузного кровотечения, пульсоксиметрию (по показаниям).")).buildGrayInHidden59Text()
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    
                
                Image(systemName: "arrow.down")
                MyViewBuilder(title: Text("""
                                          **Неотложная медицинская помощь**
                                          (по экстренным показаниям):
                                          """),
                              content: Text("""
                                            1) обеспечить **венозный доступ и инфузионную терапию** под контролем АД;
                                            2) **ЭКГ-мониторирование** по показаниям;
                                            3) **оксигенотерапия** (под контролем SpO2);
                                            4) **оказание медицинской помощи** в соответствии с выявленной патологией;
                                            5) обеспечить **необходимую иммобилизацию и способ транспортировки** с соответствующим имеющейся патологии положением пациента.
                                            """)).buildGrayInAndHiddenBlock()
                
                Image(systemName: "arrow.down")
                MyViewBuilder(title: Text("""
                                          **Выполнить углубленный осмотр пациента**:
                                          """),
                              content: Text("""
                                            1) оценка **основных витальных функций**, осмотр **«с головы до пят»**;
                                            2) сбор **анамнестических** сведений:
                                            - перенесенные заболевания;
                                            - осложняющие факторы (наличие сопутствующих заболеваний);
                                            - аллергоанамнез;
                                            - принятые лекарственные средства;
                                            - наблюдение врача.
                                            """)).buildGrayInAndHiddenBlock()
                
                Image(systemName: "arrow.down")
                
                MyViewBuilder(title: Text("1"), content: Text("""
                                **Информировать отдел госпитализации** службы СНМП о доставке пациента, находящегося в тяжелом состоянии **(не позже чем за 10 минут до приезда в стационар)**.
                                """)).buildGrayText()
                
                Image(systemName: "arrow.down")
                
                MyViewBuilder(title: Text("1"), content: Text("""
                                **Доставить пациента, находящегося в тяжелом состоянии в ближайший стационар**, передать врачу-реаниматологу, **минуя приемное отделение, не прекращая оказания медицинской помощи**.
                                """)).buildGrayText()
                
                
                Spacer(minLength: 30)
                Divider()
                    .background(Color.divider)
                Spacer(minLength: 15)
                MyViewBuilder(title: Text("**Примечание**."),
                              content: Text("""
                                            **Соблюдать следующие принципы**:
                                            1. Сохранять **спокойное**, внимательное отношение ко всем пациентам без исключения.
                                            2. Соблюдать **установленную форму одежды**, иметь опрятный внешний вид.
                                            3.Использовать при оказании медицинской помощи **принципы рациональной психотерапии** для успокоения больного.
                                            """)).buildGrayInAndHiddenBlock()
                
            }
            .textSelection(.enabled)
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        .background(Color.back)
        
//        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Порядок оказания скорой медицинской помощи»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg1"), title: "Алгоритм 1")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
        
    }
    
}
#Preview {
    Prikaz1030Alg1View()
}


struct Prikaz1030Alg1ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
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
    var isInFavorites: Bool {
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»", isExpanded: false, isNavigationLink: true)
        let success = favoritesManager.addItem(newItem)
        if success {
            // Элемент успешно добавлен
        } else {
            // Элемент уже существует
            alertMessage = "Этот элемент уже добавлен в избранное"
            showAlert = true
        }
    }
    
    func removeFromFavorites() {
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg1View()) {
                HStack {
                    Image(systemName: "doc.text.magnifyingglass")
                        .resizable()
                        .frame(width: 18, height: 24)
                    //                                .padding(.horizontal)
                        .font(.caption2)
                        .padding(.horizontal, 11.0)
                        .padding(.vertical, 8.0)
                        .background(Color.titleNumber)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
                        .foregroundColor(Color.titleNumberForeground)
                    Spacer()
                    Spacer()
                    Text("Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030Приказ 1030")
                        .padding(.horizontal, 3.0)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.right"))
                        .opacity(0.3)
                        .padding(.trailing, 15)
                        .padding(.leading, 10)
                }
                .padding(5.0)
                //        .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 50)
                .modifier(ThemeTitleBlueColorModifier())
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            if shouldShowOverlay {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(isInFavorites ? .favoriteStar : Color.clear)
                                    .rotationEffect(.degrees(isInFavorites ? -360 : 0))
                                    .animation(.snappy, value: isInFavorites)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 3)
                            }
                            Spacer()
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
            }
        }
        .padding(2)
        .contextMenu {
            switch context {
            case .favorites:
                EmptyView()
            case .nonFavorites:
                if isInFavorites {
                    Button(action: {
                        removeFromFavorites()
                    }) {
                        Text("Удалить из избранного")
                        Image(systemName: "star.slash")
                    }
                } else {
                    Button(action: {
                        addToFavorites()
                    }) {
                        Text("Добавить в избранное")
                        Image(systemName: "star.fill")
                    }
                }
            default:
                EmptyView()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertMessage))
        }
        
    }
    
}
