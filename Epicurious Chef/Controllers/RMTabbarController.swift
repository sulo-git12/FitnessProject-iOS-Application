//
//  ViewControllerNew.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/30/23.
//

import UIKit

// Controller to Home tab and root tab controller
final class RMTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()

    }
    
    private func setUpTabs(){
       let menuVC = DetailsViewController()
       let favouriteVC = FavouriteViewController()
       let settingsVC = RMSettingsViewController()
        
        menuVC.navigationItem.largeTitleDisplayMode = .automatic
        favouriteVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
//        menuVC.title = "Food Menu"
//        favouriteVC.title = "Fav Food"
//        settingsVC.title = "Settings"
        
       let nav1 = UINavigationController(rootViewController: menuVC)
       let nav2 = UINavigationController(rootViewController: favouriteVC)
       let nav3 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Food Menu",
                                       image: UIImage(systemName: "house"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Favourite Food",
                                       image: UIImage(systemName: "heart.fill"),
                                       tag: 2)
        
        nav3.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "checkmark.seal"),
                                       tag: 3)
        
        for nav in [nav1, nav2, nav3]{
            nav .navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }
}
