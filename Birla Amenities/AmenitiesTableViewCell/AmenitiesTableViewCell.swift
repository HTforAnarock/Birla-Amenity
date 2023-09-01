//
//  AmenitiesTableViewCell.swift
//  Birla Amenities
//
//  Created by Harsh Tiwari on 01/09/23.
//

import UIKit

class AmenitiesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contentCellView: UIView!
    @IBOutlet weak var amenitiesImage: UIImageView!
    @IBOutlet weak var amenitiesDetailStackView: UIStackView!
    @IBOutlet weak var amenitiesTitleLabel: UILabel!
    @IBOutlet weak var timingsLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var amenitiesBookingButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }
    
    func prepopulate(imageName: String, amenitiesTitleLabel: String, rateLab: String){
        self.amenitiesImage.image = UIImage(named: imageName) 
        self.amenitiesTitleLabel.text = amenitiesTitleLabel
        self.rateLabel.text = rateLab
        if rateLab == ""{
            self.rateLabel.isHidden = true
        }
    }
    
    private func setupUI(){
        contentCellView.layer.borderColor = UIColor.lightGray.cgColor
        contentCellView.layer.borderWidth = 1
        contentCellView.layer.cornerRadius = 12
        
        amenitiesImage.layer.cornerRadius = 12
        
        amenitiesBookingButton.layer.backgroundColor = UIColor.white.cgColor
        amenitiesBookingButton.layer.borderWidth = 1
        amenitiesBookingButton.layer.cornerRadius = 12
        amenitiesBookingButton.setTitle("Book", for: .normal)
        amenitiesBookingButton.setTitleColor(UIColor(red: 0.518, green: 0.047, blue: 0.435, alpha: 1), for: .normal)
        amenitiesBookingButton.layer.borderColor = UIColor(red: 0.518, green: 0.047, blue: 0.435, alpha: 1).cgColor
    }
    
}
