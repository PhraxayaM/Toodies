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
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.title = "Main"
        print("Main")
        setup()

    }
    
    func setup(){
        setupView()
        
    }
    
    func setupView(){
        let MainViews = MainView(frame: self.view.frame)
        self.mainView = MainViews
        self.view.addSubview(mainView)
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(swipe(_:))); mainView.backgroundImage.addGestureRecognizer(gesture)
        mainView.backgroundImage.isUserInteractionEnabled = true
        
    }

    
    @objc func swipe(_ sender: UIPanGestureRecognizer) {
        print("working")
        let swipe = sender.view!
        let point = sender.translation(in: view)
        swipe.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if sender.state == UIGestureRecognizer.State.ended {
        
        UIView.animate(withDuration: 0.2, animations: {
            swipe.center = self.view.center
        })
        }
    }
    

}
