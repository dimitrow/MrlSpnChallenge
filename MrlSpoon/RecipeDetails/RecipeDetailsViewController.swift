//
//  RecipeDetailsViewController.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    let recipeTableView: UITableView = {
        
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        
        
        return tableView
    }()
    
    var viewModel: RecipeDetailsViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Recipe Details"
        view.backgroundColor = .msBackground
        view.addSubview(recipeTableView)
        recipeTableView.pin(to: view)
        viewModel?.buildContent()
    }
    
}

extension RecipeDetailsViewController: RecipeDetailsViewDelegate {
            
    func updateContent() {
        
    }
}
