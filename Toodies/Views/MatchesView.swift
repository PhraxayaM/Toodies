//
//  MatchesView.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

import UIKit

class MatchesView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        setupView()
        setupConstraints()
        
    }
    
    let tableView = UITableView()
    
    func setupView(){
        addSubview(tableView)
        tableView.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    }

}
