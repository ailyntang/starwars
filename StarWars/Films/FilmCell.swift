
import UIKit

final class FilmCell: UITableViewCell {
  @IBOutlet private var titleLabel: UILabel!
  @IBOutlet private var subtitleLabel: UILabel!
  @IBOutlet private var descriptionLabel: UILabel!

  func configure(with film: Film) {
    titleLabel.text = film.title
    subtitleLabel.text = film.director
    descriptionLabel.text = "film.openingCrawl"
  }
}
