import UIKit

class SearchCell: UITableViewCell {
    @IBOutlet weak var searchImgView: UIImageView!

    @IBOutlet weak var searchLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
