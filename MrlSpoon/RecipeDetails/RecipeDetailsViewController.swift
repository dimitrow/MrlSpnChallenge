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
        
        tableView.register(UINib.init(nibName: RecipeMainCell.identifier, bundle: nil), forCellReuseIdentifier: RecipeMainCell.identifier)
        tableView.register(UINib.init(nibName: RecipeDescriptionCell.identifier, bundle: nil), forCellReuseIdentifier: RecipeDescriptionCell.identifier)
        tableView.register(UINib.init(nibName: RecipeTagListCell.identifier, bundle: nil), forCellReuseIdentifier: RecipeTagListCell.identifier)
        
        return tableView
    }()
    
    var viewModel: RecipeDetailsViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Recipe Details"
        view.backgroundColor = .msBackground
        view.addSubview(recipeTableView)
        recipeTableView.pin(to: view)
        viewModel?.buildContent(for: recipeTableView)
    }
    
}

extension RecipeDetailsViewController: RecipeDetailsViewDelegate {
            
    func updateContent() {
        
        recipeTableView.delegate = self
        recipeTableView.dataSource = self
        recipeTableView.reloadData()
    }
}
