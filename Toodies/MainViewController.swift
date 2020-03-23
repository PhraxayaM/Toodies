//
//  HomeViewController.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//


import UIKit

class MainViewController: UIViewController {

    var mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setup()
    }
    
    func setup(){
        setupView()
        
    }
    
    func setupView(){
        let MainViews = MainView(frame: self.view.frame)
        self.mainView = MainViews
        self.view.addSubview(mainView)
    }

}
