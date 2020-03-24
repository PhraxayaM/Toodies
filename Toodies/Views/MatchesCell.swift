//
//  MatchesCell.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MatchesCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.numberOfLines = 2
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "description"
        return label
    }()
    
    let  imageLabel: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Corners")
        image.clipsToBounds = true
        return image
    }()
    

    func setup(){
            setupSubview()
            setupConstraints()
            
        }
        func setupSubview() {
            addSubview(titleLabel)
            addSubview(imageLabel)
        }
        
        func setupConstraints() {
            
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70).isActive = true
            titleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
            
            imageLabel.translatesAutoresizingMaskIntoConstraints = false
//            imageLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10).isActive = true
            imageLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
            imageLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
//            imageLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
            imageLabel.contentMode = .scaleAspectFit
            imageLabel.layer.cornerRadius = 20
            
        }
    
}
