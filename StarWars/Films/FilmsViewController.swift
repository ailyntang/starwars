
import UIKit

final class FilmsViewController: UIViewController {
  @IBOutlet private var tableView: UITableView!
  
  private let cellIdentifier = "FilmCell"
  private var films: [Film]?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    NetworkManager().fetchFilms { (films) in
      self.films = films
      DispatchQueue.main.async{
        self.tableView.reloadData()
      }
    }
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
    cell.configure(with: films?[indexPath.row] ?? Film(title: "Wait for it..", episodeId: 4))
    return cell
  }
}

extension FilmsViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
}
