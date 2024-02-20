//
//  ViewBuilder.swift
//  8button
//
//  Created by Artur Vladymcev on 3.12.23.
//

import SwiftUI


// Протокол для объектов, которые могут создавать представление
protocol ViewBuilder1 {
    associatedtype Content: View
    func buildBlueText() -> Content
    
}

// Класс, реализующий протокол ViewBuilder
class MyViewBuilder: ViewBuilder1 {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let title: Text
    private let content: Text
    
    init(title: Text, content: Text) {
        
        self.title = title
        self.content = content
    }
    
    
    func buildBlueText() -> some View {
        
        return content
            .padding(7.0)
            .lineLimit(2)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .fontWeight(.semibold)
            .frame(minHeight: 50)
            .modifier(ThemeBlueColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(radius: 2)
        
    }
    
    func buildBlue1Text(isTextExpanded: Bool) -> some View {
        
        return content
            .padding(7.0)
            .lineLimit(2)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .fontWeight(.semibold)
            .frame(minHeight: 49)
            .frame(minWidth: 49)
            .modifier(ThemeBlueColorModifier())
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle3, Color.toggle]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.blueButton, Color.blueButton]), startPoint: .leading, endPoint: .trailing))
        //            .background(isTextExpanded ? Color.toggle : Color.blueButton)
            .cornerRadius(10)
            .padding(3.0)
            .shadow(color: .white.opacity(0.2),radius: 2)
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle3, Color.toggle]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.blueButton, Color.blueButton]), startPoint: .leading, endPoint: .trailing))
        //            .background(isTextExpanded ? Color.toggle : Color.blueButton)
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(radius: 2)
        //            .background(LinearGradient(gradient: Gradient(colors: [Color.blueButton, Color.toggle]), startPoint: .leading, endPoint: .trailing))
    }
    func buildBlue2Text(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
                .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.blueButton, Color.grayButton]), startPoint: .center, endPoint: .bottom) : LinearGradient(gradient: Gradient(colors: [Color.blueButton, Color.blueButton]), startPoint: .leading, endPoint: .trailing))           
//                .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .font(.subheadline)
                .cornerRadius(10)
                
          
    }
    func buildBlue59Text(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButton)
                .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .font(.subheadline)
                .cornerRadius(10)
//                .shadow(color: isTextExpanded ? Color.shadowGrayRectangle : Color.shadowGrayRectangle,
//                        radius: isTextExpanded ? -2 : 0)
//
                
    }
    func buildBlue591Text(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButton)
                        .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .font(.subheadline)
                .cornerRadius(10)
                .shadow(color: .shadowGrayRectangle, radius: 0.5)
//
                
    }
    
    func buildBlue591TextLowLevel(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButtonLowLevel)
                .background(isTextExpanded ? Color.toggleLowLevel : Color.blueButtonLowLevel)
                .font(.subheadline)
                .cornerRadius(10)
//                .shadow(color: .shadowGrayRectangle, radius: 0.5)
//
                
    }
    
    func buildBlue59NavigationText() -> some View {
        
        return
                HStack {
                    content
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.right"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
                .background(Color.blueButton)
//                .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .font(.subheadline)
                .cornerRadius(10)
//                .shadow(color: .shadowGrayRectangle, radius: 0.5)
    }
    
    func buildGreenText() -> some View {

        return content
            .padding(10.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 50)
            .modifier(ThemeGreenColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(radius: 2)
        
    }
    func buildTitleCodes(isTextExpanded: Bool) -> some View {
        
        return HStack {
            HStack (alignment: .center) {
               
                title
                    .padding(.horizontal, 2)
                    .frame(maxWidth: 80)
                    .frame(minHeight: 20)
                    .font(.footnote)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground.opacity(0.5))
                    .bold()
                //                    .lineLimit(1)
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                
                
            }
            Spacer()
        }
        .padding(5.0)
//        .lineLimit(2)
//        .padding(7.0)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
        .fixedSize(horizontal: false, vertical: true)
        .frame(minHeight: 49)
        .frame(minWidth: 49)
        .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground.opacity(0.5))
//            .foregroundColor(Color.titleNumberForeground)
        .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
//        .cornerRadius(10)
//        .padding(3.0)
//        .shadow(color: .white.opacity(0.2),radius: 2)
        .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
        .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
        .font(.subheadline)
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
    }
    
    func buildTableCodes() -> some View {
        
        return HStack {
            ZStack {
                title
                    .padding(.horizontal, 10)
                    .font(.headline)
                
            }
            .frame(minWidth: 70)
            Spacer()
            content
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(3)
            
        Spacer()
        }
        
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildGreen1Text(isTextExpanded: Bool) -> some View {
        
        return content
            .padding(7.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 49)
            .frame(minWidth: 49)
            .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground.opacity(0.5))
//            .foregroundColor(Color.titleNumberForeground)
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
//            .cornerRadius(10)
//            .padding(3.0)
//            .shadow(color: .white.opacity(0.2),radius: 2)
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(color: .shadowGrayRectangle, radius: 0.5)
            
    }
    
    func buildGreen2Text(isTextExpanded: Bool) -> some View {
        
        return content
            .padding(7.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 49)
            .frame(minWidth: 49)
            .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground.opacity(0.5))
//            .foregroundColor(Color.titleNumberForeground)
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
            .cornerRadius(10)
            .padding(3.0)
            .shadow(color: .white.opacity(0.2),radius: 2)
            .background(isTextExpanded ? LinearGradient(gradient: Gradient(colors: [Color.toggle4, Color.toggle1]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.greenButton, Color.greenButton]), startPoint: .leading, endPoint: .trailing))
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(radius: 2)
            
    }
    
    func buildGrayText() -> some View {

        return content
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: false)
            .frame(minHeight: 50)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
    }
    
    
    func buildGrayInAndHiddenBlock() -> some View {
        
        return VStack (spacing: 1){
                title
                
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                    
                content
                    
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
            
        }
        .padding(10)
        
        .fixedSize(horizontal: false, vertical: false)
        .frame(minHeight: 20)
        .modifier(ThemeGrayColorModifier())
        .font(.subheadline)
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
    }
    
    func buildGrayInAndHiddenBlockWithBlueButtons() -> some View {
        
        return VStack (spacing: 1){
                title
                
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                    
                content
                    
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
            
        }
        .padding(10)
        
        .fixedSize(horizontal: false, vertical: false)
        .frame(minHeight: 20)
        .modifier(ThemeGrayColorModifier())
        .font(.subheadline)
        .cornerRadius(10)
        
        
    }
    func buildGrayInText() -> some View {

        return content
            .padding(10)
//            .padding(.vertical, 3)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    func buildGrayInHiddenText() -> some View {

        return content
            .padding(5)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    
    func buildGrayInHidden1Text() -> some View {

        return content
            .padding(.top, 0)
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    
    func buildGrayInHidden59Text() -> some View {

        return content
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    
    func buildNavigationText() -> some View {

        return content
            .fontWeight(.semibold)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 50)
            .modifier(ThemeNavigationColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
        
    }
    
    func grayRectangle() -> some View {

        return content
        
            .padding(5.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .frame(minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: false)
            .background(Color.grayButton)
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(color: .shadowGrayRectangle, radius: 0.5)
            
    }
    func grayRectangle1() -> some View {

        return content
        
            .padding(5.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .frame(minHeight: 0, maxHeight: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: false)
            .background(Color.grayButton)
            .font(.subheadline)
            .cornerRadius(10)
            .shadow(color: .shadowGrayRectangle, radius: 0.5)
            
//            .shadow(color: .shadow, radius: 2)
            
    }
    
    func buildDualBlockBlueGray(isTextExpanded: Bool ) -> some View {
        
//        var isTextExpanded1: Bool = isTextExpanded
        return ZStack {
            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
            
            VStack (spacing: 1) {
                HStack {
                    title
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButton)
                        .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .font(.subheadline)
                .cornerRadius(10)
                    
                if isTextExpanded{
                    VStack {
                        content
                    }
                    .padding(10)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(minHeight: 20)
                    .modifier(ThemeGrayColorModifier())
                    .font(.subheadline)
                    .cornerRadius(10)
                }
            }
        }
        
    }
    
    func buildDualBlockBlueGrayLowLevel(isTextExpanded: Bool ) -> some View {
        
//        var isTextExpanded1: Bool = isTextExpanded
        return ZStack {
            MyViewBuilder(title: Text(""), content: Text("")).grayRectangle1()
            
            VStack (spacing: 1) {
                HStack {
                    title
                    Spacer()
                    Spacer()
                    Image(systemName: (isTextExpanded ? "chevron.up" : "chevron.down"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                        .opacity(0.3)
//                        .multilineTextAlignment(.center)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
//                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButtonLowLevel)
                        .background(isTextExpanded ? Color.toggleLowLevel : Color.blueButtonLowLevel)
                .font(.subheadline)
                .cornerRadius(10)
                    
                if isTextExpanded{
                    VStack {
                        content
                    }
                    .padding(10)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(minHeight: 20)
                    .modifier(ThemeGrayColorModifier())
                    .font(.subheadline)
                    .cornerRadius(10)
                }
            }
        }
        
    }
    
    func buildTitleBlueText() -> some View {

        return HStack {
            HStack (alignment: .center) {
                ZStack {
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.titleNumber)
                        .cornerRadius(10)
                        .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    title
//                        .padding(.horizontal)
                        .font(.headline)
                        .foregroundColor(Color.titleNumberForeground)
                        .bold()
                        .lineLimit(1)
                
            }
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.right"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                    .opacity(0.3)
//                        .multilineTextAlignment(.center)
                    .padding(.trailing, 7)
            }
            Spacer()
        }
        .padding(5.0)
//        .lineLimit(2)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .fixedSize(horizontal: false, vertical: true)
        .frame(minHeight: 50)
        .modifier(ThemeTitleBlueColorModifier())
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
    }
    func buildTitle1BlueText() -> some View {
        
        return HStack {
            HStack (alignment: .center) {
               
                title
//                    .padding(.horizontal, 10)
                    .frame(maxWidth: 125)
                    .frame(maxHeight: .greatestFiniteMagnitude)
                    .font(.caption)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .shadow(color: .shadowGrayRectangle, radius: 0.5)
                    .foregroundColor(Color.titleNumberForeground)
                    .bold()
                //                    .lineLimit(1)
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.right"))
//                        .resizable()
//                        .frame(width: 20, height: 20)
                    .opacity(0.3)
//                        .multilineTextAlignment(.center)
                    .padding(.trailing, 7)
                
                
                
            }
            Spacer()
        }
        .padding(5.0)
//        .lineLimit(2)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .fixedSize(horizontal: false, vertical: true)
        .frame(minHeight: 50)
        .modifier(ThemeTitleBlueColorModifier())
        .cornerRadius(10)
        .shadow(color: .shadowGrayRectangle, radius: 0.5)
        
    }
    
    struct BlueText: View {
        private let text: Text = Text("")
        var body: some View {
            Text("\(text)")
                .padding(7.0)
                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .fontWeight(.semibold)
                .frame(minHeight: 50)
                .modifier(ThemeBlueColorModifier())
                .font(.subheadline)
                .cornerRadius(10)
                .shadow(radius: 2)
        }
    }
}

struct ThemeBlueColorModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
//            .background(Color.blueButton)

    }
}

struct ThemeGreenColorModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)
//            .background(Color.greenButton)

    }
}

struct ThemeGrayColorModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .background(Color.grayButton)
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)

    }
}

struct ThemeNavigationColorModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .background(Color.grayButton)
            .foregroundColor(Color(red: 0, green: 0.5176470588235295, blue: 1))

    }
}

struct ThemeTitleBlueColorModifier: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .background(Color.blueButton)
            .foregroundColor(colorScheme == .dark ? Color(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9490196078431372) : Color.black)

    }
}

struct ImagePDF: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var scale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var currentScale: CGFloat = 1.0
    
    let image: Image
    let title: String
    var body: some View {
        GeometryReader { proxy in
            image
                .resizable()
                .frame(maxWidth: proxy.size.width)
                .frame(maxHeight: proxy.size.height)
                .scaledToFit()
                .clipShape(Rectangle())
                .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
        }
        .padding(.bottom, 50)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                VStack {
                    Text(title)
                        .font(.headline)
                        .foregroundStyle(Color.toolBar)
                        .bold()
                }
            }
            
        }
    }
    
}

///////////////////////////////////////////////////







protocol ViewBuilder2 {
    associatedtype Content: View
    func buildTableRASS() -> Content
    
}

// Класс, реализующий протокол ViewBuilder
class MyViewBuilderTables: ViewBuilder2 {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let title1: Text
    private let title2: Text
    private let title3: Text
    private let title4: Text
    
    init(title1: Text, title2: Text, title3: Text, title4: Text) {
        
        self.title1 = title1
        self.title2 = title2
        self.title3 = title3
        self.title4 = title4
        
    }
    
    func buildTableRASS() -> some View {
        
        return HStack {
            ZStack {
                title1
                .padding(.horizontal, 10)
                .font(.subheadline)
                .bold()
                
            }
            .frame(width: 40)
            Spacer()
            title2
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            title3
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(3)
            
            Spacer()
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    func buildTableAlko() -> some View {
        
        return HStack {
            
                title1
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 70)
                .padding(.horizontal, 10)
                .font(.caption2)
                .padding(3)
                .bold()
                
            
            
            Spacer()
            title2
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 100)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            title3
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(3)
            
            Spacer()
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildTableGlazgo() -> some View {
        
        return HStack {
            ZStack {
                title1
                .padding(.horizontal, 10)
                .font(.subheadline)
                .bold()
                
            }
            .frame(width: 40)
            Spacer()
            title2
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    
}





protocol ViewBuilder3 {
    associatedtype Content: View
    func buildTable59AG() -> Content
    
}

// Класс, реализующий протокол ViewBuilder
class MyViewBuilder59: ViewBuilder3 {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let title1: String
    private let title2: String
    private let title3: String
    private let title4: String
    private let title5: String
    private let title6: String
    private let title7: String
    private let title8: String
    private let title9: String
    private let title10: String
    private let title11: String
    private let title12: String
    private let title13: String
    private let title14: String
    init(title1: String, title2: String, title3: String, title4: String, title5: String, title6: String, title7: String, title8: String, title9: String, title10: String, title11: String, title12: String, title13: String, title14: String) {
        
        self.title1 = title1
        self.title2 = title2
        self.title3 = title3
        self.title4 = title4
        self.title5 = title5
        self.title6 = title6
        self.title7 = title7
        self.title8 = title8
        self.title9 = title9
        self.title10 = title10
        self.title11 = title11
        self.title12 = title12
        self.title13 = title13
        self.title14 = title14
        
    }
  
    func buildTable59AG() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title13))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Spacer()
            Text(LocalizedStringKey(title14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildTable59AG1() -> some View {
        
        return HStack {
            ZStack {
                Text(LocalizedStringKey(title1))
                .padding(.horizontal, 10)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                
            }
            .frame(width: 190)
            Spacer()
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(maxWidth: 70)
                .font(.footnote)
                .padding(3)
            
            Spacer()
            Text(LocalizedStringKey(title3))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(3)
            
            Spacer()
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(3)
            
            Spacer()
        }
        .padding(2)
        .background(Color.grayButton)
        .cornerRadius(10)
        
    }
    
    func buildTable59AG2() -> some View {
        
        return HStack (alignment: .top) {
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .frame(maxWidth: 90)
                .font(.caption2)
                .bold()
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .frame(maxWidth: 100)
                .font(.caption2)
                .padding(7)
            
            Spacer()
            Text(LocalizedStringKey(title3))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            
            
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildTable59AGPreg() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            Spacer()
            HStack (alignment: .center) {
                
                Text(LocalizedStringKey(title3))
                    .padding(.horizontal, 7)
                    .font(.subheadline)
                    .bold()
                Spacer()
                Text(LocalizedStringKey(title5))
                    .padding(.horizontal, 7)
                    .font(.subheadline)
                    .bold()
                Spacer()
            }
            HStack {
                    Text(LocalizedStringKey(title4))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    //                .frame(maxWidth: 70)
                        .font(.caption2)
                        .padding(7)
                
                    Text(LocalizedStringKey(title6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    //                .frame(maxWidth: 70)
                        .font(.caption2)
                        .padding(7)
                
            }
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildTable59AGPreg1() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .lineLimit(4)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
                Text(LocalizedStringKey(title3))
                    .padding(.horizontal, 7)
                    .font(.subheadline)
                    .bold()
                
                Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            
            
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            
            
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            Spacer(minLength: 1)
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
}
