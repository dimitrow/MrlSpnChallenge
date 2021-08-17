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
    
    var viewModel: RecipeListViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Recipes"
        
        recipeTableView.delegate = self
        recipeTableView.dataSource = self
        
        view.backgroundColor = .msBackground
        view.addSubview(recipeTableView)
        recipeTableView.pin(to: view)
        viewModel?.fetchRecipes()
        MBProgressHUD.showAdded(to: self.view, animated: true)
    }
}

extension RecipeListViewController: RecipeListViewDelegate {
            
    func updateContent() {
        
        DispatchQueue.main.async { [weak self] in
            
            if let weakSelf = self, let view = self?.view {
                
                MBProgressHUD.hide(for: view, animated: true)
                weakSelf.recipeTableView.reloadData()
                
            }
        }
    }
}
