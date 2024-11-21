//
//  Prikaz1030Alg3View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg3View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded = false
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    @State private var isTextExpanded3 = false
    @State private var isTextExpanded4 = false
    @State private var isTextExpanded5 = false
    @State private var isTextExpanded6 = false
    @State private var isTextExpanded7 = false
    @State private var isTextExpanded8 = false
    @State private var isTextExpanded9 = false
    @State private var isTextExpanded10 = false
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    MyViewBuilder(title: Text("""
                                              **Клинические признаки**:
                                              """),
                                  content: Text("""
                                                - **цианоз кожных покровов**;
                                                - частота дыхания **более 40 или менее 8 в 1 мин**;
                                                - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                                                """)).buildGrayInAndHiddenBlock()
                    
                    Image(systemName: "arrow.down")
                        
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("3"), content: Text("**Катетеризация периферической** (при необходимости центральной) **вены. ЭКГ-мониторинг. Оценка АД. Аускультация лёгких.**")).buildGrayInHiddenText()
                            
                            NavigationLink (destination: Prikaz1030Alg77View()) {
                                MyViewBuilder(title: Text("3"), content: Text("Алгоритм 77 «Респираторная поддержка»")).buildNavigationText().padding(5)
                            }
                        }
                    }
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        LazyVStack (spacing: 5){
                            MyViewBuilder(title: Text("3"), content: Text("**При возможности установления причины**:")).buildGrayInText()
                            
                            
                            MyViewBuilder(title: Text("3"), content: Text("Признаки кровотечения")).buildBlue591Text(isTextExpanded: isTextExpanded2)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded2.toggle()
                                    }
                                }
                            
                            if isTextExpanded2 {
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Обструкция дыхательных путей инородным телом")).buildBlue591Text(isTextExpanded: isTextExpanded3)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded3.toggle()
                                        if isTextExpanded2 == true {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded3 {
                                
                                NavigationLink (destination: Prikaz1030Alg26View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 26 «Обструкция дыхательных путей инородным телом»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Политравма")).buildBlue591Text(isTextExpanded: isTextExpanded4)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded4.toggle()
                                        if isTextExpanded3 == true {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded4 {
                                NavigationLink (destination: Prikaz1030Alg44View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 44 «Политравма»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Отравление")).buildBlue591Text(isTextExpanded: isTextExpanded5)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded5.toggle()
                                        if isTextExpanded4 == true {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded5 {
                                NavigationLink (destination: Prikaz1030Alg49View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 49 «Отравление неизвестным ядом»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Напряженный пневмоторакс")).buildBlue591Text(isTextExpanded: isTextExpanded6)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded6.toggle()
                                        if isTextExpanded5 == true {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded6 {
                                VStack (spacing: 1){
                                    MyViewBuilder(title: Text("""
                                                              **Клинические признаки**:
                                                              """),
                                                  content: Text("""
                                                                - **отсутствие дыхательных шумов и движений грудной клетки** на стороне поражения;
                                                                – **внезапное начало**.
                                                                """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(.horizontal, -5)
                                    NavigationLink (destination: Prikaz1030Alg42View()) {
                                        MyViewBuilder(title: Text("3"), content: Text("Алгоритм 42 «Травмы груди»")).buildNavigationText()
                                    }
                                }
                                
                                
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Признаки отека легких")).buildBlue591Text(isTextExpanded: isTextExpanded7)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded7.toggle()
                                        if isTextExpanded6 == true {
                                            isTextExpanded6.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded7 {
                                VStack (spacing: 1) {
                                    MyViewBuilder(title: Text("""
                                                              **Клинические признаки**:
                                                              """),
                                                  content: Text("""
                                                                - **мелко- и средне- пузырчатые хрипы** над лёгкими;
                                                                – вынужденное положение **(ортопное)**;
                                                                – **пенистая мокрота**.
                                                                """)).buildGrayInAndHiddenBlockWithBlueButtons().padding(.horizontal, -5)
                                    NavigationLink (destination: Prikaz1030Alg17View()) {
                                        MyViewBuilder(title: Text("3"), content: Text("Алгоритм 17 «Отек легких»")).buildNavigationText()
                                    }
                                }
                                
                                
                            }
                            
                            
                        }
                        .padding(5.0)
                    }
                    Image(systemName: "arrow.down")
                        
                    
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        LazyVStack (spacing:5){
                            MyViewBuilder(title: Text("3"), content: Text("**Углубленный анализ ЭКГ в 12 отведениях**")).buildGrayInText()
                            
                            
                            MyViewBuilder(title: Text("3"), content: Text("Выраженная аритмия")).buildBlue591Text(isTextExpanded: isTextExpanded9)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded9.toggle()
                                    }
                                }
                            
                            if isTextExpanded9 {
                                MyViewBuilder(title: Text("3"), content: Text("**Лечение аритмий** по соответствующим алгоритмам")).buildGrayInHiddenText().padding(.horizontal, -5)
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Внезапно возникшая перегрузка правых отделов сердца")).buildBlue591Text(isTextExpanded: isTextExpanded10)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded10.toggle()
                                        if isTextExpanded9 == true {
                                            isTextExpanded9.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded10 {
                                NavigationLink (destination: Prikaz1030Alg18View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 18 «Тромбоэмболия легочной артерии»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Признаки ишемии и(или) повреждения миокарда")).buildBlue591Text(isTextExpanded: isTextExpanded11)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded11.toggle()
                                        if isTextExpanded10 == true {
                                            isTextExpanded10.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded11 {
                                NavigationLink (destination: Prikaz1030Alg15View()) {
                                    MyViewBuilder(title: Text("3"), content: Text("Алгоритм 15 «Острый коронарный синдром»")).buildNavigationText()
                                }
                            }
                            MyViewBuilder(title: Text("3"), content: Text("Нормальная ЭКГ")).buildBlue591Text(isTextExpanded: isTextExpanded12)
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded12.toggle()
                                        if isTextExpanded11 == true {
                                            isTextExpanded11.toggle()
                                        }
                                    }
                                }
                            
                            if isTextExpanded12 {
                                MyViewBuilder(title: Text("3"), content: Text("**Перевод пациента на ИВЛ (ВИВЛ) с 50% О2** и **доставка в стационар** с постоянным контролем витальных функций **(минуя приемное отделение, передача в ОИТАР)**")).buildGrayInHiddenText().padding(.horizontal, -5)
                            }
                            
                        }
                        .padding(5.0)
                    }
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
//            //            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 3")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Острая дыхательная недостаточность»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg3"), title: "Алгоритм 3")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg3View()
}


struct Prikaz1030Alg3ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 3. «Острая дыхательная недостаточность»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 3. «Острая дыхательная недостаточность»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 3. «Острая дыхательная недостаточность»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg3View()) {
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
