//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGInfarkt09: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = true
    @State private var isTextExpanded2 = true
    @State private var isTextExpanded3 = true
    @State private var isTextExpanded4 = true
    @State private var isTextExpanded5 = true
    @State private var isTextExpanded6 = true
    @State private var isTextExpanded7 = true
    @State private var isTextExpanded8 = true
    @State private var isTextExpanded9 = true
    @State private var isTextExpanded10 = true
    @State private var isTextExpanded11 = true
    @State private var isTextExpanded12 = true
    @State private var isTextExpanded13 = true
    @State private var isTextExpanded14 = true
    @State private var isTextExpanded15 = true
    @State private var isTextExpanded16 = true
    @State private var isTextExpanded17 = true
    @State private var isTextExpanded18 = true
    @State private var isTextExpanded19 = true
    @State private var isTextExpanded20 = true
    @State private var isTextExpanded21 = true
    @State private var isTextExpanded22 = true
    @State private var isTextExpanded23 = true
    @State private var isTextExpanded24 = true
    @State private var isTextExpanded25 = true
    @State private var isTextExpanded26 = true
    @State private var isTextExpanded27 = true
    @State private var isTextExpanded28 = true
    @State private var isTextExpanded29 = true
    @State private var isTextExpanded30 = true
    
    var body: some View {
        ScrollView {
            VStack (spacing: 5) {
                ZStack {
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1) {
                        LazyVStack (spacing:1) {
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                        Продолжительность QRS нормальна. То, что, может казаться уширением QRS в отведениях V2-V6 - фактически массивный подъём ST из-за **острой трансмуральной ишемии (острый инфаркт миокарда) передней стенки ЛЖ**. Имеется реципрокная депрессия ST в нижних отведениях. Q волны начинают появляться в передних отведениях. Такой подъём ST носит название "монофазная кривая".
                                                        """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt1"), title: "").buildECG(isTextExpanded: isTextExpanded1)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            ЭКГ показывает острый **передне-перегородочный инфаркт миокарда** на фоне блокады правой ножки пучка Гиса. Это - пример факта, что ишемия и инфаркт могут диагностироваться даже на фоне нарушений проводимости. В правых грудных отведениях qR, отмечается подъём ST и положительные зубцы T. Этот образец - по существу патогномоничен для острого инфаркта.
                                                            """)).buildGrayInHiddenText()
                            
                            
                            ImagePDF(image: Image("AtlasECGInfarkt2"), title: "").buildECG(isTextExpanded: isTextExpanded2)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            52-летний мужчина. **Острый нижне-боковой и вероятно задний инфаркт миокарда** с глубокими зубцами Q и подъёмом ST-T и реципрокными изменениями в отведениях V1-V3. Высокие начальные волны R в V1-V3 с БПНПГ.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt3"), title: "").buildECG(isTextExpanded: isTextExpanded3)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            60-летняя женщина с антифосфолипидным синдромом, которую беспокоят боли в груди. Синусовый ритм с периодами Самойлова-Венкебаха с проведением 4:3 на фоне острого **инфаркт миокарда нижней стенки**. ЭКГ демонстрирует зубцы Q и подъём ST в отведениях II, III и aVF. Имеются также реципрокные депрессии сегмента ST в отведениях I, aVL и V2-3. Ритм - постепенное увеличение интервалов PQ, сокращение интервалов R-R и блокада каждой четвертой волны P.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt4"), title: "").buildECG(isTextExpanded: isTextExpanded4)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            43-летний мужчина. Имеется небольшой подъём ST в II, III, aVF и в V5-V6. Депрессия ST в aVL реципрокна к первичной элевации ST в **нижне-боковой области**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt5"), title: "").buildECG(isTextExpanded: isTextExpanded5)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            64-летний мужчина с нарастающими отёками ног. Синусовый ритм. Высокие правильные зубцы R, патологические зубцы Q в задне-боковых отделах. Имеется также отклонение ST в I, aVL, V6. Таким образом пациент имеет ИБС, **задне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt6"), title: "").buildECG(isTextExpanded: isTextExpanded6)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            47-летний мужчина. Синусовый ритм с нормальными ЭОС и интервалами. Два известных полученных факта: 1) **нижний Q-инфаркт миокарда** неопределенной давности. 2) диффузная элевация ST в передних и боковых отведениях. **В анамнезе - острый инфаркт миокарда с перикардитом.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt7"), title: "").buildECG(isTextExpanded: isTextExpanded7)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            39-летний мужчина с дискомфортом груди. **Острый инфаркт миокарда нижней стенки**. Имеется небольшая элевация ST в нижних отведениях с реципрокной депрессией ST в отведениях I и aVL.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt8"), title: "").buildECG(isTextExpanded: isTextExpanded8)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Пациент с дискомфортом груди. ЭКГ показывает признаки **острой ишемии задне-диафрагмальной области**. Имеются отрицательные зубцы T и депрессия ST в I, aVL, и правых грудных отведениях. Пациент перенёс острый инфаркт миокарда и подвергся процедуре коронарного тромболизиса.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt9"), title: "").buildECG(isTextExpanded: isTextExpanded9)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded9.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 520 : 520) : (isTextExpanded9 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Высокие волны R в V1-V2 из-за **бокового инфаркта миокарда** (отмечается широкий Q в V6, а также в I, aVL).
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt10"), title: "").buildECG(isTextExpanded: isTextExpanded10)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded10.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded10 ? 520 : 520) : (isTextExpanded10 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            78-летняя женщина. Ритм синусовый с предсердными экстрасистолами. Блокада ПНПГ и патологический зубец Q в V1-V3 из-за **перенесённого инфарктa миокарда передне-перегородочной области**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt11"), title: "").buildECG(isTextExpanded: isTextExpanded11)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded11.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 520 : 520) : (isTextExpanded11 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            75-летний мужчина. **Рубцовые изменения в нижне-боковой области** (зубцы Q в I, aVL, и V6) и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt12"), title: "").buildECG(isTextExpanded: isTextExpanded12)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded12.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded12 ? 520 : 520) : (isTextExpanded12 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            62-летняя женщина. AV-блокада II степени (Мобитц I), **острый инфаркт миокарда задне-боковой области**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt13"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded13.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 520 : 520) : (isTextExpanded13 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Ритм искусственного водителя ритма. **Острый инфаркт миокарда задне-диафрагмальной области**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt14"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded14.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded14 ? 520 : 520) : (isTextExpanded14 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Передний Q-позитивный инфаркт миокарда**, возможно недавний или развивающийся.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt15"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded15.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 520 : 520) : (isTextExpanded15 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Мужчина средних лет с болью в груди после несчастного случая (ДТП) с тупой травмой груди. **Острейший передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt16"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded16.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded16 ? 520 : 520) : (isTextExpanded16 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый задне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt17"), title: "").buildECG(isTextExpanded: isTextExpanded17)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded17.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded17 ? 520 : 520) : (isTextExpanded17 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            75-летняя женщина. ЭКГ показывает синусовый ритм с частой желудочковой экстрасистолией (бигеминия). Кроме этого, имеется элевация ST в отведениях I и aVL с реципрокной депрессией ST в задней стенке, и небольшой подъём ST в отведениях V5 и V6. **Острый передне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt18"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded18.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded18 ? 520 : 520) : (isTextExpanded18 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            41-летний мужчина. **Острый инфаркт миокарда боковой стенки**. Имеется подъём ST в V4, V5 и V6 с реципрокным снижениием ST в V2 и V3. Зубцы Q в II, III, aVF пограничными, поднимая вопрос предшествующегоинфаркт миокарда нижней стенки.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt19"), title: "").buildECG(isTextExpanded: isTextExpanded19)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded19.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded19 ? 520 : 520) : (isTextExpanded19 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый инфаркт миокарда нижней стенки**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt20"), title: "").buildECG(isTextExpanded: isTextExpanded20)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded20.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded20 ? 225 : 225) : (isTextExpanded20 ? 105 : 210))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый инфаркт миокарда нижней стенки**. Случай №2
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt21"), title: "").buildECG(isTextExpanded: isTextExpanded21)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded21.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded21 ? 225 : 225) : (isTextExpanded21 ? 105 : 210))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            52-летний мужчина. **Острый передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt22"), title: "").buildECG(isTextExpanded: isTextExpanded22)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded22.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded22 ? 520 : 520) : (isTextExpanded22 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            32-летний мужчина. **Острый передний инфаркт миокарда.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt23"), title: "").buildECG(isTextExpanded: isTextExpanded23)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded23.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded23 ? 520 : 520) : (isTextExpanded23 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый инфаркт миокарда передней стенки.**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt24"), title: "").buildECG(isTextExpanded: isTextExpanded24)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded24.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded24 ? 215 : 215) : (isTextExpanded24 ? 100 : 200))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый передний инфаркт миокарда** на фоне БЛНПГ
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt25"), title: "").buildECG(isTextExpanded: isTextExpanded25)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded25.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded25 ? 315 : 315) : (isTextExpanded25 ? 145 : 290))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            88-летняя женщина в ПИТ с жалобами на разлитые боли в животе, пароксизмальной ЖТ и гипотонией. Полная АВ-блокада и **острый передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt26"), title: "").buildECG(isTextExpanded: isTextExpanded26)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded26.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded26 ? 520 : 520) : (isTextExpanded26 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            63-летний мужчина в ПИТ с жалобами на боли в груди. Синусовый ритм с **передней субэндокардиальной ишемией** и **перенесённым Q-позитивным инфаркт миокарда задней стенки**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt27"), title: "").buildECG(isTextExpanded: isTextExpanded27)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded27.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded27 ? 520 : 520) : (isTextExpanded27 ? 240 : 480))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Острый передне-перегородочный инфаркт миокарда**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt28"), title: "").buildECG(isTextExpanded: isTextExpanded28)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded28.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded28 ? 280 : 280) : (isTextExpanded28 ? 130 : 260))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            **Циркулярный острый инфаркт миокарда**
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt29"), title: "").buildECG(isTextExpanded: isTextExpanded29)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded29.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded29 ? 300 : 300) : (isTextExpanded29 ? 140 : 280))
                                .cornerRadius(10)
                            
                                .padding(5)
                            
                            MyViewBuilder(title: Text("1"),
                                          content: Text("""
                                                            Кардиограмма человека средних лет с остановкой сердца в анамнезе. Предсердная тахикардия с проведением 2:1 и нарушением внутрижелудочковой проводимости на фоне **обширного инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                            
                            ImagePDF(image: Image("AtlasECGInfarkt30"), title: "").buildECG(isTextExpanded: isTextExpanded30)
                                .onTapGesture (count: 1, perform: {
                                    withAnimation(.easeInOut){
                                        UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded30.toggle()
                                    }
                                })
                                .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded30 ? 520 : 520) : (isTextExpanded30 ? 240 : 480))
                                .cornerRadius(10)
                                .padding(5)
                            
                            
                            
                        }
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        //        .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Атлас ЭКГ")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("Инфаркты")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGInfarkt09()
}

