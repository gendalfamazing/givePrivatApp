//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg116View: View {
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
        NavigationStack {
            ScrollView {
                Spacer()
                VStack{
                    MyViewBuilder(title: Text("16"), content: Text("""
                    **Клинические признаки**:
                    
                    - нарушение сознания;
                    - бледность и влажность кожных покровов; - акроцианоз;
                    - тахикардия;
                    - олигурия;
                    - холодные конечности.
                    """)).buildGrayText()
                    HStack {
                    MyViewBuilder(title: Text("16"), content: Text("""
                    **Уточнить причину**
                    """)).buildGreen1Text(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded1.toggle()
                                if isTextExpanded2 == true {
                                    isTextExpanded2.toggle()
                                }
                            }
                        }
                    MyViewBuilder(title: Text("16"), content: Text("""
                    **Неотложная помощь**
                    """)).buildGreen1Text(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.interpolatingSpring) {
                                isTextExpanded2.toggle()
                                if isTextExpanded1 == true {
                                    isTextExpanded1.toggle()
                                }
                            }
                        }
                }
                    if isTextExpanded1 {
                        MyViewBuilder(title: Text("16"), content: Text("""
                        **Уточнить причину**:
                        
                        - острый инфаркт миокарда;
                        - миокардит;
                        - аритмии;
                        - токсические поражения миокарда;
                        - тромб в предсердиях;
                        - опухоли сердца.
                        """)).buildGrayText()
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("16"), content: Text("""
                        **Неотложная помощь в соответствии с выявленной патологией**
                        """)).buildGrayText()
                    }
                    if isTextExpanded2 {
                        MyViewBuilder(title: Text("16"), content: Text("""
                        **Неотложная помощь**:
                        
                        - **уложить больного с приподнятыми ногами**;
                        - **оксигенотерапия 100% кислородом**; респираторная поддержка;
                        - **обязательная установка катетера** в периферическую и (или) в центральную (при необходимости) вену;
                        - **ЭКГ мониторинг**;
                        - **ввести 400 мл 0,9% раствора натрия хлорида** или **5% раствора глюкозы**;
                        - **ввести допамин 200 мг в/в капельно**, увеличивая скорость введения **с 10 капель в минуту до достижения минимально возможного уровня САД** (не менее **100 мм рт. ст.**);
                        - при выраженном **ангинозном приступе ввести 1 мл 1% раствора морфина** или **1-2 мл 0,005% раствора фентанила**;
                        - профилактика **тромбоэмболических нарушений** (**10-15 тыс. ЕД гепарина в/в в 20 мл 0,9% раствора натрия хлорида и 0,25 ацетилсалициловой кислоты** разжевать во рту).
                        
                        **При САД более 90 мм рт. ст. возможно введение 250 мг добутамина в 200 мл 0,9% раствора натрия хлорида**.
                        
                        **При присоединении клинических признаков острой дыхательной недостаточности** – частота дыхания **более 40 или менее 8 в 1 мин** – алгоритм 3 «Острая дыхательная недостаточность».
                        """)).buildGrayText()
                        NavigationLink (destination: Prikaz1030Alg3View()) {
                            MyViewBuilder(title: Text("12"), content: Text("Алгоритм 3 «Острая дыхательная недостаточность».")).buildNavigationText()
                        }
                        Image(systemName: "arrow.down")
                            .shadow(radius: 2)
                        MyViewBuilder(title: Text("16"), content: Text("""
                        **Положение тела пациента лежа с приподнятым ножным концом носилок**.
                        **Обязательная доставка в ближайший стационар по профилю основного заболевания** (в ОИТАР, минуя приемное отделение).
                        """)).buildGrayText()
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //            .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .automatic)
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 16")
                        .font(.headline)
                        .bold()
                    Text("«Кардиогенный шок»")
                        .font(.caption2)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg16"), title: "Алгоритм 16")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}


#Preview {
    Prikaz1030Alg116View()
}
