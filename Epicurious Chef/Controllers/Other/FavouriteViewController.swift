//
//  FavouriteViewController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/30/23.
//

import UIKit

// controller to show and search for  Favourite Foods
final class FavouriteViewController: UIViewController {
    
    // MARK: - Variables
    private let image: [UIImage] = [
        UIImage(named: "Image 1")!,
        UIImage(named: "Image 2")!,
        UIImage(named: "Image 3")!,
        UIImage(named: "Image 4")!,
        UIImage(named: "Image 5")!,
        
    ]
    
    // MARK: - UIComponents
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        title = "Favourite Food"
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        self.view.backgroundColor = .systemBlue
        
        self.view.addSubviews(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            
        ])
    }
}

extension  FavouriteViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("The TableView could not dequeue a CustomCell iin ViewController.")
        }
        //        cell.textLabel?.text = indexPath.row.description
        let image = self.image[indexPath.row]
        cell.configure(with: image, and: indexPath.row.description)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112.5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("DEBUG PRINT:", indexPath.row)
    }
    
    
}
