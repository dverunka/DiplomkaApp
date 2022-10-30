//
//  DashboardView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

struct DashboardView: View {
    
    @ObservedObject var viewModel: DashboardViewModel
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 16) {
                
                // Notification.
                HStack(spacing: 16) {
                    Image("crew")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 50, alignment: .leading)
                        .cornerRadius(16)
                    
                    // Notification title and text.
                    VStack(spacing: 4) {
                        Text(Strings.notification.rawValue)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14, weight: .regular))
                        
                        Text(Strings.notificationText.rawValue)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 11, weight: .regular))
                            .foregroundColor(Colors.dimGray)
                    }
                }
                .padding(.all, 8)
                .background(Colors.whiteSmoke)
                .cornerRadius(16)
                
                // Fighters.
                Text(Strings.fighters.rawValue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24, weight: .regular))
                
                // Fighters list.
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        
                        // Fighter image view.
                        ForEach(viewModel.fighters) { fighterName in
                            Image(fighterName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 120)
                                .cornerRadius(16)
                        }
                    }
                }
                
                // Starships.
                Text(Strings.starships.rawValue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24, weight: .regular))
                
                // Starship list.
                // todo: TabView(selection: $starshipIndex) + expand for whole screen width
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        
                        ForEach(viewModel.starships) { starship in
                            
                            // Starship card view.
                            VStack(spacing: 8) {
                                
                                Image(starship.photo)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 340, height: 160)
                                    .clipped()
                                
                                VStack(spacing: 4) {
                                    Text(starship.name)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 24, weight: .regular))
                                    
                                    Text(String(starship.type))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding(.horizontal, 8)
                                
                                HStack {
                                    Text(String(starship.year))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 11, weight: .regular))
                                        .foregroundColor(Colors.dimGray)
                                    
                                    Text(starship.length)
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .font(.system(size: 11, weight: .regular))
                                        .foregroundColor(Colors.dimGray)
                                }
                                .padding(.all, 8)
                            }
                            .background(Colors.whiteSmoke)
                            .cornerRadius(16)
                        }
                    }
                }
            }
            .padding(.all, 16)
        }
    }
    
    init(viewModel: DashboardViewModel) {
        self.viewModel = viewModel
    }
}

struct DashboardView_Previews: PreviewProvider {
    
    static var previews: some View {
        DashboardView(viewModel: .init(dataService: ExampleDataServiceImpl()))
    }
}
