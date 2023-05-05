//
//  ContactView.swift
//  MyResume
//
//  Created by Wing Hei Tsui on 05/05/2023.
//

import SwiftUI

struct ContactView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack {
            HStack{
                
                Image(systemName: "phone.fill")
                    .resizable().aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.green))
                    .padding(10)
                    .onTapGesture {
                        openUrl(Resume.shared.phoneUrl)
                    }
                
                ForEach(Resume.shared.socialMedia, id: \.name) { media in
                    Image(media.name.lowercased())
                        .resizable().aspectRatio(contentMode: .fit)
                        .padding(10)
                        .onTapGesture{ openUrl(media.url) }
                }
            }
            
            Text("Cancel")
                .font(.title2)
                .foregroundColor(.secondary)
                .onTapGesture{
                    isShowing = false
                }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(uiColor: .tertiarySystemBackground)))
            .padding()
    }
    
    func openUrl(_ url: String) {
        
        let url = URL(string: url)!
        
        if UIApplication.shared.canOpenURL(url)
        {
            UIApplication.shared.open(url)
            return 
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(isShowing: Binding.constant(true))
            .background(.yellow)
    }
}
