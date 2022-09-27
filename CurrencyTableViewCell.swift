//
//  CurrencyTableViewCell.swift
//  DollarEuroConvert
//
//  Created by meg on 9/27/22.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

    @IBOutlet weak var currencyName: UILabel!
    @IBOutlet weak var currencySymbol: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
