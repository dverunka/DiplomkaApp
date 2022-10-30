//
//  TabbarView.swift
//  IosAuthentication
//
//  Created by Veronika Dzúriková on 02.05.2022.
//

import SwiftUI


struct TabbarView: View {
    
    private let dashboardView: DashboardView
    private let userView: UserView
        
    var body: some View {
        
        TabView {
            dashboardView
                .tabItem {
                    Image("home").renderingMode(.template)
                    Text(Strings.dashboardView.rawValue)
                }
            
            userView
                .tabItem {
                    Image("person").renderingMode(.template)
                    Text(Strings.profileView.rawValue)
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle(Text(Strings.appName.rawValue))
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    init(dashboardView: DashboardView, userView: UserView) {
        
        self.dashboardView = dashboardView
        self.userView = userView
        
        // Set background color for toolbar for all states.
        let coloredAppearance = UINavigationBarAppearance()
            coloredAppearance.configureWithTransparentBackground()
            coloredAppearance.backgroundColor = UIColor(Colors.whiteSmoke)

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
}

struct TabbarView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TabbarView(
            dashboardView: DashboardView(viewModel: .init(dataService: ExampleDataServiceImpl())),
            userView: UserView(viewModel: .init(dataService: ExampleDataServiceImpl()))
        )
    }
}
