//
//  UserView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 01.05.2022.
//

import SwiftUI

struct UserView: View {
    
    @ObservedObject var viewModel: UserViewModel
    
    var body: some View {
        
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                
                HStack {
                    Spacer()
                    // Profile image.
                    // todo: image position
                    Image("girl")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .infinity, height: 180, alignment: .trailing)
                    Spacer()
                        .frame(width: 32, height: 0, alignment: .trailing)
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
                        .onTapGesture {
                            viewModel.openEmail(viewModel.user.email)
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
                        .onTapGesture {
                            viewModel.openUrl(viewModel.user.gitHubUrl.url)
                        }
                        
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
                        .onTapGesture {
                            viewModel.openUrl(viewModel.user.steamUrl.url)
                        }
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
                // todo: .cornerRadius(10, corners: [.topLeft, .topRight])
            }
        }
    }
    
    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
    }
}

struct ProfileView_Previews: PreviewProvider {
    
    static var previews: some View {
        UserView(viewModel: .init(dataService: ExampleDataServiceImpl()))
            .previewInterfaceOrientation(.portrait)
    }
}
