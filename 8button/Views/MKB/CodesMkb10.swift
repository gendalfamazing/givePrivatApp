//
//  PrikazyPostanovleniya.swift
//  7button
//
//  Created by Artur Vladymcev on 21.11.23.
//

import SwiftUI
import SwiftData

struct CodesMkb10: View {
    
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
    var body: some View {
        ScrollView {
            Spacer()
            VStack(spacing: 5){
                
                MyViewBuilder(title: Text("A00-B86"), content: Text("**Инфекционные и паразитарные болезни**")).buildTitleCodes(isTextExpanded: isTextExpanded1)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded1.toggle()
                        }
                    }
                if isTextExpanded1{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb1(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded1.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("C80-D48"), content: Text("**Новообразования**")).buildTitleCodes(isTextExpanded: isTextExpanded2)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded2.toggle()
                        }
                    }
                if isTextExpanded2{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb2(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded2.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("D50-D68"), content: Text("**Болезни крови,кроветворных органов**")).buildTitleCodes(isTextExpanded: isTextExpanded3)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded3.toggle()
                        }
                    }
                if isTextExpanded3{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb3(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded3.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("E05-E43"), content: Text("**Болезни эндокринной системы**")).buildTitleCodes(isTextExpanded: isTextExpanded4)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded4.toggle()
                        }
                    }
                if isTextExpanded4{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb4(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded4.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("F03-F99"), content: Text("**Психические расстройства и расстройства поведения**")).buildTitleCodes(isTextExpanded: isTextExpanded5)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded5.toggle()
                        }
                    }
                if isTextExpanded5{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb5(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded5.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("G00-G95"), content: Text("**Болезни нервной системы**")).buildTitleCodes(isTextExpanded: isTextExpanded6)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded6.toggle()
                        }
                    }
                if isTextExpanded6{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb6(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded6.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("H00-H57"), content: Text("**Болезни глаза и его придаточного аппарата**")).buildTitleCodes(isTextExpanded: isTextExpanded7)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded7.toggle()
                        }
                    }
                if isTextExpanded7{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb7(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded7.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("H60-H93"), content: Text("**Болезни уха и сосцевидного отростка**")).buildTitleCodes(isTextExpanded: isTextExpanded8)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded8.toggle()
                        }
                    }
                if isTextExpanded8{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb8(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded8.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("I01-I95"), content: Text("**Болезни системы кровообращения**")).buildTitleCodes(isTextExpanded: isTextExpanded9)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded9.toggle()
                        }
                    }
                if isTextExpanded9{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb9(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded9.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("J00-J98"), content: Text("**Болезни органов дыхания**")).buildTitleCodes(isTextExpanded: isTextExpanded10)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded10.toggle()
                        }
                    }
                if isTextExpanded10{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb10(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded10.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("K00-K92"), content: Text("**Болезни органов пищеварения**")).buildTitleCodes(isTextExpanded: isTextExpanded11)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded11.toggle()
                        }
                    }
                if isTextExpanded11{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb11(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded11.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("L02-L74"), content: Text("**Болезни кожи и подкожной клетчатки**")).buildTitleCodes(isTextExpanded: isTextExpanded12)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded12.toggle()
                        }
                    }
                if isTextExpanded12{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb12(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded12.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("M06-M86"), content: Text("**Болезни костно-мышечной системы и соед.ткани**")).buildTitleCodes(isTextExpanded: isTextExpanded13)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded13.toggle()
                        }
                    }
                if isTextExpanded13{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb13(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded13.toggle()
                        }
                    }
                }
                
                MyViewBuilder(title: Text("N00-N99"), content: Text("**Болезни мочеполовой системы**")).buildTitleCodes(isTextExpanded: isTextExpanded14)
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded14.toggle()
                        }
                    }
                if isTextExpanded14{
                    VStack(spacing: 1) {
                        ForEach(CodeMkb.getCodeMkb14(), id: \.id) { name in
                            MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                        }
                    }
                    .background(Color.back)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                        )
                    .onTapGesture {
                        withAnimation (.easeInOut) {
                            isTextExpanded14.toggle()
                        }
                    }
                }
                CodesMkb10Part2()
                
                
                
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 55)
            
            
            
        }
        
        
        
        //            .padding(.horizontal, 200)
        .background(colorScheme == .dark ? Color(red: 0, green: 0, blue: 0) : Color(red: 0.9568627450980393, green: 0.9529411764705882, blue: 0.9764705882352941))
        .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
        //        .edgesIgnoringSafeArea(.bottom)
        .background(Color.back)
        .navigationBarBackButtonHidden(false)
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text("МКБ-10")
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                    Text("""
                    «Краткий справочник заболеваний»
                    """)
                    .font(.caption2)
                    .foregroundStyle(Color.toolBar)
                }
            }
            
        
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: SearchCode()) {
                    Image(systemName: "textformat.abc")
                        .foregroundColor(.blue)
                    
                }
            }
        }
        
    }
    
}

#Preview {
    CodesMkb10()
}


struct CodesMkb10Part2: View {
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
    
    var body: some View {
        MyViewBuilder(title: Text("O00-O80"), content: Text("**Беременность, роды и послеродовой период**")).buildTitleCodes(isTextExpanded: isTextExpanded15)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded15.toggle()
                }
            }
        if isTextExpanded15{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb15(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded15.toggle()
                }
            }
        }
        
        MyViewBuilder(title: Text("P38-P38"), content: Text("**Отдельные состояния (перинатальный период)**")).buildTitleCodes(isTextExpanded: isTextExpanded16)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded16.toggle()
                }
            }
        if isTextExpanded16{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb16(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded16.toggle()
                }
            }
        }
        
        MyViewBuilder(title: Text("P95-Q90"), content: Text("**Врожденные аномалии (пороки развития)**")).buildTitleCodes(isTextExpanded: isTextExpanded17)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded17.toggle()
                }
            }
        if isTextExpanded17{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb17(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded17.toggle()
                }
            }
        }
        
        MyViewBuilder(title: Text("R04-R99"), content: Text("**Симптомы, признаки и отклонения от нормы**")).buildTitleCodes(isTextExpanded: isTextExpanded18)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded18.toggle()
                }
            }
        if isTextExpanded18{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb18(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded18.toggle()
                }
            }
        }
        
        MyViewBuilder(title: Text("S00-T94"), content: Text("**Травмы, отравления и др.**")).buildTitleCodes(isTextExpanded: isTextExpanded19)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded19.toggle()
                }
            }
        if isTextExpanded19{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb19(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded19.toggle()
                }
            }
        }
        
        MyViewBuilder(title: Text("Z51-Z99"), content: Text("**Факторы, влияющие на состояние здоровья**")).buildTitleCodes(isTextExpanded: isTextExpanded20)
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded20.toggle()
                }
            }
        if isTextExpanded20{
            VStack(spacing: 1) {
                ForEach(CodeMkb.getCodeMkb20(), id: \.id) { name in
                    MyViewBuilder(title: Text(name.code), content: Text(name.name)).buildTableCodes()
                }
            }
            .background(Color.back)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                                )
            .onTapGesture {
                withAnimation (.easeInOut) {
                    isTextExpanded20.toggle()
                }
            }
        }
        
    }
}
