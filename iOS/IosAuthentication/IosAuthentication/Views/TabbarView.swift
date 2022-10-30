//
//  TabbarView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI


struct TabbarView: View {
    
    private let dashboardView: DashboardView
    private let profileView: ProfileView
    
    var body: some View {
        
        TabView {
            dashboardView
                .tabItem {
                    Image(systemName: "house.fill")
                    Text(Strings.dashboardView.rawValue)
                }
            
            profileView
                .tabItem {
                    Image(systemName: "person.fill")
                    Text(Strings.profileView.rawValue)
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle(Text(Strings.appName.rawValue))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    init(dashboardView: DashboardView, profileView: ProfileView) {
        
        self.dashboardView = dashboardView
        self.profileView = profileView
    }
}


struct TabbarView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TabbarView(
            dashboardView: DashboardView(viewModel: .init(dataService: ExampleDataServiceImpl())),
            profileView: ProfileView(viewModel: .init(dataService: ExampleDataServiceImpl()))
        )
    }
}
