//Created by Real Life Swift on 02/12/2018

import UIKit

class ItemTableViewCell: UITableViewCell {

  @IBOutlet weak var itemImageView: UIImageView!
  @IBOutlet weak var itemTitleLabel: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
