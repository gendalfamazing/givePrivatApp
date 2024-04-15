//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct PosobieGolovnoe: View {
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
            ScrollView {
                VStack (spacing: 5) {
                    
                    MyViewBuilder(title: Text("1"),
                                  content: Text("""
                                                    Ручное пособие при головном вставлении оказывают врач или акушерка.
                                                    **Показания**: второй период родов при головном вставлении.
                                                    **Противопоказания**: недоношенность.
                                                    **Условия**:
                                                    - отсутствие плодного пузыря;
                                                    - врезавшаяся головка;
                                                    **Обезболивание**: не требуется.
                                                    **Техника выполнения**:
                                                    **Традиционно роженица лежит на спине**, головной конец приподнят, ноги согнуты в коленных и тазобедренных суставах и разведены в стороны, ступни упираются в кровать.
                                                    **Пособие можно оказывать и в положении роженицы на боку с разведенными бедрами**, а также **вертикально и на корточках – «мягкие роды»**.
                                                    К оказанию пособия приступают с момента начала прорезывания головки.
                                                    **Пособие состоит из нескольких моментов, совершаемых в определенной последовательности**:
                                                    """)).buildGrayText()
                    
                    
                        ZStack{
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                    1 момент – воспрепятствование преждевременному разгибанию головки
                                                    """)).buildBlue59Text(isTextExpanded: isTextExpanded2)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                if isTextExpanded2 {
                                    VStack {
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **Головка**, прорезываясь через половую щель, **должна пройти в состоянии сгибания**, самой наименьшей своей окружностью (**32 см**), соответствующей малому косому размеру (**9,5 см**), что предупреждает чрезмерное растяжение промежности и уменьшает давление на саму рождающуюся головку.
                                                                
                                                                **Для этого врач или акушерка встают справа от роженицы и кладут ладонь левой руки на лонное сочленение, а ладонные поверхности четырех пальцев, плотно прилегающих друг к другу, располагают плашмя на головке, закрывая всю ее поверхность, показывающуюся из половой щели** (рис. 1).
                                                                """)).buildGrayInHiddenText()
                                        
                                        Image("Akusheri1")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .cornerRadius(10)
                                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                            .padding(.horizontal, 5)
                                        
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **Во время потуги бережно** (без давления и насильственного сгибания) **задерживают преждевременное разгибание головки и при необходимости предупреждают быстрое ее продвижение по родовому каналу**. Манипуляцию выполняют **строго ладной поверхностью пальцев руки, а не кончиками пальцев**, т.к. давление последних может повредить головку.
                                                                
                                                                **Воспрепятствование разгибанию головки продолжают до тех пор, пока подзатылочная ямка не подойдет под лонное сочленение и не образует точку фиксации, а из половой щели не покажутся теменные бугры**.
                                                                """)).buildGrayInHiddenText()
                                    }
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded2.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        ZStack{
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                    2 момент – уменьшение напряжения и перерастяжения мягких тканей промежности (травмы) за счет «заимствования» из области половых губ
                                                    """)).buildBlue59Text(isTextExpanded: isTextExpanded3)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                if isTextExpanded3 {
                                    VStack {
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **С момента прорезывания головки во время потуги ладонную поверхность правой руки располагают на промежности так, чтобы четыре пальца плотно прилегали к левой стороне тазового дна в области большой половой губы, а большой, максимально отведенный палец – к правой** (рис. 2).
                                                                """)).buildGrayInHiddenText()
                                        
                                        Image("Akusheri2")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .cornerRadius(10)
                                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                            .padding(.horizontal, 5)
                                        
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **Складка между большим и указательным пальцами должна располагаться над ладьевидной ямкой промежности**. Осторожно надавливая кончиками всех пальцев на мягкие ткани вдоль больших половых губ, низводят их книзу в сторону промежности, уменьшая этим ее напряжение. **Одновременно ладонью этой же руки поддерживают промежность, бережно прижимая ее к прорезывающейся головке**. Избыток мягких тканей, так называемый „заём тканей", уменьшает напряжение промежности, восстанавливает кровообращение и предотвращает разрыв.
                                                                """)).buildGrayInHiddenText()
                                    }
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded3.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        ZStack{
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                    3 момент – регулирование потуг
                                                    """)).buildBlue59Text(isTextExpanded: isTextExpanded4)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                if isTextExpanded4 {
                                    VStack {
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **Наибольшее растяжение и угроза разрыва промежности, а так же максимальное сдавление головки и угроза внутричерепной травмы возникают, когда головка вставляется в вульварное кольцо теменными буграми**. Для предупреждения травматизма матери и плода **необходимо регулирование потуг**, т.е. ослабление или выключение их или, наоборот, удлинение и усиление.
                                                                
                                                                **После того как головка плода установилась теменными буграми в половой щели, а подзатылочная ямка подошла под лонное сочленение, обеспечивают выведение головки вне потуги**. Для этого роженицу просят **глубоко и часто дышать открытым ртом**, чтобы снизить силу потуги, так как во время такого дыхания потуги невозможны. **В это время обеими руками задерживают продвижение головки до окончания потуги**. Как только потуги закончатся, правой рукой соскальзывающими движениями осторожно снимают ткани с личика и, одновременно отпуская левую руку, расположенную на головке, позволяют разогнуться головке. **При необходимости роженицу просят произвольно потужиться с силой, достаточной для полного выведения головки из половой щели**. Таким образом, командами **"тужься", "не тужься"** достигают оптимального напряжения тканей промежности и благополучного рождения самой плотной и большой части плода – головки.
                                                                
                                                                **После рождения головки указательным пальцем убеждаются, что на шее нет пуповины. Если видна или пальпируется петля пуповины, то ее снимают через головку, при невозможности сделать это, особенно если пуповина натягивается и сдерживает продвижение плода, ее рассекают между двумя зажимами и быстро извлекают туловище ребенка**.
                                                                """)).buildGrayInHiddenText()
                                        
                                    }
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded4.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        
                        ZStack{
                            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                            VStack (spacing: 1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                                    4 момент – освобождение плечевого пояса и рождение туловища плода
                                                    """)).buildBlue59Text(isTextExpanded: isTextExpanded5)
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
                                if isTextExpanded5 {
                                    VStack {
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **После рождения головки роженице предлагают потужиться**. **Во время потуги совершается внутренний поворот плечиков и наружный поворот головки, которая поворачивается лицом к правому бедру матери при первой позиции и к левому бедру – при второй позиции**. При следующей потуге **возможно самостоятельное рождение плечиков, но если этого не происходит, то головку захватывают ладонями в области правой и левой височных костей и щечек, и легко, без насильственных тракций оттягивают книзу и кзади, пока под лонное сочленение не подойдет верхняя треть переднего плечика** (рис. 3).
                                                                """)).buildGrayInHiddenText()
                                        
                                        Image("Akusheri3")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .cornerRadius(10)
                                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                            .padding(.horizontal, 5)
                                        
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **Затем левой рукой, ладонь которой находится на нижней щечке, захватывают головку и приподнимают ее вверх, а правой рукой бережно выводят заднее плечико, снимая с него ткани промежности** (рис. 4).
                                                                """)).buildGrayInHiddenText()
                                        Image("Akusheri4")
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(Rectangle())
                                            .cornerRadius(10)
                                            .shadow(color: .shadowGrayRectangle, radius: 0.5)
                                            .padding(.horizontal, 5)
                                        
                                        MyViewBuilder(title: Text("1"),
                                                      content: Text("""
                                                                **После рождения плечевого пояса в подмышечные впадины со стороны спинки плода вводят указательные пальцы обеих рук, и туловище приподнимают кпереди** (вверх, на живот матери), **соответственно проводной оси таза**.
                                                                
                                                                **Освобождение плечевого пояса выполняют очень бережно, не растягивая шейный отдел позвоночника плода, что может привести к его травме**.
                                                                **Нельзя так же первой полностью выводить переднюю ручку из-под лонного сочленения, что может привести к ее перелому или перелому ключицы**.
                                                                
                                                                **При угрозе разрыва промежности или для предупреждения внутричерепной травмы при неподатливой промежности выполняют ее рассечение**.
                                                                """)).buildGrayInHiddenText()
                                    }
                                    .onTapGesture {
                                        withAnimation (.snappy) {
                                            isTextExpanded5.toggle()
                                        }
                                    }
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
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("Акушерское пособие")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Головное предлежание»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    PosobieGolovnoe()
}

