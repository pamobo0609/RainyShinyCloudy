//
//  ViewController.swift
//  rainyshinycloudy
//
//  Created by Jose Monge on 6/6/18.
//  Copyright © 2018 Jose Monge. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var currentWeatherImg:UIImageView!
    @IBOutlet weak var lblCurrentWeatherType: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
    }
    
    func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
    }

}

