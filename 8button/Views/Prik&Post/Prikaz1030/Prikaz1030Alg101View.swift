//
//  Prikaz1030Alg1View.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI

struct Prikaz1030Alg1View: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ScrollView {
            Spacer()
            VStack {
                
                        MyViewBuilder(title: Text("1"), content: Text("**Убедиться в личной безопасности и безопасности пациента**")).buildGrayTextCenter()
                    
                Image(systemName: "arrow.down")
                
                
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text("1"), content: Text("Осуществить **первичный осмотр пациента** для оценки нарушения витальных функций")).buildGrayInHidden59Text()
                        
                        NavigationLink (destination: Prikaz1030Alg2View()) {
                            MyViewBuilder(title: Text("1"), content: Text("Алгоритм 2 «Первичный осмотр пациента (ABCD)».")).buildNavigationText()
                        }
                        .padding(.horizontal, 5.0)
                        
                        MyViewBuilder(title: Text("1"), content: Text("Обеспечить **проходимость дыхательных путей, иммобилизацию шейного отдела позвоночника**, адекватное дыхание, гемодинамику, остановку профузного кровотечения, пульсоксиметрию (по показаниям).")).buildGrayInHidden59Text()
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    
                
                Image(systemName: "arrow.down")
                MyViewBuilder(title: Text("""
                                          **Неотложная медицинская помощь**
                                          (по экстренным показаниям):
                                          """),
                              content: Text("""
                                            1) обеспечить **венозный доступ и инфузионную терапию** под контролем АД;
                                            2) **ЭКГ-мониторирование** по показаниям;
                                            3) **оксигенотерапия** (под контролем SpO2);
                                            4) **оказание медицинской помощи** в соответствии с выявленной патологией;
                                            5) обеспечить **необходимую иммобилизацию и способ транспортировки** с соответствующим имеющейся патологии положением пациента.
                                            """)).buildGrayInAndHiddenBlock()
                
                Image(systemName: "arrow.down")
                MyViewBuilder(title: Text("""
                                          **Выполнить углубленный осмотр пациента**:
                                          """),
                              content: Text("""
                                            1) оценка **основных витальных функций**, осмотр **«с головы до пят»**;
                                            2) сбор **анамнестических** сведений:
                                            - перенесенные заболевания;
                                            - осложняющие факторы (наличие сопутствующих заболеваний);
                                            - аллергоанамнез;
                                            - принятые лекарственные средства;
                                            - наблюдение врача.
                                            """)).buildGrayInAndHiddenBlock()
                
                Image(systemName: "arrow.down")
                
                MyViewBuilder(title: Text("1"), content: Text("""
                                **Информировать отдел госпитализации** службы СНМП о доставке пациента, находящегося в тяжелом состоянии **(не позже чем за 10 минут до приезда в стационар)**.
                                """)).buildGrayText()
                
                Image(systemName: "arrow.down")
                
                MyViewBuilder(title: Text("1"), content: Text("""
                                **Доставить пациента, находящегося в тяжелом состоянии в ближайший стационар**, передать врачу-реаниматологу, **минуя приемное отделение, не прекращая оказания медицинской помощи**.
                                """)).buildGrayText()
                
                
                Spacer(minLength: 30)
                Divider()
                    .background(Color.divider)
                Spacer(minLength: 15)
                MyViewBuilder(title: Text("**Примечание**."),
                              content: Text("""
                                            **Соблюдать следующие принципы**:
                                            1. Сохранять **спокойное**, внимательное отношение ко всем пациентам без исключения.
                                            2. Соблюдать **установленную форму одежды**, иметь опрятный внешний вид.
                                            3.Использовать при оказании медицинской помощи **принципы рациональной психотерапии** для успокоения больного.
                                            """)).buildGrayInAndHiddenBlock()
                
            }
            .textSelection(.enabled)
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        .background(Color.back)
        
//        .edgesIgnoringSafeArea(.bottom)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Алгоритм 1")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Порядок оказания скорой медицинской помощи»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ImagePDF(image: Image("Prikaz1030Alg1"), title: "Алгоритм 1")) {
                    Image(systemName: "doc.text")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
        
    }
    
}
#Preview {
    Prikaz1030Alg1View()
}

