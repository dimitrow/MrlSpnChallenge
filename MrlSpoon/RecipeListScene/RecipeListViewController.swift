//
//  RecipeListViewController.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit
import MBProgressHUD

class RecipeListViewController: UIViewController {

    let recipeTableView: UITableView = {
        
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        
        tableView.register(UINib.init(nibName: RecipeListRecipeCell.identifier, bundle: nil), forCellReuseIdentifier: RecipeListRecipeCell.identifier)
        
        return tableView
    }()
    
    var viewModel: RecipeListViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Recipes"
        view.backgroundColor = .msBackground
        view.addSubview(recipeTableView)
        recipeTableView.pin(to: view)
        viewModel?.fetchRecipes()
    }
}

extension RecipeListViewController: RecipeListViewDelegate {
        
    func operationFailed(_ error: Error) {
        
    }
    
    func updateContent() {
        
        DispatchQueue.main.async { [weak self] in
            
            if let weakSelf = self {
                
                weakSelf.recipeTableView.delegate = weakSelf
                weakSelf.recipeTableView.dataSource = weakSelf
                weakSelf.recipeTableView.reloadData()
            }
        }
    }
}
