//
//  ContentView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            Button(Strings.logIn.rawValue, action: viewModel.authenticate)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.all, 16)
            .background(Colors.whiteSmoke)
            .foregroundColor(Colors.dimGray)
            .cornerRadius(16)
        }
        .padding(.all, 16)
        .background(.white)
    }
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

