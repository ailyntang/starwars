
import UIKit

final class HomeCell: UITableViewCell {
  @IBOutlet private var mainImageView: UIImageView!
  @IBOutlet private var mainLabel: UILabel!
  
  func configure(with text: String) {
    mainLabel.text = text
  }
}
