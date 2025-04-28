//
//  NutrakButtonStyle.swift
//  nutrak
//
//  Created by flavio on 2025-04-27.
//

import SwiftUI

enum NutrakButtonStyleType {
    case primary
    case secondary
}

struct NutrakButtonStyle: ButtonStyle {
    
    let type: NutrakButtonStyleType
    
    let cornerRadius: CGFloat = 8
    
    private var background: AnyView {
        switch type {
        case .primary:
            AnyView(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(
                        RadialGradient(
                            colors: [.primaryP500, .primaryP600],
                            center: .top,
                            startRadius: 0,
                            endRadius: 50
                        )
                    )
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .strokeBorder(lineWidth: 1)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.primaryP700, .primaryP900],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                    })
            )
        case .secondary:
            AnyView(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(lineWidth: 1)
                    .foregroundStyle(Color.neutralN200)
            )
        }
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(8)
            .background(background)
            .foregroundStyle(Color.textHighEmp)
            .cornerRadius(cornerRadius)
    }
}


#Preview {
    VStack {
        Button {
            
        } label: {
            Text("Camera")
        }
        .buttonStyle(NutrakButtonStyle(type: .primary))
        
        Button {
            
        } label: {
            Text("Gallery")
        }
        .buttonStyle(NutrakButtonStyle(type: .secondary))
    }
}
