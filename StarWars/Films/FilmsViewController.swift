
import UIKit

final class FilmsViewController: UIViewController {
  @IBOutlet private var tableView: UITableView!
  
  private let cellIdentifier = "FilmCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
  }
}

extension FilmsViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 7
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? FilmCell else {
      fatalError("Issue dequeuing \(cellIdentifier)")
    }
    cell.configure(with: Film(title: "boo", director: "hoo"))
    return cell
  }
}

extension FilmsViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
