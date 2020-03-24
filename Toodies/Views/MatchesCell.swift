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
    
    let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return view

    }()
    

    func setup(){
            setupSubview()
            setupConstraints()
            
        }
        func setupSubview() {
            addSubview(titleLabel)
            addSubview(imageLabel)
            addSubview(seperatorView)
        }
        
        func setupConstraints() {
            
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            titleLabel.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 30).isActive = true
            titleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
            
            imageLabel.translatesAutoresizingMaskIntoConstraints = false
            imageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
            imageLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
            imageLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
//            imageLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
            imageLabel.contentMode = .scaleAspectFit
            imageLabel.layer.cornerRadius = 20
            
            seperatorView.translatesAutoresizingMaskIntoConstraints = false
            seperatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
            seperatorView.widthAnchor.constraint(equalToConstant: 450).isActive = true
            seperatorView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        }
    
}
