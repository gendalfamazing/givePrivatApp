//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct PamyatkiAvarContact: View {
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
        NavigationStack {
            ScrollView {
                VStack (spacing:5)  {
                    MyViewBuilder(title: Text("Аварийный контакт"),
                                  content: Text("""
                                            **К аварийным контактам при проведении лечебно-диагностических мероприятий, а также при сборе и удалении отходов относятся:**
                                            1) **разрыв медицинских перчаток** при проведении работы с биологическим материалом;
                                            2) **проколы, порезы** колющим и режущим инструментарием;
                                            3) **попадание крови и других биологических жидкостей на слизистую оболочку и кожные покровы;**
                                            4) **разбрызгивание крови и других биологических жидкостей.**
                                            """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded1)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded1.toggle()
                            }
                        }
                    MyViewBuilder(title: Text("Профилактика аварийных контактов"),
                                  content: Text("""
                                            1. Медицинские работники должны относиться ко всем пациентам как к **возможным носителям ВИЧ**, а к крови и другим жидким средам организма как к **потенциально зараженным**, надевать перчатки (и другие необходимые СИЗ) при всех манипуляциях, не исключающих контакт с биологическими жидкостями.
                                            
                                            2. **Для предупреждения уколов иглами** не следует вновь надевать колпачки на использованные иглы перед утилизацией в непрокалываемый контейнер для отходов класса Б, так как при этом увеличивается риск травматизации.
                                            
                                            3. **Медицинские работники с травмами (ранами) на руках, экссудативным поражением кожи, мокнущими дерматитами** отстраняются на время заболевания от медицинского обслуживания больных, контакта с предметами ухода за ними.
                                            
                                            4. До начала работы необходимо **заклеить лейкопластырем все ссадины, порезы, царапины** на открытых участках тела.
                                            
                                            5. Все рабочие места должны быть обеспечены **инструктивно-методическими документами**, **дезинфицирующим раствором и аптечкой для проведения экстренных профилактических мероприятий в случае аварийных ситуаций**. Работодатель должен обеспечить своих работников защитными приспособлениями, индивидуальными средствами защиты и обучить их безопасным технологиям, но ответственность за их применение полностью лежит на самих работниках.
                                            """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded2)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded2.toggle()
                            }
                        }
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text(""),
                                  content: Text("""
                                            Алгоритмы действий при аварийных контактах
                                            """)).buildBlue591Text(isTextExpanded: isTextExpanded3)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded3.toggle()
                            }
                        }
                    if isTextExpanded3 {
                        MyViewBuilder(title: Text("При попадании биоматериала на пол, стены, мебель или оборудование"),
                                      content: Text("""
                                                - **при небольшом количестве**, обеззараживание проводится путем двукратного протирания поверхности ветошью, смоченной в дезинфицирующем растворе, используемом в учреждении;
                                                
                                                - **при обильном загрязнении** избыток влаги удаляется с поверхности сухой ветошью, а затем поверхность протирается двукратно с интервалом в 15 минут ветошью, смоченной дезинфицирующим раствором;
                                                
                                                - **загрязненную биологической жидкостью ветошь помещают в емкость с дезраствором для последующей утилизации**.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded4)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded4.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("При попадании биоматериала на одежду"),
                                      content: Text("""
                                                - **обмыть поверхность перчаток, не снимая с рук**, под проточной водой с мылом или раствором антисептика, дезинфицирующего средства;
                                                
                                                - **снять загрязненную личную одежду**;
                                                
                                                - **при незначительных загрязнениях** биоматериалом одежда снимается, помещается в пластиковый пакет до проведения стирки (в прачечной или в домашних условиях);
                                                
                                                - **при значительном загрязнении** одежда предварительно (перед стиркой) замачивается одним из дезинфектантов, используемых в учреждении (кроме 6%-й перекиси водорода и нейтрального гидрохлорида кальция, которые разрушают ткани);
                                                
                                                - личная одежда, загрязненная биологической жидкостью, подвергается стирке в горячей воде (не ниже 70°С) с моющим средством в стиральной машине;
                                                
                                                - **кожа рук и других участков тела под местом загрязнения протирается дезинфектантом (из аптечки)**, промывается с мылом и повторно протирается дезинфектантом, после этого можно принять душ;
                                                
                                                - **после окончания работы перчатки, не снимая, обработать 3%-м раствором хлорамина**, затем снять их рабочей поверхностью внутрь;
                                                
                                                - **перчатки, а также использованную ветошь, необходимо поместить в непромокаемый пакет** для последующего обеззараживания;
                                                
                                                - **вымыть руки с мылом под проточной водой и обработать кожные покровы в области проекции загрязнения личной одежды**.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded5)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded5.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("При попадании биоматериала на обувь"),
                                      content: Text("""
                                                - **обмыть поверхность перчаток, не снимая с рук**, под проточной водой с мылом или раствором антисептика, дезинфицирующего средства;
                                                
                                                - **загрязненная обувь двукратно, с интервалом в 15 минут, протирается ветошью**, смоченной в растворе дезинфицирующих средств (например, 3%-м растворе хлорамина);
                                                
                                                - **после окончания работы перчатки, не снимая, обработать 3%-м раствором хлорамина**, затем снять их рабочей поверхностью внутрь, погрузить их в емкость с дезинфицирующим раствором или поместить в непромокаемый пакет для последующего обеззараживания;
                                                
                                                - **перчатки, а также использованную ветошь, необходимо поместить в непромокаемый пакет** для последующего обеззараживания;
                                                
                                                - **вымыть руки с мылом под проточной водой и обработать кожные покровы в области проекции загрязнения обуви**.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded6)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded6.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("При попадании биоматериала на слизистые оболочки"),
                                      content: Text("""
                                                - **ротовая полость**: выплюнуть попавшую в рот жидкость, обильно прополоскать рот водой, затем 70% раствором спирта;
                                                
                                                - **полость носа**: закапать 20-30%-й раствор альбуцида;
                                                
                                                - **глаза**: промыть водой (не тереть), после чего закапать 20-30%-й раствор альбуцида;

                                                Для промывания рекомендуется подготовить флакон с физраствором и инфузионную систему без иглы, сесть, запрокинув голову осторожно полить на глаза воду (попросить коллегу), по очереди оттягивая верхнее и нижнее веко. **Наконечник системы направлять так, чтобы физраствор вытекал с наружной стороны глаза**.

                                                **ВАЖНО! Не снимайте контактные линзы на время промывания, они создают защитный барьер. После промывания глаз контактные линзы необходимо снять и стандартно обработать (после обработки они безопасны для использования)**.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded7)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded7.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("При попадании крови или других биологических жидкостей на неповрежденную кожу"),
                                      content: Text("""
                                                - **срочно обработать место загрязнения одним из дезинфектантов** (3%-м раствором перекиси водорода, 3%-м раствором хлорамина, 70% спиртом);
                                                
                                                - **затем промыть под водой (желательно проточной) с мылом и повторно обработать спиртом или другим дезинфектантом.**
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded8)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded8.toggle()
                                }
                            }
                        MyViewBuilder(title: Text("При уколе, порезе"),
                                      content: Text("""
                                                - **снять перчатки рабочей поверхностью внутрь**;
                                                
                                                - **вымыть руки с мылом под проточной водой** и обильно промыть рану водой или физиологическим раствором;
                                                
                                                - **поврежденное место обработать одним из дезинфектантов** (3%-м раствором перекиси водорода, 70%-м этиловым спиртом);
                                                
                                                - **на рану наложить лейкопластырь, надеть напальчник**;
                                                
                                                - **при необходимости продолжить работу** – надеть новые перчатки.
                                                """)).buildDualBlockBlueGrayLowLevel(isTextExpanded: isTextExpanded9)
                            .onTapGesture {
                                withAnimation (.snappy) {
                                    isTextExpanded9.toggle()
                                }
                            }
                    }
                    Spacer(minLength: 15)
                    MyViewBuilder(title: Text("Дальнейшие действия при аварийной ситуации"),
                                  content: Text("""
                                            • Во всех лечебно-профилактических учреждениях необходимо вести **«ЖУРНАЛ регистрации аварийных контактов работников организаций здравоохранения с биологическим материалом пациентов»**.
                                            
                                            • **Регистрации в журнале подлежат аварийные ситуации, связанные с попаданием большого количества крови или другого биологического материала на обширную раневую поверхность**.
                                            
                                            • **После регистрации контакта медработникам предлагается пройти тестирование на наличие антител к ВИЧ, ПВГ для определения исходного ВИЧ, ПВГ-статуса.**
                                            
                                            • **Параллельно проводится обследование на ВИЧ и ПВГ пациента**, с биологическими жидкостями которого произошел контакт.
                                            
                                            • **Первое обследование медицинского работника проводится непосредственно после аварии.** Положительный результат будет свидетельствовать о том, что работник инфицирован, но авария не является причиной заражения. Если результат отрицательный, **повторное обследование проводится через 6 месяцев.**
                                            
                                            • **Проведение лабораторного обследования работника организации здравоохранения и пациента на маркеры ПВГ не позднее 24 часов после аварийного контакта.** Положительный результат лабораторного обследования свидетельствует, что инфицирование ПВГ произошло ранее и не имеет связи с данным аварийным контактом. **В случае получения отрицательных результатов повторные обследования проводятся через 3, 6, 12 месяцев.**
                                            
                                            • **В случае аварийного контакта ранее не привитого медицинского работника с биологическим материалом пациента инфицированного вирусом гепатита В рекомендуется проведение постэкспозиционной вакцинации по ускоренной схеме** в соответствии с рекомендациями производителя вакцины. Первая доза вакцины вводится в максимально короткий срок после аварийного контакта.
                                            
                                            • Результаты обследования медицинских работников на ВИЧ-инфекцию являются строго конфиденциальными.
                                            
                                            • Сотруднику на период наблюдения запрещается сдача донорской крови (тканей, органов).
                                            
                                            • **О произошедшей аварии и проведенных в связи с этим мероприятиях, немедленно информируется руководитель учреждения и председатель комиссии по внутрибольничным инфекциям.**
                                            """)).buildDualBlockBlueGray(isTextExpanded: isTextExpanded10)
                        .onTapGesture {
                            withAnimation (.snappy) {
                                isTextExpanded10.toggle()
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
                    Text("Контакт с биологическим материалом")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    //
                }
            }
            
        }
    }
    
}
#Preview {
    PamyatkiAvarContact()
}

