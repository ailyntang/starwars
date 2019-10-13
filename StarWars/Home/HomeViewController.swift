
import UIKit

final class HomeViewController: UIViewController {
  @IBOutlet private var tableView: UITableView!
  
  private let cellIdentifier = "HomeCell"
  private let categories: [Category] = [.films, .people, .planets, .species, .starships, .vehicles]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Star Wars"
    tableView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
  }
}

extension HomeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return categories.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomeCell else {
      fatalError("Issue with dequeuing \(cellIdentifier)")
    }
    cell.configure(with: categories[indexPath.row])
    return cell
  }
}

extension HomeViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    let category = categories[indexPath.row]
    let viewController: UIViewController
    
    switch category {
    case .films: viewController = FilmsViewController()
    default: viewController = FilmsViewController()
    }
    
    navigationController?.pushViewController(viewController, animated: true)
  }
}
