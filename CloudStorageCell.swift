import UIKit

class CloudStorageCell: UITableViewCell {

    @IBOutlet weak var sideImgView: UIImageView!
    @IBOutlet weak var sideLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        sideImgView.setRadius(8)
    }
    
    var model: CloudStorageModel! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        sideImgView.image = model.image
        sideLbl.text = model.cloudStorageTitle
    }
    
}
