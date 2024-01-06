//
//  StudentsTableViewCell.swift
//  TechnicalTest
//
//  Created by NyobainXcode on 06/01/24.
//

import UIKit

class StudentsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var VCimage: UIImageView!
    
    @IBOutlet weak var VCname: UILabel!
    
    @IBOutlet weak var VCaddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
