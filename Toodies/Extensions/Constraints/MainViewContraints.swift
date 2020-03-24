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
        background.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        thumb2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([backgroundImage.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            backgroundImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            backgroundImage.widthAnchor.constraint(equalToConstant: 400),
            backgroundImage.heightAnchor.constraint(equalToConstant: 800),
        
            background.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            background.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
                
            thumb2.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor),
            thumb2.centerYAnchor.constraint(equalTo: backgroundImage.centerYAnchor),
            thumb2.heightAnchor.constraint(equalToConstant: 300),
            thumb2.widthAnchor.constraint(equalToConstant: 300)
            
        
           
       
        ])
        
        
        
       
    }

    }
