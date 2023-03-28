//
//  UITableViewExtension.swift
//  QuizApp
//
//  Created by Tow Ching Shen on 09/03/2023.
//

import UIKit

extension UITableView {
    // MARK: Helper
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(_ type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}
