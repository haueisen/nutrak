//
//  ScanSelector.swift
//  nutrak
//
//  Created by flavio on 2025-04-28.
//

import SwiftUI

struct ScanSelector: View {
    
    let onImageData: (Data) -> Void // this would be called by camera or photo library result
    
    var body: some View {
        VStack(spacing: 12) {
            HeaderBarLogo()
            Spacer()
            
            Text("scanInstruction")
            
            Spacer()
            
            Button {
                // todo: go to camera
                // for now just skip to scanning in progress
                onImageData(Data())
            } label: {
                Text("camera")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(NutrakButtonStyle(type: .primary))
            
            Button {
                // todo: go to photo library
                // for now just skip to scanning in progress
                onImageData(Data())
            } label: {
                Text("photoLibrary")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(NutrakButtonStyle(type: .secondary))
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ScanSelector(onImageData: { _ in })
}

