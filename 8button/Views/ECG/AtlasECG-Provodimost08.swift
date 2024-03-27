//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AtlasECGProvodimost08: View {
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
    
    var body: some View {
            ScrollView {
                VStack (spacing: 5) {
                    ZStack {
                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                        VStack (spacing: 1) {
                            LazyVStack (spacing:1) {
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                        Пациент - 47-летняя женщина, которая не предъявляет жалоб. Данная ЭКГ без изменений с детского возраста. Рассмотренный пример показывает **полную АВ-блокаду**.
                                                        """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost1"), title: "").buildECGPad(isTextExpanded: isTextExpanded1)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded1.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded1 ? 520 : 520) : (isTextExpanded1 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            60-летняя женщина с антифосфолипидным синдромом, которую беспокоют боли в груди. Синусовый ритм с **периодами Самойлова-Венкебаха** с проведением 4:3 на фоне острого ИМ нижней стенки. ЭКГ демонстрирует зубцы Q и подъём ST в отведениях II, III и aVF. Имеются также реципрокные депрессии сегмента ST в отведениях I, aVL и V2-3. Ритм - постепенное увеличение интервалов PQ, сокращение интервалов R-R и **блокада каждой четвертой волны P**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost2"), title: "").buildECG(isTextExpanded: isTextExpanded2)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded2.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded2 ? 520 : 520) : (isTextExpanded2 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            78-летний мужчина с приступами ночной одышкой. Имел ту же самую ЭКГ и 5 лет назад. Ритм синусовый с частотой 70/минута с удлинением интервала PQ (**AV-блокада I степени**), гипертрофия ЛП, гипертрофия ЛЖ и **БПНПГ**. Самое важное - патологические зубцы Q в V1-V5, I, aVL с подъёмом ST в этих отведениях. Это классический пример аневризмы левого желудочка.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost3"), title: "").buildECG(isTextExpanded: isTextExpanded3)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded3.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded3 ? 520 : 520) : (isTextExpanded3 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Синусовый ритм с **AV-блокадой** с проведением 3:2 и 2:1. Отмечается нарастающее удлинение интервала PQ с выпадением каждого третьего комплекса QRS. Кроме этого, гипертрофия ЛЖ, гипертрофия ЛП и двухфазность зубцов T в нижне-боковых отведенииях, поднимающих вопрос ишемии.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost4"), title: "").buildECG(isTextExpanded: isTextExpanded4)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded4.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded4 ? 520 : 520) : (isTextExpanded4 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            74-летняя женщина. Жалобы на слабость и головокружение. **AV-блокада** с проведением 2:1. Гипертрофия ПП. Блокада **ПНПГ**. Отклонение ЭОС влево. **Передний гемиблок**. Рубцовые изменения задней стенки ЛЖ (низкий вольтаж зубца R в II, III, aVF).
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost5"), title: "").buildECG(isTextExpanded: isTextExpanded5)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded5.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded5 ? 520 : 520) : (isTextExpanded5 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            62-летняя женщина. **AV-блокада II степени (Мобитц I)**, ОИМ задне-боковой области.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost6"), title: "").buildECG(isTextExpanded: isTextExpanded6)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded6.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded6 ? 520 : 520) : (isTextExpanded6 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Неполная блокада правой ножки пучка Гиса**. Продолжительность QRS - приблизительно - 11 мс.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost7"), title: "").buildECG(isTextExpanded: isTextExpanded7)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded7.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded7 ? 520 : 520) : (isTextExpanded7 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            23-летняя женщина с сердцебиением. Синдром **WPW с БПНПГ**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost8"), title: "").buildECG(isTextExpanded: isTextExpanded8)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded8.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded8 ? 520 : 520) : (isTextExpanded8 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Синусовый ритм с **блокадой передней ветви ЛНПГ и периодической блокадой задней ветви ЛНПГ (2:1)**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost9"), title: "").buildECG(isTextExpanded: isTextExpanded9)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded9.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded9 ? 520 : 520) : (isTextExpanded9 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **AV-блокада II степени Мобитц II** с проведением 3:2.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost10"), title: "").buildECG(isTextExpanded: isTextExpanded10)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded10.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded10 ? 520 : 520) : (isTextExpanded10 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            61-летний мужчина. Жалобы не предъявляет. **АВ-блокада II степени Мобитц II** с проведением 2:1. Кроме того, **БЛНПГ**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost11"), title: "").buildECG(isTextExpanded: isTextExpanded11)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded11.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded11 ? 520 : 520) : (isTextExpanded11 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Блокада ЛНПГ.**
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost12"), title: "").buildECG(isTextExpanded: isTextExpanded12)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded12.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded12 ? 520 : 520) : (isTextExpanded12 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            ЭКГ молодого человека с брадикардией. **AV-блокада III степени.**
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost13"), title: "").buildECG(isTextExpanded: isTextExpanded13)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded13.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded13 ? 520 : 520) : (isTextExpanded13 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            ЭКГ 49-летнего мужчины. **Передний гемиблок**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost14"), title: "").buildECG(isTextExpanded: isTextExpanded14)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded14.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded14 ? 520 : 520) : (isTextExpanded14 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **АВ-блокада I степени. Блокада ПНПГ**. Рубцовые изменения задне-диафрагмальной области.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost15"), title: "").buildECG(isTextExpanded: isTextExpanded15)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded15.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded15 ? 520 : 520) : (isTextExpanded15 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Ритм синусовый. **Полная БЛНПГ**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost16"), title: "").buildECG(isTextExpanded: isTextExpanded16)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded16.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded16 ? 520 : 520) : (isTextExpanded16 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            Кардиограмма 13-летнего мальчика. **Нарушение внутрижелудочковой проводимости**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost17"), title: "").buildECG(isTextExpanded: isTextExpanded17)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded17.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded17 ? 520 : 520) : (isTextExpanded17 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            88-летняя женщина в ПИТ с жалобами на разлитые боли в животе, пароксизмальной ЖТ и гипотонией. **Полная АВ-блокада** и острый передний ИМ.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost18"), title: "").buildECG(isTextExpanded: isTextExpanded18)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded18.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded18 ? 520 : 520) : (isTextExpanded18 ? 240 : 480))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **Полная АВ-блокада**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost19"), title: "").buildECG(isTextExpanded: isTextExpanded19)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded19.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded19 ? 280 : 280) : (isTextExpanded19 ? 130 : 260))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                    .padding(5)
                                
                                MyViewBuilder(title: Text("1"),
                                              content: Text("""
                                                            **АВ-блокада I степени**.
                                                            """)).buildGrayInHiddenText()
                                
                                ImagePDF(image: Image("AtlasECGProvodimost20"), title: "").buildECG(isTextExpanded: isTextExpanded20)
                                    .onTapGesture (count: 1, perform: {
                                        withAnimation(.easeInOut){
                                            UIDevice.current.userInterfaceIdiom == .pad ? nil : isTextExpanded20.toggle()
                                        }
                                    })
                                    .frame(minHeight: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded20 ? 390 : 390) : (isTextExpanded20 ? 180 : 360))
                                    .cornerRadius(10)
                                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
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
                    Text("Нарушение проводимости")
                        .font(.caption2)
                        .foregroundStyle(Color.toolBar)
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    AtlasECGProvodimost08()
}

