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
//        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
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
    
    // Allows you to move the image
    @objc func swipe(_ sender: UIPanGestureRecognizer) {
        print("working")
        let swipe = sender.view!
        let point = sender.translation(in: view)
//        let rotatedThumb = mainView.thumb2.image?.rotate(radians: .pi)
        
        let xFromCenter = swipe.center.x - view.center.x
        // creates a center point for the  image
        swipe.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        
        if xFromCenter > 0 {
            
            mainView.thumb2.image = UIImage(named: "thumbsup")
            mainView.thumb2.image = mainView.thumb2.image?.withRenderingMode(.alwaysTemplate)
            mainView.thumb2.tintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            mainView.thumb2.alpha = 1
            
        } else {
            
            mainView.thumb2.image = UIImage(named: "thumbsd")
            mainView.thumb2.image = mainView.thumb2.image?.withRenderingMode(.alwaysTemplate)
            mainView.thumb2.tintColor = .red
            mainView.thumb2.alpha = 1
        }
        
        mainView.thumb2.alpha = abs(xFromCenter) / view.center.x
        
        
        // When touches end, makes  image disapear
        if sender.state == UIGestureRecognizer.State.ended {
            UIView.animate(withDuration: 0.2) {
                swipe.center = self.view.center
                self.mainView.thumb2.alpha = 0
            }
            //  swiping to the left
            if swipe.center.x < 75 {
                UIView.animate(withDuration: 0.3) {
                    swipe.center = CGPoint(x: swipe.center.x - 200, y: swipe.center.y + 75)
                    swipe.alpha = 0
                }
                return
                
                // swiping to the right
            } else if swipe.center.x > (view.frame.width - 75) {
                UIView.animate(withDuration: 0.3) {
                    swipe.center = CGPoint(x: swipe.center.x - 200, y: swipe.center.y + 75)
                    swipe.alpha = 0
                }
                return
            }
                
        
        UIView.animate(withDuration: 0.2, animations: {
            swipe.center = self.view.center
        })
        }
    }
    

}
