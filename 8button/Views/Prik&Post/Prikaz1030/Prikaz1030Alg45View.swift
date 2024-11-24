//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg45View: View {
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
                    MyViewBuilder(title: Text("45"), content: Text("""
                    **Ожог** – разновидность травмы, полученной в результате воздействия **высокой температуры**, **химических веществ**, **электрического тока** или **ионизирующего излучения**.
                    Различают **три степени ожога** при местных повреждениях.
                    """)).buildGrayText()
                    ZStack{
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack{
                            MyViewBuilder(title: Text("45"), content: Text("""
                            **Степень и этиология**:
                            """)).buildGrayInText().padding(-5)
                            VStack{
                                HStack{
                                    
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                        **I**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded1.toggle()
                                                
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == false {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
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
                                                if isTextExpanded12 == true {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == true {
                                                    isTextExpanded16.toggle()
                                                }
                                                
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                        **II**
                                        """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded2.toggle()
                                                
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == false {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded14.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                    **III**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded3)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded3.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded4 == true {
                                                    isTextExpanded4.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded15.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                    
                                    
                                }
                                HStack{
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                    **Ингаляционный ожог**
                                    """)).buildGreen1Text(isTextExpanded: isTextExpanded4)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded4.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
                                                }
                                                if isTextExpanded2 == true {
                                                    isTextExpanded2.toggle()
                                                }
                                                if isTextExpanded3 == true {
                                                    isTextExpanded3.toggle()
                                                }
                                                if isTextExpanded5 == true {
                                                    isTextExpanded5.toggle()
                                                }
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == false {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == false {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == true {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded11.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded13.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                                
                                            }
                                        }
                                    MyViewBuilder(title: Text("45"), content: Text("""
                                **Электроожог**
                                """)).buildGreen1Text(isTextExpanded: isTextExpanded5)
                                        .onTapGesture {
                                            withAnimation (.snappy) {
                                                isTextExpanded5.toggle()
                                                
                                                if isTextExpanded1 == true {
                                                    isTextExpanded1.toggle()
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
                                                if isTextExpanded6 == false {
                                                    isTextExpanded6.toggle()
                                                }
                                                if isTextExpanded7 == true {
                                                    isTextExpanded7.toggle()
                                                }
                                                if isTextExpanded8 == false {
                                                    isTextExpanded8.toggle()
                                                }
                                                if isTextExpanded9 == false {
                                                    isTextExpanded9.toggle()
                                                }
                                                if isTextExpanded10 == false {
                                                    isTextExpanded10.toggle()
                                                }
                                                if isTextExpanded11 == true {
                                                    isTextExpanded11.toggle()
                                                }
                                                if isTextExpanded12 == false {
                                                    isTextExpanded12.toggle()
                                                }
                                                if isTextExpanded13 == true {
                                                    isTextExpanded13.toggle()
                                                }
                                                if isTextExpanded14 == true {
                                                    isTextExpanded14.toggle()
                                                }
                                                if isTextExpanded15 == false {
                                                    isTextExpanded15.toggle()
                                                }
                                                if isTextExpanded16 == false {
                                                    isTextExpanded16.toggle()
                                                }
                                                if isTextExpanded1 == false && isTextExpanded2 == false && isTextExpanded3 == false && isTextExpanded4 == false && isTextExpanded5 == false {
                                                    isTextExpanded6.toggle()
                                                    isTextExpanded8.toggle()
                                                    isTextExpanded9.toggle()
                                                    isTextExpanded10.toggle()
                                                    isTextExpanded12.toggle()
                                                    isTextExpanded15.toggle()
                                                    isTextExpanded16.toggle()
                                                }
                                            }
                                        }
                                }
                            } // stepeni
                            
                        }
                        .padding(5.0)
                    }
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                - покраснение, отёк, боль
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                **IIa** - покраснение, образование **пузырьков**, боль (повреждение **поверхностных слоёв кожи**)
                                **IIб** - образование **пузырей**, боль, кожа анемична (повреждение **глубоких слоёв кожи**)
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Клинические проявления**:"), content: Text("""
                                - **некроз**, серая, белая или чёрная кожа, **боль отсутствует**
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    
                    if isTextExpanded6{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Проводимые мероприятия**:"), content: Text("""
                                - **прекращение воздействия повреждающих агентов**
                                - быстрое и продолжительное (до исчезновения боли) **охлаждение поражённых тканей проточной холодной водой 12-18°С** (помнить об опасности переохлаждения) в течение **10-15 мин**.
                                - **удаление** всех не соприкасающихся с участком ожога частей одежды
                                - **стерильная сухая повязка** (накладка) на открытые раны
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded7{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        Обезболивание: **кеторолак 3% - 1 мл в/м**
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **Амбулаторное лечение**
                        """)).buildGrayText()
                    }
                    if isTextExpanded8{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Положение**:"), content: Text("""
                                - на спине;
                                - при **потере сознания** – стабильное положение **на боку**;
                                - при **ингаляционной травме** – **с возвышением головным концом**;
                                - во всех остальных случаях – **с приподнятым ножным концом**.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    if isTextExpanded9{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Шок**:"), content: Text("""
                                (при площади ожога **около 15 %** возникает угроза шока)
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded10{
                        Image(systemName: "arrow.down")
                        
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - **обеспечение жизненно важных функций организма**
                                - **санация верхних дыхательных путей**
                                - **оксигенотерапия** – **4-6 литров** О2/мин – 100 % кислородом
                                - при необходимости своевременная **интубация и ИВЛ**
                                - постоянный контроль **ЧСС и АД**
                                """)).buildGrayInAndHiddenBlock()
                           
                    }
                    if isTextExpanded11{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **При невозможности интубации** трахеи (при ингаляционном поражении дыхательных путей) – **коникотомия**
                        """)).buildGrayText()
                    }
                    if isTextExpanded12{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        - венозный доступ – **0,9 % раствор натрия хлорида** со скоростью **2 л/час**
                        - седация: **диазепам 5-10 мг** (0,5% - 1-2 мл) в/в.
                        - обезболивание: **кеторолак 3% - 1 мл в/м, тримеперидин 2 % - 1 мл в/в, морфин 1 % - 1 мл в/в**.
                        """)).buildGrayText()
                    }
                    if isTextExpanded13{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        - **аминофиллин 2,4 % - 10 мл** в/в,
                        - **дексаметазон 4 – 8 мг** в/в,
                        - **преднизолон 60 – 120 мг** в/в.
                        """)).buildGrayText()
                    }
                    if isTextExpanded14{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack {
                                MyViewBuilder(title: Text("45"), content: Text("""
                                **Противошоковая терапия**:
                                """)).buildGrayInText().padding(-5)
                                NavigationLink (destination: Prikaz1030Alg5View()) {
                                    MyViewBuilder(title: Text("45"), content: Text("Алгоритм 5 «Гиповолемический шок».")).buildNavigationText()
                                }
                                
                            }
                            .padding(5)
                        }
                    }
                    if isTextExpanded15{
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("45"), content: Text("""
                        **Транспортная иммобилизация** (при вывихах, переломах, разрывах мышц)
                        """)).buildGrayText()
                    }
                    if isTextExpanded16{
                        Image(systemName: "arrow.down")
                         
                                MyViewBuilder(title: Text("**Доставка в стационар по профилю основного заболевания**:"), content: Text("""
                                - больные с ожогами **II-III степени** поражения **более 10%** поверхности тела,
                                **дети или пожилые пациенты с поражением 5-10% поверхности тела**;
                                - ожоги лица, кистей, стоп и гениталий;
                                - ингаляционный ожог;
                                - ожоги электрическим током;
                                - химические ожоги;
                                - больные с дополнительными травмами;
                                - пациенты без сознания.
                                """)).buildGrayInAndHiddenBlock()
                            
                    }
                    Spacer(minLength: 30)
                    Divider()
                        .background(Color.divider)
                    Spacer(minLength: 15)
                    
                            MyViewBuilder(title: Text("**Примечание.**"), content: Text("""
                                    1. **Не производить реакцию нейтрализации химического вещества на поверхности кожи**.
                                    2. В острой фазе **противопоказаны**: **коллоидные растворы, диуретики, кортизон, катехоламины, антибиотики**.
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
                    Text("Алгоритм 45")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Ожоги»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg45"), title: "Алгоритм 45")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg45View()
}

struct Prikaz1030Alg45ViewFavorites: View {
    @AppStorage("fontSize") var fontSize: Double = 14.0
    @EnvironmentObject var themeManager: ThemeManager
    @Environment(\.sizeCategory) var sizeCategory
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var allViewIdentifiers: String = "Алгоритм 45. «Ожоги»"
    
    var body: some View {
        VStack {
            NavigationLink(destination: Prikaz1030Alg45View()) {
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
        return favoritesManager.favorites.contains { $0.viewIdentifier == allViewIdentifiers }
    }
    
    func addToFavorites() {
        let newItem = FavoriteItem(name: "Приказ №1030", viewIdentifier: allViewIdentifiers, isExpanded: false, isNavigationLink: true)
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
        if let item = favoritesManager.favorites.first(where: { $0.viewIdentifier == allViewIdentifiers }) {
            favoritesManager.removeItem(item)
        }
    }
    
}
