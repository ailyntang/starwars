
import UIKit

final class FilmCell: UITableViewCell {
  @IBOutlet private var titleLabel: UILabel!
  @IBOutlet private var subtitleLabel: UILabel!

  func configure(with film: Film) {
    titleLabel.text = film.title
    subtitleLabel.text = String(film.episodeId)
  }
}
