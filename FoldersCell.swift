import UIKit

class FoldersCell: UITableViewCell {

    @IBOutlet weak var folderLbl: UILabel!
    @IBOutlet weak var folderImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
