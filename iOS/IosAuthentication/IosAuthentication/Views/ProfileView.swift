//
//  UserView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                
                HStack {
                    // Profile image.
                    Image("girl")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .infinity, height: 180, alignment: .trailing)
                }
                .padding(.top, 32)
                
                // Profile background.
                VStack(spacing: 32) {
                    
                    // Name.
                    Text(viewModel.user.name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 24, weight: .regular))
                    
                    // Hometown and E-mail.
                    VStack(spacing: 8) {
                        
                        // Hometown.
                        HStack(spacing: 16) {
                            
                            Image("pin")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                            
                            Text(viewModel.user.hometown)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 14, weight: .regular))
                        }
                        
                        // E-mail.
                        HStack(spacing: 16) {
                            
                            Image("email")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20)
                            
                            Text(viewModel.user.email)
                                .underline()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.system(size: 14, weight: .regular))
                        }
                    }
                    
                    
                    // Buttons.
                    HStack(spacing: 16) {

                        // GitHub.
                        VStack(spacing: 4) {

                            Text(viewModel.user.gitHubUsername)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 14, weight: .bold))
                            
                            Text(Strings.gitHub.rawValue)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 11, weight: .regular))
                                .foregroundColor(Colors.dimGray)
                        }
                        .padding(.all, 8)
                        .background(Color.white)
                        .cornerRadius(16)
                        
                        // STEAM.
                        VStack(spacing: 4) {

                            Text(viewModel.user.steamGameName)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 14, weight: .bold))
                            
                            Text(Strings.steam.rawValue)
                                .frame(maxWidth: .infinity, alignment: .center)
                                .font(.system(size: 11, weight: .regular))
                                .foregroundColor(Colors.dimGray)
                        }
                        .padding(.all, 8)
                        .background(Color.white)
                        .cornerRadius(16)
                    }
                    
                    // Bio and Lirem ipsum.
                    VStack(spacing: 16) {
                        
                        Text(Strings.bio.rawValue)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 24, weight: .regular))
                        
                        Text(viewModel.loremIpsum)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14, weight: .regular))
                    }
                }
                .padding([.leading, .trailing], 16)
                .padding([.top, .bottom], 32)
                .background(Colors.whiteSmoke)
                //.cornerRadius(10, corners: [.topLeft, .topRight])
            }
        }
    }
    
    init(viewModel: ProfileViewModel) {
        
        self.viewModel = viewModel
        
        // Set background color for toolbar for all states.
        let coloredAppearance = UINavigationBarAppearance()
            coloredAppearance.configureWithTransparentBackground()
            coloredAppearance.backgroundColor = UIColor(Colors.whiteSmoke)

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
}

struct ProfileView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfileView(viewModel: .init(dataService: ExampleDataServiceImpl()))
    }
}
