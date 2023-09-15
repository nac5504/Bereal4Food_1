//
//  MainScrollView.swift
//  Bereal4Food
//
//  Created by Nicholas Candello on 9/15/23.
//

import SwiftUI

struct MainScrollView: View {
    @Binding var tabSelection: Tabs
    var body: some View {
        VStack {
            HStack {
                
                Button {
                    tabSelection = .contactsView
                } label: {
                    Image(systemName: "person.2.fill")
                        .padding()
                }
                
                Spacer()
                Button {
                    tabSelection = .mainScrollView

                } label: {
                    Text("BeReal 4 Food")
                        .font(.title)
                        .bold()
                }
                Spacer()
                Button {
                    tabSelection = .selfProfileView

                } label: {
                    Image(systemName: "person.circle.fill")
                        .padding()
                }
            }.foregroundColor(.black)
            ScrollView {
                VStack {
                    Text("Main ScrollView")
                }
            }
        }
    }
}

struct MainScrollView_Previews: PreviewProvider {
    @State static var tabSelection: Tabs = .mainScrollView
    static var previews: some View {
        MainScrollView(tabSelection: $tabSelection)
    }
}
