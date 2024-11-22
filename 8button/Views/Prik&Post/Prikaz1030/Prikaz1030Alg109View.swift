//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg9View: View {
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
                    
                    ZStack {
                        Text("")
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("9"), content: Text("""
                    **Появилась самостоятельная пульсация на крупных артериях**
                    """)).buildGrayInText()
                            Spacer(minLength: 1)
                            MyViewBuilder(title: Text("9"), content: Text("""
                    **Появилось самостоятельное дыхание**:
                    """)).buildGrayInText()
                            
                            HStack{
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                                MyViewBuilder(title: Text("9"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
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
                                            if isTextExpanded9 == true {
                                                isTextExpanded9.toggle()
                                            }
                                            if isTextExpanded10 == true {
                                                isTextExpanded10.toggle()
                                            }
                                        }
                                    }
                            }.padding(5).padding(.top, -10)//Breath
                            
                        }
                    }
                    
                    if isTextExpanded1 {
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("9"), content: Text("""
                        **Продолжать респираторную поддержку**: **ВИВЛ** с 50% О2 в режиме **нормовентиляции**.
                        """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                   
                                
                                ZStack {
                                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                    VStack {
                                MyViewBuilder(title: Text("9"), content: Text("""
                                **Выраженные нарушения ритма**:
                                """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)//Ruthm
                            }
                        }
                        
                    }
                    
                    if isTextExpanded2 {
                        Image(systemName: "arrow.down")
                           
                       
                                MyViewBuilder(title: Text("9"), content: Text("""
                        **Продолжать респираторную поддержку**: **ИВЛ** с 50% О2 в режиме **нормовентиляции**.
                        """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                   
                                
                                ZStack {
                                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                    VStack {
                                MyViewBuilder(title: Text("9"), content: Text("""
                                **Выраженные нарушения ритма**:
                                """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Да**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                                **Нет**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)//Ruthm
                            }
                        }
                        
                    }
                    if isTextExpanded4 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                        **Лечение аритмий** по соответсвующим алгоритмам
                        """)).buildGrayText()
                    }
                    if isTextExpanded5 {
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("9"), content: Text("""
                        **Систолическое АД выше 90 мм.рт.ст.**:
                        """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded6)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded6.toggle()
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded7)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded7.toggle()
                                                if isTextExpanded6 == true {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)//SAD
                                
                            }
                        }
                        
                        
                    }
                    if isTextExpanded6 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                    **Продолжить в/в инфузионную терапию 0,9% раствором натрия хлорида** со скоростью **10-12 капель в минуту**.
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                      
                                MyViewBuilder(title: Text("9"), content: Text("""
                    **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                   
                                
                                ZStack {
                                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                    VStack {
                                MyViewBuilder(title: Text("9"), content: Text("""
                    **Гипогликемия**:
                    """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)//glucosae
                                
                            }
                        }
                        
                    }
                    if isTextExpanded7 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                    **Продолжить в/в инфузионную терапию допамином (200-400 мг)** в **400 мл 0,9% раствора натрия хлорида**, скорость **контролируется по АД**
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("9"), content: Text("""
                    **Седативная терапия** в/в: **оксибутират натрия 10 мл 20%** раствора; или **диазепам 2 мл 0,5%** раствора; или **фентанил 2 мл 0,005%** раствора; или **морфин 1 мл 1%** раствора.
                    """)).buildGrayText()
                                Image(systemName: "arrow.down")
                                   
                                ZStack {
                                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                                    VStack {
                                MyViewBuilder(title: Text("9"), content: Text("""
                    **Гипогликемия**:
                    """)).buildGrayInText()
                                HStack{
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Да**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded9)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded9.toggle()
                                                if isTextExpanded10 == true {
                                                    isTextExpanded10.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("9"), content: Text("""
                            **Нет**
                            """)).buildGreen1Text(isTextExpanded: isTextExpanded10)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded10.toggle()
                                                if isTextExpanded9 == true {
                                                    isTextExpanded9.toggle()
                                                }
                                            }
                                        }
                                }.padding(5).padding(.top, -10)//glucosae
                                
                            }
                        }
                        
                        
                    }
                    if isTextExpanded9 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                    **Глюкоза 40 мл 40%** раствора в/в струйно
                    """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                    **Доставка в ближайший стационар, имеющий реанимационное отделение**
                    """)).buildGrayText()
                        
                    }
                    if isTextExpanded10 {
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("9"), content: Text("""
                    **Доставка в ближайший стационар, имеющий реанимационное отделение**
                    """)).buildGrayText()
                    }
                    
                    
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
                    Text("Алгоритм 9")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Постреанимационная поддержка»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg9"), title: "Алгоритм 9")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg9View()
}

struct Prikaz1030Alg9ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 9. «Постреанимационная поддержка»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 9. «Постреанимационная поддержка»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 9. «Постреанимационная поддержка»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg9View()) {
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
