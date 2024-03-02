//
//  Prikaz1030Alg9View.swift
//  7button
//
//  Created by Artur Vladymcev on 23.11.23.
//

import SwiftUI

struct Prikaz1030Alg70View: View {
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
                        VStack {
                            
                            MyViewBuilder(title: Text("70"), content: Text("""
                            **Анамнез и осмотр**:
                            """)).buildGrayInText()
                            
                            MyViewBuilder(title: Text("70"), content: Text("""
                            - боль в области носа и околоносовых пазухах;
                            - кровотечение;
                            - при пальпации крепитация;
                            - затруднение носового дыхания; 
                            - деформация наружного носа;
                            - подкожная эмфизема, гематома.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    
                    Image(systemName: "arrow.down")
                       
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle()
                        VStack {
                            
                            MyViewBuilder(title: Text("70"), content: Text("""
                            **Неотложная помощь**:
                            """)).buildGrayInText()
                            
                            MyViewBuilder(title: Text("70"), content: Text("""
                            1. При **выраженном болевом синдроме**:
                            - **метамизол 50% раствор 2 мл** в/в или
                            - **тримеперидин 1% 1 мл** п/к (или в/м) или
                            - **кеторолак в/м 10-30 мг**.
                            2. **Остановка носового кровотечения путем передней тампонады с 3% раствором перекиси водорода**.
                            3. Местно **«холод»**.
                            4. **При наличии раны наружного носа** (лица) промывание **3% перекисью водорода**, обработка кожи вокруг раны **5% раствором йода**.
                            """)).buildGrayInHiddenText()
                            
                        }
                        .padding(5)
                    }
                    Image(systemName: "arrow.down")
                       
                    MyViewBuilder(title: Text("70"), content: Text("""
                    **Доставка в стационар** по профилю основного заболевания
                    """)).buildGrayText()
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
                    Text("Алгоритм 70")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("«Перелом костей носа и околоносовых пазух»")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg70"), title: "Алгоритм 70")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
}

#Preview {
    Prikaz1030Alg70View()
}
