//
//  MainView.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MainView: UIView {

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
    
    
    func setupView(){
    addSubview(backgroundImage)
    }
    
   
       
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bienvenu")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    
}
