//
//  MainViewContraints.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

extension MainView {
    
    func setupConstraints() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([backgroundImage.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
        backgroundImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
       
        ])
        
        
        
       
    }

}
