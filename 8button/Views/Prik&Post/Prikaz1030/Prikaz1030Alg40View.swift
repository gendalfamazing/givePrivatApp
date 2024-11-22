//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg40View: View {
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
                        VStack {
                            MyViewBuilder(title: Text("40"), content: Text("""
                            **Изучение механизма травмы. Обследование позвоночника**.
                            """)).buildGrayInText().padding(-5)
                            HStack {
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Признаки ОДН**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded1.toggle()
                                            
                                            if isTextExpanded2 == true {
                                                isTextExpanded2.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Признаки ГШ**
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
                            
                            if isTextExpanded1{
                                VStack (spacing:1) {
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                        - частота дыхания более 40 или менее 8 в 1 мин;
                                        - **SpО2 менее 90%** при дыхании атмосферным воздухом.
                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg3View()) {
                                    MyViewBuilder(title: Text("40"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность»")).buildNavigationText()
                                }
                            }
                                
                            }
                            if isTextExpanded2{
                                
                                VStack (spacing:1) {
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                        - холодная, бледная, влажная кожа;
                                        - **САД менее 90 мм.рт.ст.**,
                                        - **ЧСС более 100** в 1 мин.,
                                        - шоковый индекс **более 0,7**,
                                        - **SpО2 менее 90%**.
                                        """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("40"), content: Text("Алгоритм 5 «Гиповолемический шок»")).buildNavigationText()
                                }
                            }
                            }
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            MyViewBuilder(title: Text("40"), content: Text("""
                            **Переломы, вывихи**:
                            """)).buildGrayInText()
                            HStack {
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Грудной и поясничный отделы**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                            
                                            if isTextExpanded4 == true {
                                                isTextExpanded4.toggle()
                                            }
                                            if isTextExpanded5 == false {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false{
                                                isTextExpanded5.toggle()
                                            }
                                            
                                        }
                                    }
                                MyViewBuilder(title: Text("40"), content: Text("""
                                **Шейный отдел**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                            
                                            if isTextExpanded3 == true {
                                                isTextExpanded3.toggle()
                                            }
                                            if isTextExpanded5 == false {
                                                isTextExpanded5.toggle()
                                            }
                                            if isTextExpanded3 == false && isTextExpanded4 == false{
                                                isTextExpanded5.toggle()
                                            }
                                        }
                                    }
                                
                            }.padding(5).padding(.top, -10)
                        }
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - **боль в спине** (не всегда), которая может сопровождаться отеком и кровоизлиянием;
                                - **деформация** (особенно при взрывных переломах);
                                - возможно **выпячивание остистого отростка** (видимое на глаз или на ощупь);
                                - **признаки поперечного паралича** (обездвиженность, потеря чувствительности, отсутствие защитных реакций даже при воздействии очень сильных болевых раздражителей, в некоторых случаях нарушение сознания, непроизвольное мочеиспускание, дефекация, снижение артериального давления);
                                - **при повреждении позвоночника**:
                                    - **ниже Th4** – чувствительность выше сосков сохранена;
                                    - **ниже Th10** – чувствительность выше пупка сохранена;
                                    - **выше L2** – невозможность движения в бедренном суставе;
                                    - **выше L5** – невозможность приподнять стопу.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded4{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические признаки**:"), content: Text("""
                                - **боль в шее или появление мышечных спазмов**;
                                - **признаки поперечного паралича** (обездвиженность, потеря чувствительности, отсутствие защитных реакций даже при воздействии очень сильных болевых раздражителей, в некоторых случаях нарушение сознания, непроизвольное мочеиспускание, дефекация, снижение артериального давления);
                                - **при повреждении позвоночника**:
                                    - **С3/С4** – отсутствует диафрагмальное дыхание;
                                    - **выше С5** – невозможность поднять плечи;
                                    - **выше С6** – невозможность движения в локтях;
                                    - **выше С8/С9** – невозможность движения в пальце.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("40"), content: Text("""
                **Иммобилизация шейного отдела позвоночника с помощью шейного воротника**
                """)).buildGrayText()
                    }
                    if isTextExpanded5{
                        Image(systemName: "arrow.down")
                           
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                1.**Обезболивание (ненаркотические или наркотические анальгетики)**:
                                
                                – **метамизол натрия 50% раствор 2-4 мл** в/в в 0,9% растворе натрия хлорида или,
                                – **морфина гидрохлорид 1 мл 1%** раствора в/в в 0,9% растворе натрия хлорида или,
                                – **фентанил 1-2 мл 0,005%** раствора в/в в 0,9% растворе натрия хлорида.
                                
                                2.**Иммобилизация на щите в положении на спине** (каркасные носилки).
                                3.**Обеспечение венозного доступа**, **инфузионная терапия**.
                                4.**Пульсоксиметрия**, оксигенотерапия при **SpO2≤ 90%**.
                                5.**Преднизолон 60-120 мг** или **метилпреднизолон в дозе 30мг/кг** в/в.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("40"), content: Text("""
                        **Доставка в стационар** по профилю основного заболевания
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
                    Text("Алгоритм 40")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Травма позвоночника»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg40"), title: "Алгоритм 40")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg40View()
}


struct Prikaz1030Alg40ViewFavorites: View {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == "Алгоритм 40. «Травма позвоночника»" }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: "Алгоритм 40. «Травма позвоночника»", isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == "Алгоритм 40. «Травма позвоночника»" }) {
            favoritesManager.removeItem(item)
        }
    }
    

    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg40View()) {
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
