
import UIKit

final class HomeCell: UITableViewCell {
  @IBOutlet private var mainImageView: UIImageView!
  @IBOutlet private var mainLabel: UILabel!
  
  func configure(with category: Category) {
    mainImageView.image = category.icon
    mainLabel.text = category.title
  }
}
