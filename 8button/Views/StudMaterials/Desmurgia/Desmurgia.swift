//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct Desmurgia: View {
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
    @State private var isTextExpanded11 = false
    @State private var isTextExpanded12 = false
    @State private var isTextExpanded13 = false
    @State private var isTextExpanded14 = false
    @State private var isTextExpanded15 = false
    @State private var isTextExpanded16 = false
    @State private var isTextExpanded17 = false
    @State private var isTextExpanded18 = false
    @State private var isTextExpanded19 = false
    @State private var isTextExpanded20 = false
    @State private var isTextExpanded21 = false
    @State private var isTextExpanded22 = false
    @State private var isTextExpanded23 = false
    @State private var isTextExpanded24 = false
    @State private var isTextExpanded25 = false
    @State private var isTextExpanded26 = false
    @State private var isTextExpanded27 = false
    @State private var isTextExpanded28 = false
    @State private var isTextExpanded29 = false
    @State private var isTextExpanded30 = false
    
    var body: some View {
        ScrollView {
            VStack (spacing:5) {
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка «Чепец»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded1)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        if isTextExpanded1{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показание**:
                                        Повязка «чепец» накладывается при ранении головы (для остановки кровотечения и фиксации перевязочного материала) или при нагноительных процессах в области свода черепа — теменная область.
                                        
                                        **Оснащение**: бинт шириной 10 см., бинтовая полоска длинной 80 см ножницы.
                                        
                                        **Последовательность действий**
                                        1. Усадить пациента лицом к себе, успокоить, объяснить ход предстоящей манипуляции.
                                        2. Измерить и отрезать часть бинта длиной 80 см.
                                        3. Расположить середину отрезка бинта на теменную область головы; концы бинта удерживают руки пациента или помощника.
                                        4. Взять начало бинта в левую руку, головку бинта — в правую.
                                        5. Сделать закрепляющий тур вокруг лба и затылка, дойдя до завязки, обернуть бинт вокруг завязки и вести по затылку до завязки с другой стороны.
                                        6. Обернуть бинт снова вокруг завязки и вести по лобной части головы выше закрепляющеготура.Аналогично вести бинт по затылочной части головы.
                                        7.Повторить циркулярные ходы вокруг головы, прикрывая предыдущий ход на 1/2 или 2/3 до полного покрытия головы.
                                        8. Закрыть полностью повторными ходами бинта волосистую часть головы.
                                        9. Закончить бинтование двумя закрепляющими турами и зафиксировать конец бинта у одной из завязок
                                        10. Завязать с боку подбородка отрезок бинта, концы которого удерживал пациент.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia1")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                                
                                    
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded1.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка «Уздечка»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded2)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        if isTextExpanded2{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        повреждения лица, нижней челюсти, лобной части головы.
                                        
                                        **Оснащение**: бинт шириной 7 - 10 см, булавка или лейкопластырь, ножницы.
                                        
                                        **Схема наложения повязки Уздечка**
                                        1. Усадить пациента лицом к себе. Первый тур, закрепляющий, наложить циркулярно вокруг головы через лобные и затылочные бугры.
                                        2. Провести бинт косо по затылочной области на боковую поверхность шеи, под ушной раковиной к подбородку и вертикально вверх на противоположной стороне лица спереди от противоположной ушной раковины.
                                        3. Сделать нужное количество (в зависимости от повреждения) вертикальных круговых ходов через теменную и подбородочную области, спереди ушных раковин.
                                        4. Из-под подбородочной области вывести бинт на затылок, провести косо вверх, выйти на лоб.
                                        5. Сделать циркулярные ходы вокруг головы через затылочные и лобные бугры.
                                        6.Зафиксировать конец бинта на лобной части головы вне раневой поверхности.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia2")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                                
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded2.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка на один глаз «Монокулярная»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded3)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        if isTextExpanded3{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        закрепление перевязочного материала в области глаза при его повреждениях и заболеваниях.
                                        
                                        **Оснащение**: бинт шириной 15 - 20 см, ватно-марлевая прокладка, лейкопластырь или булавка, ножницы.
                                        
                                        **Прежде чем произвести бинтование пораженного глаза необходимо прикрыть глаз защитной или лечебной ватно-марлевой прокладкой**.
                                        Имеется две схемы наложения данной повязки в зависимости от направления косых циркулярных туров, непосредственно закрывающих глаз (сверху вниз или снизу вверх).
                                        **Особенности при наложении косых циркулярных ходов на один глаз сверху вниз**: бинтовать левый глаз удобнее справа налево (относительно пациента), правый глаз - слева направо, а при наложении косых ходов снизу вверх то - наоборот, бинтовать левый глаз следует слева направо, правый глаз - справа налево.
                                        
                                        **Техника наложения повязки на один глаз**:
                                        1. Сделать циркулярный закрепляющий ход вокруг головы через лобные и затылочные бугры, начиная со стороны больного глаза.
                                        2. Опустить бинт вниз косо по направлению к затылку и вести его под мочкой ушной раковины с больной стороны косо вниз по щеке, закрывая этим ходом больной глаз.
                                        3. Косой ход закрепляют круговым - закрепляющим туром бинта вокруг лобной и затылочной области головы. Далее делают поочередно косой ход (перекрывающий немного предыдущий косой ход) и круговой ход вокруг головы
                                        4. Повторяя данные циркулярные ходы вокруг головы и через область глаза необходимое количество раз достигают закрытия больного глаза. Фиксируют повязку, разрезав конец бинта и завязав на узел (с другой стороны от поврежденного глаза).
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia3")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.leading, 10)
                                    .padding(.vertical, 10)
                                Image("desmurgia4")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.trailing, 10)
                                    .padding(.vertical, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded3.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка на оба глаза «Бинокулярная»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        if isTextExpanded4{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания для наложения повязки на оба глаза**:
                                        закрепление перевязочного материала в области глаз при их повреждениях и заболеваниях, послеоперационный период.
                                        
                                        **Оснащение**: бинт шириной 10 - 20 см, изоляционные ватно-марлевые прокладки, ножницы, лейкопластырь или булавка.
                                        
                                        **Техника наложения бинокулярной повязки**:
                                        1. Перед наложением повязки необходимо усадить пациента лицом к себе. Глаза прикрывают ватно-марлевыми прокладками.
                                        2. Повязку на оба глаза начинают с циркулярного закрепляющего тура вокруг головы через лобные и затылочные бугры. Бинтуют слева направо.
                                        3. В области затылка бинт спускают косо вниз
                                        4. Затем выводят бинт под мочкой уха, введя косо вверх по правой щеке через лицевую область, закрывая при этом правый глаз, на лоб.
                                        5. Сделав циркулярный (круговой) ход вокруг головы, ведут бинт через лицевую область косо вниз через левый глаз под мочку уха на затылок.
                                        6. Таким образом чередуем туры, несколько накладывая их друг на друга прикрывая оба глаза, до полного закрывания глазниц.
                                        7. В конце укрепляем повязку круговым горизонтальным туром и фиксируем повязку.
                                        При наложении повязки не следует накладывать туры на ушные раковины.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia5")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.leading, 10)
                                    .padding(.vertical, 10)
                                Image("desmurgia6")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.trailing, 10)
                                    .padding(.vertical, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Крестообразная повязка на затылок и шею
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        if isTextExpanded5{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        для удержания стерильной салфетки при ранениях или воспалительных процессах на затылке и задней поверхности шеи.
                                        
                                        **Оснащение**: почкообразный тазик со стерильной салфеткой, пинцетом, стандартный бинт шириной 7-10 см, ножницы.
                                        
                                        **Последовательность действий**:
                                        1.Встать лицом к пациенту;
                                        2.Сделать 2 закрепляющих циркулярных круга вокруг головы через лоб и затылок;
                                        3.Попросить пациента положить под подбородок два пальца или положить свернутую валиком салфетку, чтобы повязка не сдавливала шею;
                                        4.После циркулярного тура провести косой тур выше и позади уха по затылку вниз на шею;
                                        5.Вести тур, огибая шею спереди по подложенным пальцам пациента и вернуться на затылок с другой стороны вверх и выше другого уха;
                                        6.Повторить все туры, пока не будет закрыта вся область, закрепить повязку вокруг головы, срезать ножницами излишки бинта; попросить пациента убрать свои пальцы из-под подбородка или удалить свернутую салфетку;
                                        7.Проверить, не давит ли повязка.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia7")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.leading, 10)
                                    .padding(.vertical, 10)
                                Image("desmurgia8")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.trailing, 10)
                                    .padding(.vertical, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Колосовидная повязка на плечевой сустав
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        if isTextExpanded6{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показание**:
                                        раневая поверхность в области плеча.
                                        
                                        **Оснащение**: бинт шириной 20 см.
                                        
                                        **Последовательность действий**:
                                        1. Усадить пациента лицом к себе, успокоить, объяснить ход предстоящей манипуляции.
                                        2. Взять начало бинта в левую руку, головку бинта — в правую.
                                        3. Опустить конечность вдоль туловища,
                                        4. Приложить бинт к нижней трети плеча (правая рука бинтуется слева направо, левая — справа налево)
                                        5. Сделать два закрепляющих тура бинта вокруг нижней трети плеча.
                                        6. Вести бинт с плеча на грудь в здоровую подмышечную впадину, сзади по спине и снова — на плечо.
                                        7. Обвести бинт вокруг плеча, закрывая каждый предыдущий тур на 2/3 ширины бинта.
                                        8. Повторять ходы бинта, поднимаясь с плеча к плечевому суставу, пока не закроется вся раневая поверхность.
                                        9. Зафиксировать повязку, прикрепив конец бинта булавкой.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia9")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        «Черепашья» (расходящаяся) на коленный сустав
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        if isTextExpanded7{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показание**:
                                        раневая поверхность в области коленного сустава.
                                        
                                        **Оснащение**: бинт шириной 20 см.
                                        
                                        **Последовательность действий при наложении черепашьей повязки на коленный сустав**
                                        Усадить пациента лицом к себе, успокоить, объяснить ход предстоящей манипуляции.
                                        1. Согнуть коленный сустав под углом 160 градусов
                                        2. Взять начало бинта в левую руку, головку бинта в правую
                                        3. Приложить бинт к коленному суставу
                                        4. Сделать два закрепляющих тура бинта вокруг коленного сустава
                                        5. Перевести бинт с коленного сустава на нижнюю треть бедра
                                        6. Пересечь сгибательную поверхность коленного сустава и перейти на верхнюю треть голени
                                        7. Перевести бинт с голени через подколенную ямку на бедро, прикрываяпредыдущий тур на 1/2
                                        8. Перевести бинт с бедра через подколенную ямку на голень, прикрывая предыдущий тур на 1/2
                                        9. Вести бинт попеременно на бедро и голень, перекрещиваясь в подколенной ямке.
                                        10. Закрепить повязку в нижней трети бедра.
                                        11. Разрезать конец бинта и завязать концы на узел.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia10")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        «Черепашья» (сходящаяся) на локтевой сустав
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        if isTextExpanded8{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показание**:
                                        ранение выше или ниже локтевого сустава.
                                        
                                        **Оснащение**: бинт шириной 20 см.
                                        
                                        **Последовательность действий при наложении черепашьей повязки на локтевой сустав**:
                                        1. Усадить пациента лицом к себе, успокоить, объяснить ход предстоящей манипуляции.
                                        2. Согнуть конечность в коленном суставе под углом 200.
                                        3. Взять начало бинта в левую руку, головку бинта — в правую. Бинтовать слева направо.
                                        4. Прило: жить бинт к верхней трети предплечья.
                                        5. Сделать два закрепляющих тура бинта вокруг предплечья.
                                        6. Пересечь сгибательную поверхность локтевого сгиба и перейти на нижнюю треть плеча.
                                        7. Наложить ходы бинта на плечо и предплечье друг на друга, постепенно сближаясь после восьмиобразных перекрестов над сгибательной поверхностью локтевого сустава.
                                        8. Закрыть локтевой сустав, опустившись в область предплечья, в место начала повязки.
                                        9. Зафиксировать повязку, разрезать конец бинта и завязать концы на узел.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia11")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка на все пальцы кисти «Перчатка»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded9.toggle()
                                }
                            }
                        if isTextExpanded9{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        при ожогах, ранениях и воспалительных заболеваниях пальцев кисти.
                                        
                                        **Оснащение**: почкообразный тазик со стерильными салфетками, пинцетом. Стандартный бинт шириной 3-5 см, ножницы.
                                        
                                        **Последовательность действий**:
                                        1.Встать лицом к пациенту и повернуть его кисть ладонью вниз;
                                        2.Наложить стерильные салфетки на раны пальцев;
                                        3.Сделать первый циркулярный (фиксирующий) тур вокруг запястья;
                                        4.Начинать повязку на левой руке с пятого пальца, а на правой - с большого пальца;
                                        5.Провести второй тур косо по тыльной поверхности кисти к ногтевой фаланге соответствующего пальца;
                                        6.Сделать несколько туров вокруг пальца от его конца до основания;
                                        7.Возвращаться от основания пальца по тылу кисти на запястье;
                                        8.Сделать циркулярный тур вокруг запястья и вести бинт к ногтевой фаланге следующего пальца. Чередовать ходы бинта, пока не забинтуются все пальцы. Фиксировать повязку циркулярным туром на запястье. Излишки бинта срезать ножницами.
                                        """)).buildGrayInHiddenText()
                                Image("desmurgia12")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded9.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Возвращающаяся повязка на кисть и культю
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded10)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded10.toggle()
                                }
                            }
                        if isTextExpanded10{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        Возвращающуюся повязку накладывают на культю конечности после ампутации.
                                        
                                        **Техника наложения повязки**:
                                        1.Начинают повязку с одного - двух круговых закрепляющих ходов у основания культи.
                                        2.Затем, придержав часть бинта у головки, делают перегиб и под прямым углом к циркулярному ходу ведут продольный ход через всю культю на противоположную сторону вплоть до того же циркулярного хода.
                                        3. Сделав здесь перегиб, снова бинтуют циркулярно и далее чередуют продольные ходы с циркулярными. Последние по мере бинтования опускают всё ниже. Когда продольные ходы закроют полностью конец культи, повязку заканчивают круговыми ходами бинта.
                                        4.Часть туров бинтования накладывается вертикально через торец культи, пальца, кисти, стопы. Фиксация производится горизонтальными турами у основания бинтуемой части тела пациента.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia13")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.leading, 10)
                                    .padding(.vertical, 10)
                                Image("desmurgia14")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.trailing, 10)
                                    .padding(.vertical, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded10.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Повязка «Дезо»
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded11)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded11.toggle()
                                }
                            }
                        if isTextExpanded11{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания к повязке Дезо**:
                                        иммобилизация верхней конечности к грудной клетке при переломах ключицы, а также после вправления вывиха плеча.
                                        
                                        При наложении повязки верхней конечности придается физиологическое положение.
                                        Сначала фиксируется плечо к туловищу, затем удерживается лучезапястный сустав и, наконец, локтевой сустав поврежденной стороны. Суставы здоровой верхней конечности остаются свободными, и, пациент может производить любые движения здоровой рукой.
                                        
                                        **Оснащение**: бинт шириной 20 см, ватно-марлевый валик, ножницы, булавка или лейкопластырь.
                                        
                                        **Примечание**: Закрепляющий тур бинта всегда проводят к больной руке вокруг туловища, плотно прижимая им плечо к грудной клетке. При наложении повязки на левую руку ходы бинта идут слева направо, а при бинтовании правой руки - справа налево, руке придают согнутое положение в локтевом суставе под прямым углом, локоть отводят несколько назад, а плечо в процессе бинтования приподнимают кверху.
                                        
                                        **Техника наложения повязки Дезо**:
                                        1.Повязку Дезо накладывают после предварительного вкладывания в подмышечную впадину валика из ваты, обернутого марлей. После осторожно согнуть поврежденную конечность в локтевом суставе, привести и прижать к груди.
                                        2.Сделать два закрепляющих тура бинта по груди, больной руке в области плеча, спине и подмышечной впадине со стороны здоровой конечности.
                                        3.Вести бинт через подмышечную впадину здоровой стороны по передней поверхности груди косо на надплечье больной стороны.
                                        4.Опустить бинт вниз по задней поверхности больного плеча под локоть.
                                        5.Обогнуть локтевой сустав и, поддерживая предплечье, направить бинт косо в подмышечную впадину здоровой стороны. Вести бинт из подмышечной впадины по спине на больноенадплечье.
                                        6.Вести бинт с надплечья по передней поверхности больного плеча под локоть и обогнуть предплечье. Направить бинт по спине в подмышечную впадину здоровой стороны. Повторять туры бинта до полной фиксации плеча.
                                        7.Закончить повязку двумя закрепляющими турами по груди, больной руке в области плеча, спины. Заколоть конец повязки булавкой. Если повязка наложена на длительное время, туры бинта следует прошить.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia15")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded11.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Восьмиобразная повязка на голеностопный сустав
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded12)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                        if isTextExpanded12{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**: 
                                        травмы в области голеностопного сустава.
                                        
                                        **Осложнение**: нарушение кровообращения тугой повязкой.
                                        
                                        **Оснащение**: маска, перчатки, кожный антисептик, стерильный материал, пинцеты, бинты.
                                        
                                        **Техника наложения повязки**:
                                        1.встать лицом к пациенту;
                                        2.положить салфетку на область раны;
                                        3.придать конечности среднее положение, при котором человек сможет передвигаться и выполнять необходимые физиологические потребности; сначала сделать два фиксирующие циркулярные обхваты бинтом;
                                        4.далее круговыми движениями вести последующие туры вокруг поврежденного сустава;
                                        5. закончить повязку первым туром вокруг голени, зафиксировать закрепляющей скобой или булавкой, категорически нельзя запускать один конец за другой, во избежание нарушения действия бинтового слоя на сустав больного.
                                        
                                        **Примечание**: Наложение восьмиобразной повязки полностью ограничивает движение поврежденного сустава, что позволяет избежать негативных последствий при повторномтравмировании этого участка. Накладывается восьмиобразная повязка перекрестным образом, техника наложения на все части тела одинаковая.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia16")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.leading, 10)
                                    .padding(.vertical, 10)
                                Image("desmurgia17")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.trailing, 10)
                                    .padding(.vertical, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded12.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Пращевидная повязка на нос, подбородок
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded13)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded13.toggle()
                                }
                            }
                        if isTextExpanded13{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Пращевидная повязка** — это полоска ткани, которая рассечена с обоих концов в продольном направлении. В центре находится не рассеченный материал. Пращевидную повязку очень удобно накладывать на те части тела, которые выступают (голова). Зафиксировать этот перевязочный материал при помощи лейкопластыря либо клея невозможно, а бинтовые повязки ненадежны и очень громоздки.
                                        
                                        **Показания**:
                                        ранения в области носа; рана в области подбородка; затылочная часть.
                                        
                                        **Необходимо иметь**: пинцет, почкообразный тазик, стерильную салфетку. Берется бинтовая полоса, ширина которой составляет от 6 до 8 сантиметров, а длинна 50-70 сантиметров для того, чтобы можно было зафиксировать повязку в области подбородка либо же носа. Для фиксации повязок на затылке или лбу нужно взять бинт, ширина которого равняется 15-20 сантиметрам, длиной до 1 метра.
                                        
                                        **Последовательность действий**:
                                        1.Разрезается бинт с обеих сторон вдоль, в центре остается неразрезанная часть длинной в 15-20 сантиметров (готовится «праща»);
                                        2.Встать лицом к больному;
                                        3.Взять стерильный пинцет и, придерживая им стерильную салфетку, накрыть рану;
                                        4.В поперечном направлении положить пращу на салфетку, попарным образом связать концы пращи: нижние должны находиться наверху противоположной стороны головы, верхние должны быть в нижней части.
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia18")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded13.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Косыночная повязка на молочную железу
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded14)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded14.toggle()
                                }
                            }
                        if isTextExpanded14{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        в качестве оказания первой доврачебной помощи.
                                        
                                        **Оснащение**: понадобится любой кусок ткани или платок, желательно стерильный, который складывается по диагонали. Его длинная сторона выступает основанием, острые края – концами, а тупые – вершиной.
                                        
                                        **Техника наложения повязки**:
                                        1)при повреждении левой молочной железы:
                                        - вершину протягивают через левое плечо за спину;
                                        - концы перетягивают наискось, таким образом, косынка полностью прикрывает левую молочную железу и надежно поддерживает ее;
                                        - вершину и два конца, выведенные за спину, завязывают так, чтобы косынка хорошо фиксировала грудь.
                                        2) при повреждении правой молочной железы:
                                        - вершина должна располагаться выше поврежденной поверхности;
                                        - один конец протягивает через левое плечо, другой – через подмышечную впадину;
                                        - углы косынки фиксируются на шее, при этом грудь, не подвергшаяся ранению или травме, остается полностью открытой.
                                        """)).buildGrayInHiddenText()
                                VStack {
                                Image("desmurgia19")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 10)
                                    .padding(.top, 10)
                                Image("desmurgia20")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded14.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                    VStack  {
                        MyViewBuilder(title: Text("Проведение"),
                                      content: Text("""
                                        Наложение лейкопластырной повязки
                                        """)).buildBlue592Text(isTextExpanded: isTextExpanded15)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded15.toggle()
                                }
                            }
                        if isTextExpanded15{
                            LazyVStack (spacing:1){
                                MyViewBuilder(title: Text(""),
                                              content: Text("""
                                        **Показания**:
                                        Лейкопластырная повязка применяется обычно при небольших ранах или острых гнойных процессах.
                                        
                                        Материал, который накладывается на рану, нужно зафиксировать при помощи полосок пластыря, а концы наложить на сухие и здоровые участки кожи. Применяется и бактерицидный пластырь. Он представляет собой готовую повязку с лейкопластырной основой и стерильной марлей.
                                        
                                        Существуют также и фирменные лейкопластыри, в центре которых находятся разнообразный по форме перевязочный материал. Благодаря данному пластырю существенно упрощается сам процесс перевязки, так как нет необходимости в наложении стерильных салфеток. Хорошие рекомендации получил перфорированный лейкопластырь под названием «Лейкопор» на бумажной основе.
                                        
                                        **Функциями пластыря являются**: фиксирование перевязочного материала, иммобилизация, стягивание края раны или по-другому так называемый «бескровный шов».
                                        """)).buildGrayInHiddenText()
                                HStack {
                                Image("desmurgia21")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.vertical, 10)
                                    .padding(.leading, 10)
                                Image("desmurgia22")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Rectangle())
                                    .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                    )
                                    .padding(.vertical, 10)
                                    .padding(.trailing, 10)
                            }
                            }
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded15.toggle()
                                }
                            }
                        }
                    }
                    .background(Color.grayButton)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                
                
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
                    Text("Десмургия")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Пособие по Десмургии»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        }
    }
    
}
#Preview {
    Desmurgia()
}


