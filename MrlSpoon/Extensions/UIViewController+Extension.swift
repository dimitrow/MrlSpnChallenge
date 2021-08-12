//
//  UIViewController+Extension.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String? = nil, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true)
    }
}

protocol GenericFailureProtocol: AnyObject {
    
    func operationFailed(_ error: Error)
}

protocol GenericViewDelegateProtocol: AnyObject {
    
    func updateContent()
}

extension UIViewController: GenericFailureProtocol {
    
    func operationFailed(_ error: Error) {
        
        DispatchQueue.main.async { [weak self] in
            
            self?.showAlert(message: error.localizedDescription)
        }
    }
}


