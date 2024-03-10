//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg78View: View {
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
        NavigationStack {
            ScrollView {
                Spacer()
                VStack {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack (spacing:1){
                            
                            MyViewBuilder(title: Text("78"), content: Text("""
                            **Определяются патологические изменения в психической сфере и поведении**, вегето-сосудистой регуляции, имеются ли двигательные нарушения, **запах алкоголя изо рта**.
                            Определяются пары алкоголя в выдыхаемом воздухе (**при использовании приборов**) в концентрации соответствующей алкогольному опьянению (при несоответствии – алгоритм 49).
                            """)).buildGrayInHiddenText().padding(.top, 5)
                            NavigationLink (destination: Prikaz1030Alg49View()) {
                                MyViewBuilder(title: Text("78"), content: Text("Алгоритм 49 «Отравление неизвестным ядом»")).buildNavigationText().padding(5)
                            }
                        }
                        
                    }
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("78"), content: Text("""
                            **Степень тяжести**:
                            """)).buildGrayInText().padding(-5)
                            HStack{
                                MyViewBuilder(title: Text("78"), content: Text("""
                            **Легкая**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("78"), content: Text("""
                            **Средняя**
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
                                        }
                                    }
                                MyViewBuilder(title: Text("78"), content: Text("""
                            **Тяжелая**
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
                                        }
                                    }
                            }
                        }
                        .padding(5)
                    }
                    
                    if isTextExpanded1{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - незначительные изменения в психостатусе.
                                - гиперемия кожи и слизистых, усиление потливости.
                                - тахикардия.
                                - изменения походки, неустойчивость в позе Ромберга.
                                """)).buildGrayInAndHiddenBlock()
                           
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("78"), content: Text("""
                                При **отсутствии признаков травмы**, пациент **оставляется дома**.
                                
                                **В общественных местах передается сотрудникам органов внутренних дел**.
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded2{
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - выраженные изменения психостатуса (неадекватность поведения и ориентации).
                                - усиленная потливость, слюнотечение.
                                - расширение зрачков.
                                - тахикардия, учащение дыхания.
                                - выраженная дизартрия,
                                - отчетливые нарушения координации движения.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        MyViewBuilder(title: Text("78"), content: Text("""
                                **Симптоматическая терапия**
                                """)).buildGrayText()
                        Image(systemName: "arrow.down")
                           
                        
                        MyViewBuilder(title: Text("78"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания
                                """)).buildGrayText()
                        
                    }
                    if isTextExpanded3{
                        Image(systemName: "arrow.down")
                           
                        ZStack {
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                            VStack (spacing:1){
                                
                                MyViewBuilder(title: Text("**Клиническая картина**:"), content: Text("""
                                - **выраженные нарушения сознания или его отсутствие** (при необходимости использовать алгоритм 27 «Кома неясного генеза»).
                                """)).buildGrayInAndHiddenBlockWithBlueButtons()
                                NavigationLink (destination: Prikaz1030Alg27View()) {
                                    MyViewBuilder(title: Text("78"), content: Text("Алгоритм 27 «Кома неясного генеза»")).buildNavigationText().padding(5)
                                }
                                MyViewBuilder(title: Text("78"), content: Text("""
                                - **артериальная гипотония**.
                                - бледность кожи, потливость.
                                - слабая реакция зрачков на свет.
                                - **тяжелые двигательные нарушения** (неспособность самостоятельно стоять).
                                - при отсутствии выраженных клинических проявлений, но наличия в анамнезе употребления значительного количества алкоголя (до 2 часов с момента употребления).
                                """)).buildGrayInHiddenText()
                                
                            }
                            
                        }
                        
                        Image(systemName: "arrow.down")
                           
                                MyViewBuilder(title: Text("**Неотложная помощь**:"), content: Text("""
                                - обеспечение проходимости верхних дыхательных путей.
                                - контроль вены.
                                - инфузионная терапия – **250-500 мл раствора натрия хлорида** или **5% раствора глюкозы в/вено**.
                                - **симптоматическая терапия**.
                                - при необходимости **налоксон 1-2 мл 0,5%** раствора в/вено.
                                """)).buildGrayInAndHiddenBlock()
                            
                        Image(systemName: "arrow.down")
                           
                        
                        
                        MyViewBuilder(title: Text("78"), content: Text("""
                                **Доставка в стационар** по профилю основного заболевания **в положении на боку**
                                """)).buildGrayText()
                        
                    }
                    
                }
                .textSelection(.enabled)
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
                    Text("Алгоритм 78")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Алкогольная интоксикация»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg78"), title: "Алгоритм 78")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg78View()
}
