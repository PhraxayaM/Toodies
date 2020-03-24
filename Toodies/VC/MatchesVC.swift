//
//  MatchesVC.swift
//  Toodies
//
//  Created by MattHew Phraxayavong on 3/23/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class MatchesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var matchesView = MatchesView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        self.title = "Matches"
        print("Matches")
        setup()
        matchesView.tableView.dataSource = self
        matchesView.tableView.delegate = self
        matchesView.tableView.register(MatchesCell.self, forCellReuseIdentifier: "cell")
    }
    
    func setup(){
        setupView()
        
    }
    let restaurants = ["Benevieve", "Cobblestone", "Corners"]
    let images = ["Bienvenu", "Cobblestone", "Corners"]
    
    func setupView(){
        let MatchesViews = MatchesView(frame: self.view.frame)
        self.matchesView = MatchesViews
        self.view.addSubview(matchesView)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MatchesCell
            cell.titleLabel.text = restaurants[indexPath.row]
            cell.imageLabel.image = UIImage(named: images[indexPath.row])
            cell.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)

            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
