//
//  ContentView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

struct HomeView<DestinationView: View>: View {
    
    @ObservedObject private var viewModel: HomeViewModel<DestinationView>
        
    var body: some View {
        
        NavigationView {
                                    
            VStack {
                Spacer()
                
                Button(Strings.logIn.rawValue, action: viewModel.authenticate)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.all, 16)
                .background(Colors.whiteSmoke)
                .foregroundColor(Colors.dimGray)
                .cornerRadius(16)
                
                NavigationLink(
                    isActive: $viewModel.authentificationWasSuccessful,
                    destination: viewModel.destinationViewAfterAuthentification
                ) { EmptyView().hidden() }
            }
            .padding(.all, 16)
            .background(.white)
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
    
        }
    }
    
    init(viewModel: HomeViewModel<DestinationView>) {
        self.viewModel = viewModel
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView(viewModel: HomeViewModel<EmptyView>(destinationViewAfterAuthentification: { EmptyView() }))
    }
}

