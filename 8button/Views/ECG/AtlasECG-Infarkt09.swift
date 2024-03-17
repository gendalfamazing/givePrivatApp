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
    var body: some View {
        NavigationStack {
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
                                      
                            
                            VStack (spacing:1) {
                                GeometryReader { proxy in
                                    ScrollView {
                                        Image("AtlasECGInfarkt1")
                                            .resizable()
                                            .frame(maxWidth: proxy.size.width)
                                            .frame(maxHeight: proxy.size.height)
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                        
                                    }
                                }
                            }
                            .frame(minHeight: 240)
                            .cornerRadius(10)
                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                            .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            ЭКГ показывает острый **передне-перегородочный инфаркт миокарда** на фоне блокады правой ножки пучка Гиса. Это - пример факта, что ишемия и инфаркт могут диагностироваться даже на фоне нарушений проводимости. В правых грудных отведениях qR, отмечается подъём ST и положительные зубцы T. Этот образец - по существу патогномоничен для острого инфаркта.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt2")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            52-летний мужчина. **Острый нижне-боковой и вероятно задний инфаркт миокарда** с глубокими зубцами Q и подъёмом ST-T и реципрокными изменениями в отведениях V1-V3. Высокие начальные волны R в V1-V3 с БПНПГ.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt3")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            60-летняя женщина с антифосфолипидным синдромом, которую беспокоят боли в груди. Синусовый ритм с периодами Самойлова-Венкебаха с проведением 4:3 на фоне острого **инфаркт миокарда нижней стенки**. ЭКГ демонстрирует зубцы Q и подъём ST в отведениях II, III и aVF. Имеются также реципрокные депрессии сегмента ST в отведениях I, aVL и V2-3. Ритм - постепенное увеличение интервалов PQ, сокращение интервалов R-R и блокада каждой четвертой волны P.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt4")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            43-летний мужчина. Имеется небольшой подъём ST в II, III, aVF и в V5-V6. Депрессия ST в aVL реципрокна к первичной элевации ST в **нижне-боковой области**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt5")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            64-летний мужчина с нарастающими отёками ног. Синусовый ритм. Высокие правильные зубцы R, патологические зубцы Q в задне-боковых отделах. Имеется также отклонение ST в I, aVL, V6. Таким образом пациент имеет ИБС, **задне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt6")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            47-летний мужчина. Синусовый ритм с нормальными ЭОС и интервалами. Два известных полученных факта: 1) **нижний Q-инфаркт миокарда** неопределенной давности. 2) диффузная элевация ST в передних и боковых отведениях. **В анамнезе - острый инфаркт миокарда с перикардитом.**
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt7")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            39-летний мужчина с дискомфортом груди. **Острый инфаркт миокарда нижней стенки**. Имеется небольшая элевация ST в нижних отведениях с реципрокной депрессией ST в отведениях I и aVL.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt8")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Пациент с дискомфортом груди. ЭКГ показывает признаки **острой ишемии задне-диафрагмальной области**. Имеются отрицательные зубцы T и депрессия ST в I, aVL, и правых грудных отведениях. Пациент перенёс острый инфаркт миокарда и подвергся процедуре коронарного тромболизиса.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt9")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Высокие волны R в V1-V2 из-за **бокового инфаркта миокарда** (отмечается широкий Q в V6, а также в I, aVL).
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt10")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            78-летняя женщина. Ритм синусовый с предсердными экстрасистолами. Блокада ПНПГ и патологический зубец Q в V1-V3 из-за **перенесённого инфарктa миокарда передне-перегородочной области**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt11")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            75-летний мужчина. **Рубцовые изменения в нижне-боковой области** (зубцы Q в I, aVL, и V6) и БЛНПГ.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt12")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            62-летняя женщина. AV-блокада II степени (Мобитц I), **острый инфаркт миокарда задне-боковой области**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt13")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Ритм искусственного водителя ритма. **Острый инфаркт миокарда задне-диафрагмальной области**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt14")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Передний Q-позитивный инфаркт миокарда**, возможно недавний или развивающийся.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt15")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Мужчина средних лет с болью в груди после несчастного случая (ДТП) с тупой травмой груди. **Острейший передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt16")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый задне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt17")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            75-летняя женщина. ЭКГ показывает синусовый ритм с частой желудочковой экстрасистолией (бигеминия). Кроме этого, имеется элевация ST в отведениях I и aVL с реципрокной депрессией ST в задней стенке, и небольшой подъём ST в отведениях V5 и V6. **Острый передне-боковой инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt18")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            41-летний мужчина. **Острый инфаркт миокарда боковой стенки**. Имеется подъём ST в V4, V5 и V6 с реципрокным снижениием ST в V2 и V3. Зубцы Q в II, III, aVF пограничными, поднимая вопрос предшествующегоинфаркт миокарда нижней стенки.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt19")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый инфаркт миокарда нижней стенки**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt20")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 105)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый инфаркт миокарда нижней стенки**. Случай №2
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt21")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 105)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            52-летний мужчина. **Острый передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt22")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            32-летний мужчина. **Острый передний инфаркт миокарда.**
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt23")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый инфаркт миокарда передней стенки.**
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt24")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 100)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый передний инфаркт миокарда** на фоне БЛНПГ
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt25")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 145)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            88-летняя женщина в ПИТ с жалобами на разлитые боли в животе, пароксизмальной ЖТ и гипотонией. Полная АВ-блокада и **острый передний инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt26")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            63-летний мужчина в ПИТ с жалобами на боли в груди. Синусовый ритм с **передней субэндокардиальной ишемией** и **перенесённым Q-позитивным инфаркт миокарда задней стенки**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt27")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Острый передне-перегородочный инфаркт миокарда**
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt28")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 130)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Циркулярный острый инфаркт миокарда**
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt29")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 140)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Кардиограмма человека средних лет с остановкой сердца в анамнезе. Предсердная тахикардия с проведением 2:1 и нарушением внутрижелудочковой проводимости на фоне **обширного инфаркт миокарда**.
                                                            """)).buildGrayInHiddenText()
                                          
                                
                                VStack (spacing:1) {
                                    GeometryReader { proxy in
                                        ScrollView {
                                            Image("AtlasECGInfarkt30")
                                                .resizable()
                                                .frame(maxWidth: proxy.size.width)
                                                .frame(maxHeight: proxy.size.height)
                                                .scaledToFit()
                                                .clipShape(Rectangle())
                                                .modifier(ImageModifierECG(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                                            
                                        }
                                    }
                                }
                                .frame(minHeight: 240)
                                .cornerRadius(10)
                                .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                .padding(5)
                                
                                
                        }
                        }
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 85)
            }
            //        .padding(.horizontal, 200)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.back)
        }
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

