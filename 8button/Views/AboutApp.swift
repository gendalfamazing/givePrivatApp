//
//  Postanovlenie118Alg1View.swift
//  8button
//
//  Created by Artur Vladymcev on 27.11.23.
//

import SwiftUI

struct AboutApp: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var isTextExpanded1 = false
    @State private var isTextExpanded2 = false
    
    var body: some View {
        NavigationStack {
        ScrollView {
            VStack (spacing: 5) {
                VStack (alignment: .center){
                    Image("LaunchImage1")
                        .resizable()
                        .frame(maxWidth: 180)
                        .frame(maxHeight: 180)
                        .scaledToFit()
                        .clipShape(Rectangle())
                }
                Text("текст будет переработан, так как он спизжен :)")
                    .font(.caption)
                    .foregroundStyle(Color.red)
                ZStack{
                    MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                    VStack (spacing: 1){
                        MyViewBuilder(title: Text("1"),
                                      content: Text("""
                                                        **Приложение для работников скорой (неотложной) медицинской помощи Республики Беларусь**
                                                        """)).buildGrayInText()
                            .multilineTextAlignment(.center)
                        
                        Divider()
                            .background(Color.divider)
                            .padding(.horizontal, 5)
                        
                        MyViewBuilder(title: Text("1"),
                                      content: Text("""
                                                        Приложение содержит клинические протоколы (стандарты диагностики и лечения), приказы и постановления разработанные МЗ РБ.
                                                        Так же в приложении присутствуют шпаргалки, шкалы, различные тексты и таблицы для облегчения работы на СМП.
                                                        Приложение работает в режиме оффлайн (без интернета) и доступно для использования в любой момент времени.
                                                        """)).buildGrayInHiddenText()
                    }
                    
                }
                //                    ZStack{
                //                        MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
                //                        VStack (spacing: 1){
                //                            MyViewBuilder(title: Text("1"),
                //                                          content: Text("""
                //                                                        Данная программа предназначена для использования медицинскими работниками.
                //
                //                                                        Приложение поддерживает любое устройство под управлением ios 16 и выше.
                //
                //                                                        Лица, использующие эти данные для медицинских целей, не должны полностью полагаться на точность ограниченных здесь данных.
                //
                //                                                        Информация, имеющаяся здесь, поставляется "как есть" и без какой-либо гарантии, явной или подразумеваемой.
                //                                                        """)).buildGrayInText()
                //                                .foregroundColor(.red)
                //
                //                        }
                //
                //                    }
                Spacer(minLength: 10)
                VStack (spacing:10){
                    HStack (spacing: 5) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(maxWidth: 20)
                            .frame(maxHeight: 20)
                            .scaledToFit()
                            .clipShape(Rectangle())
                        Spacer()
                        Text("Artur Vladymcev")
                        Spacer()
                    }
                    Divider()
                        .background(Color.divider)
                    HStack (spacing: 5) {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .frame(maxWidth: 20)
                            .frame(maxHeight: 15)
                            .scaledToFit()
                            .clipShape(Rectangle())
                        Spacer()
                        Text("artur.vladymcev@mail.com")
                            .textSelection(.enabled)
                        Spacer()
                    }
                    Divider()
                        .background(Color.divider)
                    HStack (spacing: 5) {
                        Image(systemName: "location.square.fill")
                            .resizable()
                            .frame(maxWidth: 20)
                            .frame(maxHeight: 20)
                            .scaledToFit()
                            .clipShape(Rectangle())
                        Spacer()
                        Text("Belarus, Gomel")
                        Spacer()
                    }
                    Divider()
                        .background(Color.divider)
                    HStack (spacing: 5) {
                        Image(systemName: "externaldrive.fill.badge.icloud")
                            .resizable()
                            .frame(maxWidth: 20)
                            .frame(maxHeight: 15)
                            .scaledToFit()
                            .clipShape(Rectangle())
                        Spacer()
                        Text("Version: 1.0.0 (5)")
                        Spacer()
                    }
                    Divider()
                        .background(Color.divider)
                }
                .padding(.horizontal, 10)
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
        }
        
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("",displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("AmbulanceDocs")
                        .font(.headline)
                        .bold()
                    Text("«О приложении»")
                        .font(.caption2)
                }
            }
            
        }
        //        .padding(.horizontal, 200)
        //            .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
    }
        
    }
    
}
#Preview {
    AboutApp()
}

