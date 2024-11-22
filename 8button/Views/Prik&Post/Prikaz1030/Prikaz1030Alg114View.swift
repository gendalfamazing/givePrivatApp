//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg14View: View {
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
    @State private var isTextExpanded91 = false
    @State private var isTextExpanded92 = false
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("14"), content: Text("""
                    **Мерцательная аритмия – ЭКГ**
                    """)).buildGrayInText()
                        }
                        
                    }
                    MyViewBuilder(title: Text("14"), content: Text("""
                **Постоянная форма и повторный пароксизм длительностью более 48 часов**
                """)).buildBlue591Text(isTextExpanded: isTextExpanded91)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded91.toggle()
                                if isTextExpanded91 == false {
                                    isTextExpanded1 = false
                                    isTextExpanded2 = false
                                }
                                if isTextExpanded92 == true {
                                    isTextExpanded92.toggle()
                                }
                            }
                        }
                    if isTextExpanded91 {
                        Image(systemName: "arrow.down")
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing: 5){
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                            Гемодинамика **стабильная**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded1.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                            }
                                        }
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                            ЧСС **более 120 уд/мин**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                            }
                                        }
                                }
                                
                            }
                            .padding(5)
                        }
                        
                        
                        if isTextExpanded1 {
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **Рекомендовать дообследование** и лечение в поликлинике по месту жительства
                        """)).buildGrayText()
                            
                        }
                        if isTextExpanded2 {
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **1 мл – 0,025% раствора дигоксина в 20 мл 0,9% раствора натрия хлорида в/в струйно**
                        """)).buildGrayText()
                            Image(systemName: "arrow.down")
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                        **Доставка в стационар** по профилю заболевания
                        """)).buildGrayText()
                        }
                    }
                    
                    MyViewBuilder(title: Text("14"), content: Text("""
                **Иной пароксизм**
                """)).buildBlue591Text(isTextExpanded: isTextExpanded92)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded92.toggle()
                                if isTextExpanded91 == true {
                                    isTextExpanded91.toggle()
                                }
                                if isTextExpanded92 == false {
                                    isTextExpanded3 = false
                                    isTextExpanded4 = false
                                    isTextExpanded5 = false
                                    isTextExpanded6 = false
                                    isTextExpanded7 = false
                                    isTextExpanded8 = false
                                    isTextExpanded9 = false
                                    isTextExpanded10 = false
                                    isTextExpanded11 = false
                                    isTextExpanded12 = false
                                }
                            }
                        }
                    if isTextExpanded92 {
                        Image(systemName: "arrow.down")
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("14"), content: Text("""
                            **Гемодинамика стабильная**:
                            """)).buildGrayInText()
                            
                            HStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded11.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded11.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                            if isTextExpanded11 == true {
                                                isTextExpanded11.toggle()
                                            }
                                        }
                                    }
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Впервые выявленный пароксизм**:
                            """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                            **Электроимпульсная терапия дефибриллятором с функцией кардиоверсии** (синхронизация) с предварительной в/в **премедикацией диазепамом 0,5% – 2–4 мл, морфином 1% – 1 мл** (тримеперидин 2%-1 мл) с **оксигенотерапией 100% кислородом**
                            """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                            **Доставка в стационар (ОИТАР, минуя приемное отделение)**
                            """)).buildGrayText()
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                            **Повторный пароксизм**:
                            """)).buildGrayInText()
                                Spacer(minLength: 1)
                                MyViewBuilder(title: Text("14"), content: Text("""
                                    **Длительность более 24 часов**:
                                    """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded11)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded11.toggle()
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                    MyViewBuilder(title: Text("14"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                                
                            }
                        }
                    }
                    if isTextExpanded11 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                        **ЧСС более 120 уд/мин**
                        """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Да**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                        
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("14"), content: Text("""
                        **ЧСС более 120 уд/мин**
                        """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Да**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded8 == true {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("14"), content: Text("""
                        **Нет**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded8)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded8.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Прокаинамид 10 % – 5-10 мл в 0,9% растворе натрия хлорида в/в медленно под контролем АД** (возможно **в одном шприце с 1% раствором фенилэфрина 0,1-0,3-0,5мл**) или в/в **верапамил 2-4 мл 0,25%** раствора **при наличии медицинского документа об эффективности** последнего препарата
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    if isTextExpanded8 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **1 мл – 0,025% раствора дигоксина в 20 мл 0,9% раствора натрия хлорида в/в струйно**
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                        
                        MyViewBuilder(title: Text("14"), content: Text("""
                    **Доставка в стационар** по профилю заболевания
                    """)).buildGrayText()
                    }
                    
                    
                }
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text("""
                                              **Примечание**.
                                              """),
                                  content: Text("""
                                                **Противопоказания к восстановлению синусового ритма на догоспитальном этапе**:.
                                                
                                                - **впервые выявленный пароксизм** мерцательной аритмии;
                                                - **длительность пароксизма** мерцания предсердий **более суток**;
                                                - **доказанная дилатация левого предсердия** (передне-задний размер 4,5 см по данным эхокардиографии);
                                                - **наличие тромбов в предсердиях** и **тромбоэмболические осложнения в анамнезе**;
                                                - **развитие пароксизма на фоне выраженных электролитных нарушений**;
                                                - **декомпенсация тиреотоксикоза**.
                                                """)).buildGrayInAndHiddenBlock()
                    
                }
                .textSelection(.enabled)
                .padding(.horizontal, 10)
                .padding(.bottom, 55)
            }
            //            .padding(.horizontal, 200)
//            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 14")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Пароксизмальная мерцательная аритмия»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg14"), title: "Алгоритм 14")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg14View()
}

struct Prikaz1030Alg14ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 14. «Пароксизмальная мерцательная аритмия»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 14. «Пароксизмальная мерцательная аритмия»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 14. «Пароксизмальная мерцательная аритмия»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg14View()) {
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
