//
//  MenuViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/30/23.
//

import UIKit

// controller to show and search for  Menus
final class MenuViewController: UIViewController {

    private let menuListView = MenuListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Food Menu"
        setUpView()
        
        
//        view.addSubview(menuListView)
//        NSLayoutConstraint.activate([
//            menuListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            menuListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            menuListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
//            menuListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        
        
        
//        ])
    }
    private func setUpView() {
        view.addSubviews(menuListView)
        NSLayoutConstraint.activate([
            menuListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            menuListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            menuListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            menuListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
}
