//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg17View: View {
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
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing: 1){
                            MyViewBuilder(title: Text("""
                                                      **Клинические признаки**:
                                                      """),
                                          content: Text("""
                                                        - **кожные покровы бледно-синюшные, покрыты потом**;
                                                        - частота дыхания учащена, ортопноэ;
                                                        - тахикардия;
                                                        - кашель с выделением **пенистой мокроты**;
                                                        - **«клокочущее» дыхание**.
                                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                            
                            HStack {
                                MyViewBuilder(title: Text("17"), content: Text("""
                        **ЭКГ-мониторинг**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded.toggle()
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    }
                                
                                MyViewBuilder(title: Text("17"), content: Text("""
                        **Острая дыхательная недостаточность**
                        """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded == true {
                                                isTextExpanded.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                        }
                                    }
                            }.padding(5).padding(.top, -10)
                            
                        }
                    }
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        NavigationLink (destination: Prikaz1030Alg3View()) {
                            MyViewBuilder(title: Text("17"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                        }
                    }
                    if isTextExpanded {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("17"), content: Text("""
                        **Обязательно установить катетер** в периферическую и (или) центральную вену (при необходимости).
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("17"), content: Text("""
                        **Оказание неотложной медицинской помощи в зависимости от уровня артериального давления (АД)**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("17"), content: Text("""
                        **САД менее 90 мм.рт.ст.**:
                        """)).buildGrayInText()
                                HStack {
                                    MyViewBuilder(title: Text("17"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("17"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                }.padding(5).padding(.top, -10)
                            }
                        }
                        if isTextExpanded2{
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("17"), content: Text("""
                            **Усадить больного с опущенными ногами**.
                            
                            **Обеспечить оксигенотерапию 100% кислородом с 70% раствором этилового спирта**.
                            
                            Дать больному **нитроглицерин по 1 таблетке (0,5 мг) под язык каждые 7-10 минут**.
                            
                            Ввести **1мл 1% раствора морфина в/в медленно дробно в 10-20 мл 0,9% раствора натрия хлорида** в зависимости от возраста.
                            
                            Наладить **в/в капельное введение 3 мл 1% раствора нитроглицерина** (3 мл 1% раствора глицерила тринитрата, 3 мл 1% раствора изосорбита динитрата) в **200 мл 0,9% раствора натрия хлорида очень медленно со скоростью 15-20 капель в минуту** по контролем АД, при повышенных цифрах АД – **до достижения эффекта**;
                            
                            Ввести раствор **фуросемида в/в струйно 40 мг или 80мг при повышенном АД**.
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("17"), content: Text("""
                            **Доставка в стационар по профилю основного заболевания** (в ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
                        }
                        if isTextExpanded3{
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("17"), content: Text("""
                            **Уложить больного, приподняв изголовье**.
                            
                            **Обеспечить оксигенотерапию 100% кислородом с 70% раствором этилового спирта**.
                            
                            Ввести **5 мл 4% раствора допамина в 200 мл 0,9% раствора натрия хлорида** или **5% раствора глюкозы в/в капельно**.
                            
                            **Морфин, нитраты и фуросемид использовать при САД 90 мм.рт.ст. и более.**
                            """)).buildGrayText()
                            Image(systemName: "arrow.down")
                               
                            MyViewBuilder(title: Text("17"), content: Text("""
                            **Доставка в стационар по профилю основного заболевания** (в ОИТАР, минуя приемное отделение)
                            """)).buildGrayText()
                        }
                    }
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text("""
                                              **Примечание**
                                              """),
                                  content: Text("""
                                                **Не применять**:
                                                - сердечные гликозиды (за исключением тахиформы мерцательной аритмии);
                                                - глюкокортикоиды.
                                                
                                                **Осторожно нитраты при аортальном стенозе, кардиомиопатии, инфаркте правого желудочка**.
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
                    Text("Алгоритм 17")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Отек легких»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg17"), title: "Алгоритм 17")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg17View()
}

struct Prikaz1030Alg17ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 17. «Отек легких»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 17. «Отек легких»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 17. «Отек легких»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg17View()) {
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
