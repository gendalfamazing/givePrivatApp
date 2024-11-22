//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg38View: View {
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
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    
    @State private var isTextExpanded71 = true
    @State private var isTextExpanded72 = true
    
    var body: some View {
            ScrollView {
                Spacer()
                VStack {
                    
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            MyViewBuilder(title: Text("38"), content: Text("""
                            **Дифференциальный диагноз**:
                            """)).buildGrayInText()
                                .onTapGesture {
                                    withAnimation (.snappy) {
                                        isTextExpanded71.toggle()
                                    }
                                }
                            if isTextExpanded71{
                                MyViewBuilder(title: Text("38"), content: Text("""
                            - инфаркт миокарда,
                            - пневмония,
                            - кетоацидоз,
                            - неврологические боли,
                            - у женщин учитывать гинекологический анамнез
                            """)).buildGrayInHiddenText()
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded71.toggle()
                                        }
                                    }
                                
                            }
                            Spacer(minLength: 5)
                            HStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Совпадения есть**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Совпадений нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                            if isTextExpanded71 == true {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == false && isTextExpanded2 == false {
                                                isTextExpanded71.toggle()
                                            }
                                            if isTextExpanded1 == true {
                                                isTextExpanded1.toggle()
                                            }
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == true {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded6 == true {
                                                isTextExpanded6.toggle()
                                            }
                                            if isTextExpanded7 == true {
                                                isTextExpanded7.toggle()
                                            }
                                            if isTextExpanded8 == true {
                                                isTextExpanded8.toggle()
                                            }
                                            
                                        }
                                    }
                            }.padding(5).padding(.top, -10)
                            
                        }
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("38"), content: Text("""
                                Неотложная помощь **в соответствии с выявленной патологией** (см. соответствующие алгоритмы)
                                """)).buildGrayText()
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("38"), content: Text("""
                                **Возможные причины боли в животе**:
                                """)).buildGrayInText().padding(-5)
                                VStack {
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Воспалительные заболевания: аппендицит, холецистит, панкреатит, дивертикулит**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Перфорация язвы, перфорация кишеника**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Мезотромбозы, острая кишечная непроходимость**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Разрывы паренхиматозных органов**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("38"), content: Text("""
                                    **Колика почечная, печеночная, кишечная**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false && isTextExpanded6 == false && isTextExpanded7 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                            }
                                        }
                                    
                                }
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Анамнез**:"), content: Text("""
                                - нарастание боли, связь с приемом пищи,
                                - изменение характера боли, постепенное нарастание,
                                - рвота,
                                - понос
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Объективный статус**:"), content: Text("""
                                - повышение температуры тела,
                                - симптомы раздражения брюшины,
                                - специфические симптомы
                                """)).buildGrayInAndHiddenBlock()
                                
                            
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                **Доставка в стационар** по профилю заболевания,
                                **при перитоните – контроль вены**
                                """)).buildGrayInAndHiddenBlock()
                             
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Анамнез**:"), content: Text("""
                                - внезапная боль,
                                - **язвенная болезнь в анамнезе**
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективный статус**:"), content: Text("""
                                 - ↑ЧСС, ↓АД,
                                - дефанс,
                                - исчезновение печеночной тупости,
                                - бледность
                                """)).buildGrayInAndHiddenBlock()
                              
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания, **контроль вены**
                                """)).buildGrayInAndHiddenBlock()
                           
                        
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Анамнез**:"), content: Text("""
                                - диффузная блуждающая боль, эпизоды сильной кратковременной,
                                - эпизоды потери сознания.
                                - в анамнезе **ИБС, ХРБС, МА, АГ**
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Объективный статус**:"), content: Text("""
                                - **исчезновение перистальтики**
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayInAndHiddenBlock()
                             
                        
                    }
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Анамнез**:"), content: Text("""
                                - травма
                                """)).buildGrayInAndHiddenBlock()
                              
                        Image(systemName: "arrow.down")
                       
                                MyViewBuilder(title: Text("**Объективный статус**:"), content: Text("""
                                - ↑ЧСС, ↓АД,
                                - бледность, пот,
                                - симптом **«Ваньки-встаньки»**
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                **Оксигенотерапия, в/в инфузия**.
                                **Доставка в стационар** по профилю заболевания
                                """)).buildGrayInAndHiddenBlock()
                             
                        
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Анамнез**:"), content: Text("""
                                - приступообразная внезапная боль.
                                - в анамнезе **ЖКБ, МКБ, колит**.
                                """)).buildGrayInAndHiddenBlock()
                             
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Объективный статус**:"), content: Text("""
                                - **нет симптомов раздражения брюшины**
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Тактика**:"), content: Text("""
                                **Дротаверин 2-4 мл** в/в.
                                **Доставка в стационар** для исключения острой хирургической патологии.
                                """)).buildGrayInAndHiddenBlock()
                              
                        
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                MyViewBuilder(title: Text("38"), content: Text("""
                        **При тяжелом состоянии, нестабильной гемодинамике** см. алгоритм 5 «Гиповолемический шок»,
                        **симптоматическое лечение**
                        **(при выраженном болевом синдроме обезболивание вплоть до наркотических анальгетиков)**
                        """)).buildGrayInHiddenText().padding(.top, 5)
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("38"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText().padding(5)
                                }
                            }
                            
                        }
                    }
                    
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    
                            MyViewBuilder(title: Text("**Примечание**."), content: Text("""
                                    ЭКГ-диагностика обязательна.
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
                    Text("Алгоритм 38")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Острая хирургическая патология органов брюшной полости»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg38"), title: "Алгоритм 38")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg38View()
}

struct Prikaz1030Alg38ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg38View()) {
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
