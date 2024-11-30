//
//  ViewBuilder.swift
//  8button
//
//  Created by Artur Vladymcev on 3.12.23.
//

import SwiftUI
import UIKit


// Протокол для объектов, которые могут создавать представление
protocol ViewBuilder1 {
    associatedtype Content: View
    func buildBlueText() -> Content
    
}

// Класс, реализующий протокол ViewBuilder
class MyViewBuilder: ViewBuilder1 {
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Environment(\.viewContext) var context: ViewContext
   
    
    private let title: Text
    private let content: Text
    
    init(title: Text, content: Text) {
        
        self.title = title
        self.content = content
    }
    
    func buildBlue591TextScalesFavorites(isTextExpanded: Bool, isInFavorites: Bool, shouldShowOverlay: Bool, allViewIdentifiersTitle: String, allViewIdentifiers: String, context: ViewContext) -> some View {
        return
                HStack {
                    if context == .favorites {
                        VStack (alignment: .leading){
                            Text(allViewIdentifiersTitle)
                                .padding(.leading, 7)
                                .font(.caption2)
                                .opacity(0.65)
                            
                            Text(allViewIdentifiers)
                                .padding(.leading, 7)
                                .multilineTextAlignment(.leading)
                                .fontWeight(.semibold)
                                .font(.subheadline)
                        }
                    } else {
                        VStack (alignment: .leading){
                            title
                                .padding(.leading, 7)
                                .fontWeight(.semibold)
                                .font(.subheadline)
                            
                            content
                                .padding(.leading, 7)
                                .font(.caption2)
                                .opacity(0.65)
                        }
                    }
                    
                    
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                        .opacity(0.3)
                        .padding(.trailing, 7)
                }
                .padding(7.0)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
                .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .background(Color.grayButton)
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            if shouldShowOverlay {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                    .foregroundColor(isInFavorites ? .favoriteStar : Color.clear)
                                    .rotationEffect(.degrees(isInFavorites ? -360 : 0))
                                    .animation(.snappy, value: isInFavorites)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 3)
                            }
                            Spacer()
                        }
                    }
                )
            
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
                
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
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                .background(Color.grayButton)
                .font(.subheadline)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
//                .shadow(color: isTextExpanded ? Color.shadowGrayRectangle : Color.shadowGrayRectangle,
//                        radius: isTextExpanded ? -2 : 0)
//
                
    }
    func buildBlue591Text(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                .background(Color.grayButton)
                .font(.subheadline)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
//
                
    }
    func buildBlue592Text(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                .background(Color.grayButton)
                .font(.subheadline)
                .cornerRadius(10)
                
//
                
    }
    func buildBlue591TextScales(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    VStack (alignment: .leading){
                        title
                            .padding(.leading, 7)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                        
                        content
                            .padding(.leading, 7)
                            .font(.caption2)
                            .opacity(0.65)
                    }
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                .frame(minHeight: 49)
                .frame(minWidth: 49)
                .modifier(ThemeBlueColorModifier())
//                .background(Color.blueButton)
                .background(isTextExpanded ? Color.toggle : Color.blueButton)
                .background(Color.grayButton)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                )
//
                
    }
    
    func buildBlue591TextLowLevel(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
    func buildBlue592TextLowLevel(isTextExpanded: Bool) -> some View {
        
        return
                HStack {
                    content
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
//
                
    }
    func buildBlue59NavigationText() -> some View {
        
        return
                HStack  {
                    content
                        .padding(.leading, 7)
                        .multilineTextAlignment(.leading)
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
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
    }
    func buildBlue591NavigationText() -> some View {
        
        return
                HStack  {
                    content
                        .padding(.leading, 7)
                        .multilineTextAlignment(.leading)
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
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                )
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
            HStack  {
               
                title
                    .padding(.horizontal, 2)
                    .frame(maxWidth: 80)
                    .frame(minHeight: 20)
                    .font(.footnote)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground)
                    .bold()
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                    .opacity(0.3)
                    .padding(.trailing, 7)
                
                
            }
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
        .background(Color.grayButton)
        .font(.subheadline)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
        )
    }
    func buildTitleZakon(isTextExpanded: Bool) -> some View {
        
        return HStack {
            HStack  {
               
                title
                    .padding(.horizontal, 2)
                    .frame(maxWidth: 80)
                    .frame(minHeight: 20)
                    .font(.footnote)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground)
                    .bold()
                //                    .lineLimit(1)
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                    .opacity(0.3)
                    .padding(.trailing, 7)
                
                
            }
            Spacer()
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
        .background(Color.grayButton)
        .font(.subheadline)
        .cornerRadius(10)
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
                .textSelection(.enabled)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(3)
            
        Spacer()
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    // scale Wells
    func buildTableWells() -> some View {
        
        return HStack(alignment: .top) {
            
                title
                .frame(minWidth: 270, maxWidth: .infinity, alignment: .topLeading)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            content
                .textSelection(.enabled)
                .frame(minWidth: 50, maxWidth: .infinity, alignment: .topLeading)
                .font(.caption2)
                .padding(3)
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    func buildTable59OKSSmall() -> some View {
        
        return HStack(alignment: .top, spacing: 1) {
            VStack(spacing: 1) {
                title
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .font(.caption2)
                    .padding(3)
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.grayButton)
            VStack (spacing:1) {
                content
                    .textSelection(.enabled)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .font(.caption2)
                    .padding(3)
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.grayButton)
            
        }
        
    }
    
    func buildTablePhafmacologyAdult() -> some View {
        
        return HStack(alignment: .top) {
            
                title
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .frame(maxWidth: 100)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            content
                .textSelection(.enabled)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .font(.caption2)
                .padding(3)
            
        Spacer()
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    func buildTablePhafmacologyVasopressors() -> some View {
        
        return HStack(alignment: .top) {
            
                title
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .frame(maxWidth: 150)
                .font(.caption2)
                .padding(3)
            
            content
                .textSelection(.enabled)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .font(.caption2)
                .padding(3)
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    func buildTableGRACE() -> some View {
        
        return HStack (alignment: .center){
            VStack (spacing:1){
                title
                .padding(.horizontal, 10)
                .font(.subheadline)
            }
            Spacer()
            VStack (spacing:1) {
                content
                    .textSelection(.enabled)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 40)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(3)
            }
            
        }
        .background(Color.grayButton)
    }
    func buildTableGRACEKey() -> some View {
        
        return HStack (alignment: .bottom, spacing: 1){
            
                title
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//                .frame(maxWidth: 70)
                .font(.subheadline)
                .bold()
                .padding(3)
                .background(Color.grayButton)
            content
                .textSelection(.enabled)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
//                .frame(maxWidth: 70)
                .font(.subheadline)
                .padding(3)
                .background(Color.grayButton)
                
        }
        
    }
    func buildGreen1Text(isTextExpanded: Bool) -> some View {
        
        return content
            .padding(7.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 49)
            .frame(minWidth: 49)
            .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground.opacity(0.7))
//            .foregroundColor(Color.titleNumberForeground)
            .modifier(ThemeBlueColorModifier())
    //                .background(Color.blueButton)
            .background(isTextExpanded ? Color.toggle : Color.blueButton)
            .background(Color.grayButton)
//            .background(isTextExpanded ? Color.toggle1 : Color.greenButton)
            .font(.subheadline)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
            
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
            .textSelection(.enabled)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: false)
            .frame(minHeight: 50)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
        
    }
    func buildGrayTextCenter() -> some View {

        return content
            .textSelection(.enabled)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: false)
            .frame(minHeight: 50)
            .modifier(ThemeGrayColorModifier())
            .font(.subheadline)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
        
    }
    
    func buildGrayInAndHiddenBlock() -> some View {
        
        return VStack (spacing: 1){
                title
                
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                    
                content
                .textSelection(.enabled)
                    
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
            
        }
        .padding(10)
        
        .fixedSize(horizontal: false, vertical: false)
        .frame(minHeight: 20)
        .modifier(ThemeGrayColorModifier())
        .font(.subheadline)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        
    }
    
    func buildGrayInAndHiddenBlockWithBlueButtons() -> some View {
        
        return VStack (spacing: 1){
                title
                
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                    
                content
                .textSelection(.enabled)
                    
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
            .textSelection(.enabled)
            .padding(.vertical, 10)
            .padding(.horizontal, 10)
//            .padding(.vertical, 3)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifierWithOutBackground())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    func buildGrayInHiddenText() -> some View {

        return content
            .textSelection(.enabled)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifierWithOutBackground())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    
    func buildGrayInHidden1Text() -> some View {

        return content
            .textSelection(.enabled)
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
            .textSelection(.enabled)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifierWithOutBackground())
            .font(.subheadline)
            .cornerRadius(10)
//            .shadow(radius: 2)
        
    }
    func buildGrayInHidden59TextCenter() -> some View {

        return content
            .textSelection(.enabled)
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 20)
            .modifier(ThemeGrayColorModifierWithOutBackground())
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
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
        
        
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
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
            
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
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
            
//            .shadow(color: .shadow, radius: 2)
            
    }
    
    func buildDualBlockBlueGray(isTextExpanded: Bool ) -> some View {
        
//        var isTextExpanded1: Bool = isTextExpanded
        return VStack (spacing: 1) {
            HStack {
                title
                    .padding(.leading, 7)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                        .textSelection(.enabled)
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
        .background(Color.grayButton)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        
        
    }
    
    func buildDualBlockBlueGrayLowLevel(isTextExpanded: Bool ) -> some View {
        
//        var isTextExpanded1: Bool = isTextExpanded
        return VStack (spacing: 1) {
                HStack {
                    title
                        .padding(.leading, 7)
                    Spacer()
                    Spacer()
                    Image(systemName: ("chevron.down"))
                        .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
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
                            .textSelection(.enabled)
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
            .background(Color.grayButton)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
            )
        
        
    }
    
    func buildTitleBlueText() -> some View {

        return HStack {
            HStack (alignment: .center) {
                ZStack {
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.titleNumber)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                        )
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
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        
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
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
                    )
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
        
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        
    }
    func buildTitle1BlueTextFavorites(isInFavorites: Bool, shouldShowOverlay: Bool) -> some View {
        
        return HStack {
            HStack (alignment: .center) {
                title
                    .frame(maxWidth: 125)
                    .frame(maxHeight: .greatestFiniteMagnitude)
                    .font(.caption)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .foregroundColor(Color.titleNumberForeground)
                    .bold()
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                Spacer()
                Spacer()
                Image(systemName: ("chevron.right"))
                    .opacity(0.3)
                    .padding(.trailing, 7)
                
            }
            Spacer()
        }
        .padding(5.0)
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .fixedSize(horizontal: false, vertical: true)
        .frame(minHeight: 50)
        .modifier(ThemeTitleBlueColorModifier())
        .cornerRadius(10)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    if shouldShowOverlay {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(isInFavorites ? .favoriteStar : Color.clear)
                            .rotationEffect(.degrees(isInFavorites ? -360 : 0))
                            .animation(.snappy, value: isInFavorites)
                            .padding(.vertical, 3)
                            .padding(.horizontal, 3)
                    }
                    Spacer()
                }
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
        )
        
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
struct ThemeGrayColorModifierWithOutBackground: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
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
            ToolbarItem(placement: .navigationBarTrailing) {
                ShareLink(item: image, preview: SharePreview(Text("\(title), Приказ № 1030"), image: image)){
                    Image(systemName: "square.and.arrow.up")
                }
            }
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
    func buildECG(isTextExpanded: Bool) -> some View {
    VStack (spacing:1) {
        GeometryReader { proxy in
            ScrollView {
                image
                    .resizable()
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .padding(2)
                    .frame(maxWidth: (isTextExpanded ? proxy.size.width : proxy.size.width * 2 ))
                    .frame(maxHeight: (isTextExpanded ? proxy.size.height : proxy.size.height))
                    .scaledToFit()
                    .modifier(ImageModifierECG(contentSize: CGSize(width: (isTextExpanded ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded ? proxy.size.height : proxy.size.height ))))
                    
            }
        }
    }
}
    func buildECGPad(isTextExpanded: Bool) -> some View {
    VStack (spacing:1) {
        GeometryReader { proxy in
            ScrollView {
                image
                    .resizable()
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .padding(2)
                    .frame(maxWidth: (isTextExpanded ? proxy.size.width : proxy.size.width * 2 ))
                    .frame(maxHeight: (isTextExpanded ? proxy.size.height : proxy.size.height))
                    .scaledToFit()
                    .modifier(ImageModifierECG(contentSize: CGSize(width: UIDevice.current.userInterfaceIdiom == .pad ? (isTextExpanded ? proxy.size.width : proxy.size.width): (isTextExpanded ? proxy.size.width : proxy.size.width * 2), height: (isTextExpanded ? proxy.size.height : proxy.size.height ))))
                    
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
        .textSelection(.enabled)
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
        .textSelection(.enabled)
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
        .textSelection(.enabled)
        .padding(2)
        .background(Color.grayButton)
        
    }
    func buildTableGRACE() -> some View {
        
        return HStack (alignment: .bottom){
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
        .textSelection(.enabled)
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
    private let title15: String
    private let title16: String
    private let title17: String
    private let title18: String
    private let title19: String
    private let title20: String
    private let title21: String
    private let title22: String
    private let title23: String
    private let title24: String
    private let title25: String
    private let title26: String
    private let title27: String
    private let title28: String
    init(title1: String, title2: String, title3: String, title4: String, title5: String, title6: String, title7: String, title8: String, title9: String, title10: String, title11: String, title12: String, title13: String, title14: String, title15: String, title16: String, title17: String, title18: String, title19: String, title20: String, title21: String, title22: String, title23: String, title24: String, title25: String, title26: String, title27: String, title28: String) {
        
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
        self.title15 = title15
        self.title16 = title16
        self.title17 = title17
        self.title18 = title18
        self.title19 = title19
        self.title20 = title20
        self.title21 = title21
        self.title22 = title22
        self.title23 = title23
        self.title24 = title24
        self.title25 = title25
        self.title26 = title26
        self.title27 = title27
        self.title28 = title28
    }
    // Шкалы детские параметры в норме
    func buildTableParametersChild() -> some View {
        
        return HStack(alignment: .center) {
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .bold()
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title2))
                .textSelection(.enabled)
                .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title3))
                .textSelection(.enabled)
                .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title4))
                .textSelection(.enabled)
                .frame(minWidth: 45, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title5))
                .textSelection(.enabled)
                .frame(minWidth: 40, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    //Объемы зондового промывания у детей
    func buildTableZondPromivanieChild() -> some View {
        
        return HStack(alignment: .center) {
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .bold()
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title2))
                .textSelection(.enabled)
                .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title3))
                .textSelection(.enabled)
                .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    //Шоковый индекс
    func buildTableShockIndex() -> some View {
        
        return HStack(alignment: .center) {
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                .font(.subheadline)
                .bold()
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title2))
                .textSelection(.enabled)
                .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                .font(.subheadline)
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title3))
                .textSelection(.enabled)
                .frame(minWidth: 38, maxWidth: .infinity, alignment: .center)
                .font(.subheadline)
                .padding(3)
            
            Spacer()
            
        }
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    //Шкала CHA2DS2
    func buildTableScaleCHA2DS2() -> some View {
        
        return VStack (spacing: 1) {
        HStack(alignment: .center) {
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 70, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .bold()
                .padding(3)
            Spacer()
            Text(LocalizedStringKey(title2))
                .textSelection(.enabled)
                .frame(minWidth: 88, maxWidth: .infinity, alignment: .center)
                .font(.caption2)
                .padding(3)
            Spacer()
            
        }
        .background(Color.grayButton)
        .padding(2)
    }
        .background(Color.grayButton)
    }
    
    //памятки таблицы
    func buildTablePamyatka1() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing: 1) {
                Text(LocalizedStringKey(title1))
                    .padding(.horizontal, 7)
                    .padding(.top, 2)
                    .font(.subheadline)
                    .bold()
                
                Text(LocalizedStringKey(title2))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
                Text(LocalizedStringKey(title9))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    func buildTablePamyatka2() -> some View {
        
        return VStack (spacing: 1){
        VStack (spacing:1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing:1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing:1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing:1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing:1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
            VStack (spacing:1) {
                Text(LocalizedStringKey(title11))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    func buildTablePamyatka3() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing:1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
                VStack (spacing:1) {
            Text(LocalizedStringKey(title13))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    //АГ таблицы
    func buildTable59AG() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing: 1){
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title13))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title15))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
        }
        .textSelection(.enabled)
        
        
    }
    
    func buildTable59AG1() -> some View {
        
        return VStack (spacing:1) {
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title1))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Text(LocalizedStringKey(title2))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                Text(LocalizedStringKey(title3))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                Text(LocalizedStringKey(title4))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title5))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .frame(height: 40)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Spacer()
                Text(LocalizedStringKey(title6))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title6))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title6))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title7))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Spacer()
                Text(LocalizedStringKey(title8))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title9))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title10))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title11))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Spacer()
                Text(LocalizedStringKey(title12))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title13))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title14))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title15))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Spacer()
                Text(LocalizedStringKey(title16))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title17))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title18))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            HStack {
                ZStack {
                    Text(LocalizedStringKey(title19))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.footnote)
                    
                }
                .frame(width: 190)
                Spacer()
                Text(LocalizedStringKey(title20))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(maxWidth: 70)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title21))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 40)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
                Text(LocalizedStringKey(title22))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                    .padding(3)
                
                Spacer()
            }
            .padding(2)
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
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
        .textSelection(.enabled)
        .padding(2)
        .background(Color.grayButton)
        
    }
    
    func buildTable59AGPreg() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            HStack (alignment: .center) {
                
                Text(LocalizedStringKey(title3))
                    .padding(.horizontal, 7)
                    .padding(.top, 2)
                    .font(.subheadline)
                    .bold()
                Spacer()
                Text(LocalizedStringKey(title5))
                    .padding(.horizontal, 7)
                    .padding(.top, 2)
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
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing: 1) {
            
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            Text(LocalizedStringKey(title13))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
                .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59AGPreg1() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .lineLimit(4)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
            Text(LocalizedStringKey(title13))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
                .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59OKSRightVentrick() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing:1) {
                Text(LocalizedStringKey(title1))
                    .padding(.horizontal, 7)
                    .padding(.top, 2)
                    .font(.subheadline)
                    .bold()
                
                Text(LocalizedStringKey(title2))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title13))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title15))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title16))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    func buildTable59OKS() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing: 1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.subheadline)
                .bold()
            Spacer()
            
            Text(LocalizedStringKey(title6))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title7))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title8))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title9))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title10))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title11))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title12))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title13))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title14))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title15))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title16))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title17))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title18))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title19))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title20))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title21))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title22))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title24))
                .padding(.horizontal, 7)
                .padding(.top, 2)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title25))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
            Text(LocalizedStringKey(title26))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
                .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59OKS1() -> some View {
        
        return VStack (spacing: 1){
        
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title1))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .font(.subheadline)
                .bold()
            Spacer()
            
            Text(LocalizedStringKey(title6))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title7))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title8))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title9))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title10))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title11))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title12))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title13))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title14))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title15))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title16))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title17))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title18))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title19))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title20))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title21))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        VStack (spacing: 1) {
            Text(LocalizedStringKey(title22))
                .padding(.horizontal, 7)
                .font(.footnote)
                .bold()
            
            Text(LocalizedStringKey(title23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
        }
        .background(Color.grayButton)
        
            Text(LocalizedStringKey(title24))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(7)
                .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59Killip12() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
        
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            HStack (alignment: .bottom){
                Text(LocalizedStringKey(title3))
                    .frame(minWidth: 0, maxWidth: 100, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                
                Text(LocalizedStringKey(title4))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
            }
                .background(Color.grayButton)
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title5))
                            .frame(width: 110, alignment: .leading)
                            .font(.caption)
                            .bold()
                            .padding(5)
                            Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title6))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        Text(LocalizedStringKey(title7))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title8))
                            .frame(width: 110, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title9))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        Text(LocalizedStringKey(title10))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title11))
                            .frame(width: 110, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title12))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        Text(LocalizedStringKey(title13))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title14))
                            .frame(width: 110, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title15))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                        
                    }
                    .background(Color.grayButton)
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title16))
                            .frame(width: 110, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title17))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                        
                    }
                    .background(Color.grayButton)
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title18))
                            .frame(width: 110, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }.background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title19))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                    }
                    .background(Color.grayButton)
                }
        }
        .textSelection(.enabled)
        
    }
    func buildTable59Killip3() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            HStack (alignment: .bottom){
                Text(LocalizedStringKey(title3))
                    .frame(minWidth: 0, maxWidth: 100, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                
                Text(LocalizedStringKey(title4))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
            }
            .background(Color.grayButton)
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title5))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title6))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title7))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title8))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title9))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title10))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title11))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title12))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        Text(LocalizedStringKey(title13))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title14))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title15))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title16))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title17))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title18))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title19))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing: 1) {
                        Text(LocalizedStringKey(title20))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }.background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title21))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing:1) {
                        Text(LocalizedStringKey(title22))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                        .background(Color.grayButton)
                    
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title23))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption2)
                            .padding(5)
                            
                    }
                    .background(Color.grayButton)
                }
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59Killip4() -> some View {
        
        return VStack (spacing: 1){
            
            Text(LocalizedStringKey(title1))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            Text(LocalizedStringKey(title2))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            Text(LocalizedStringKey(title3))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
            
            HStack (alignment: .bottom){
                Text(LocalizedStringKey(title4))
                    .frame(minWidth: 0, maxWidth: 100, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                
                Text(LocalizedStringKey(title5))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                //                .frame(maxWidth: 70)
                    .font(.footnote)
                    .bold()
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
            }
            .background(Color.grayButton)
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing: 1) {
                        Text(LocalizedStringKey(title6))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                        //                .frame(maxWidth: 70)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title7))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title8))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing: 1) {
                        Text(LocalizedStringKey(title9))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title10))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        VStack (spacing:1) {
                            Text(LocalizedStringKey(title11))
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .frame(height: .infinity)
                                .font(.caption2)
                                .padding(5)
                            Spacer()
                        }
                        .background(Color.grayButton)
                    }
                }
            
                HStack (alignment: .top, spacing: 1){
                    VStack (spacing: 1) {
                        Text(LocalizedStringKey(title12))
                            .frame(width: 110, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption)
                            .bold()
                            .padding(5)
                        Spacer()
                    }
                    .background(Color.grayButton)
                    VStack (spacing:1){
                        Text(LocalizedStringKey(title13))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                        
                        Text(LocalizedStringKey(title14))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .frame(height: .infinity)
                            .font(.caption2)
                            .padding(5)
                            .background(Color.grayButton)
                    }
                }
            
            Text(LocalizedStringKey(title15))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.caption2)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.grayButton)
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59CHA2() -> some View {
        
        return VStack (spacing:1) {
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title1))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    
                        .font(.footnote)
                        .bold()
                    
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title2))
                    .padding(.vertical, 2)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title3))
                    .padding(.vertical, 2)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .frame(width: 35)
                    .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title4))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title5))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title6))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title7))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title8))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title9))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title10))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title11))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title12))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title13))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title14))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title15))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title16))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title17))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title18))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title19))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title20))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title21))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title22))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title23))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title24))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
        }
        .textSelection(.enabled)
        
    }
    
    func buildTable59HAS() -> some View {
        
        return VStack (spacing:1) {
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title1))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title2))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title3))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title4))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title5))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title6))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title7))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title8))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title9))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title10))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title11))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title12))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title13))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title14))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title15))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title16))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title17))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title18))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
            
            HStack (alignment: .center){
                ZStack {
                    Text(LocalizedStringKey(title19))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 2)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .font(.footnote)
                        .bold()
                }
                .frame(width: 40)
                Text(LocalizedStringKey(title20))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                Spacer(minLength: 15)
                Text(LocalizedStringKey(title21))
                    .padding(.vertical, 2)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .frame(width: 35)
                .font(.footnote)
            }
            .background(Color.grayButton)
        }
        
        .textSelection(.enabled)
        
    }
    
    func buildTable59SN() -> some View {
        
        return VStack (spacing: 1){
            VStack (spacing:1) {
                Text(LocalizedStringKey(title1))
                    .padding(.horizontal, 7)
                    .padding(.top,2)
                    .font(.subheadline)
                    .bold()
                
                
                Text(LocalizedStringKey(title2))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title3))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title4))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title5))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title6))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title7))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            
            Text(LocalizedStringKey(title8))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title9))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title11))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title12))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
            Text(LocalizedStringKey(title13))
                .padding(.horizontal, 7)
                .padding(.top,2)
                .font(.subheadline)
                .bold()
            Text(LocalizedStringKey(title14))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            //                .frame(maxWidth: 70)
                .font(.caption2)
                .padding(7)
            }
            .background(Color.grayButton)
            VStack (spacing:1) {
                Text(LocalizedStringKey(title15))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                .frame(maxWidth: 70)
                    .font(.caption2)
                    .padding(7)
            }
            .background(Color.grayButton)
            
        }
        .textSelection(.enabled)
        
    }
}
#Preview {
    ZakonOZdravoohranenii_01()
}

class FirstResponderController: ObservableObject {
    @Published var isActive: Bool = false
}
import UIKit
import SwiftUI

struct FirstResponderTextField: UIViewRepresentable {
    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var text: String
        @ObservedObject var responder: FirstResponderController

        init(text: Binding<String>, responder: FirstResponderController) {
            _text = text
            self.responder = responder
        }

        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }

    @Binding var text: String
    @ObservedObject var responder: FirstResponderController

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text, responder: responder)
    }

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.delegate = context.coordinator
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
        if responder.isActive {
            uiView.becomeFirstResponder()
        }
    }
}

// Протокол для объектов, которые могут создавать представление
protocol ViewBuilder6 {
    associatedtype Content: View
    func buildTitleZakon2(isTextExpanded: Bool) -> Content
    
}

// Класс, реализующий протокол ViewBuilder
class MyViewBuilder6: ViewBuilder6 {
    
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let title: Text
    private let content: Text
    private let text: Text
    
    init(title: Text, content: Text, text: Text) {
        
        self.title = title
        self.content = content
        self.text = text
    }
    
    func buildTitleZakon2(isTextExpanded: Bool) -> some View {
        
        return VStack (spacing: 1){
            HStack  {
               
                title
                    .padding(.horizontal, 2)
                    .frame(maxWidth: 80)
                    .frame(minHeight: 20)
                    .font(.footnote)
                    .padding(5.0)
                    .background(Color.titleNumber)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5)
                    )
                    .foregroundColor(isTextExpanded ? Color.titleNumberForeground : Color.titleNumberForeground)
                    .bold()
                //                    .lineLimit(1)
            
                content
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 3.0)
                    .font(.footnote)
                Spacer()
                Image(systemName: ("chevron.down"))
                    .rotationEffect(.degrees(isTextExpanded ? -180 : 0))
                    .opacity(0.3)
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
            .background(Color.grayButton)
            .font(.subheadline)
            .cornerRadius(10)
            if isTextExpanded{
                VStack {
                    text
                        .textSelection(.enabled)
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
        .background(Color.grayButton)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.shadowGrayRectangle.opacity(0.35), lineWidth: 0.5) // Устанавливаем цвет и ширину границы
        )
        
        
    }
}
