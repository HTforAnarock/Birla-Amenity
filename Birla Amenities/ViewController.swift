//
//  ViewController.swift
//  Birla Amenities
//
//  Created by Harsh Tiwari on 01/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let pics = [
        "swimmingPool",
        "tennis",
        "basketball",
        "cricket",
        "football"
    ]
    private let amenities = [
        "Swimming pool",
        "Tennis",
        "Basketball",
        "Cricket",
        "Football"
    ]
    private let rates = [
        "",
        "₹ 250 / per hour",
        "₹ 250 / per hour",
        "",
        "₹ 250 / per hour"
    ]
    @IBOutlet weak var amenitiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amenitiesTableView.delegate = self
        amenitiesTableView.dataSource = self
        
        amenitiesTableView.separatorStyle = .none
        
        self.amenitiesTableView.register(UINib(nibName: "AmenitiesTableViewCell", bundle: nil), forCellReuseIdentifier: "AmenitiesTableViewCell")
        
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amenities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = amenitiesTableView.dequeueReusableCell(withIdentifier: "AmenitiesTableViewCell", for: indexPath) as! AmenitiesTableViewCell
        cell.selectionStyle = .none
        cell.prepopulate(imageName: pics[indexPath.row], amenitiesTitleLabel: amenities[indexPath.row], rateLab: rates[indexPath.row])
        return cell
    }
}
