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
    addSubview(background)
    addSubview(titleLabel)
    addSubview(thumb2)
    }
    
    let background: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sky")
        image.contentMode = .scaleAspectFit
        image.layer.zPosition = -1
        return image
    }()
       
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bienvenu")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Le Bienvenu"
        label.textColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 40)
        
        return label
    }()
    
    let thumb2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "thumbup")
        image.contentMode = .scaleAspectFit
        
        
        image.alpha = 0
        
        return image
    }()
    
    
    
}
