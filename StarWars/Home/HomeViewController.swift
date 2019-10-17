
import UIKit

final class HomeViewController: UIViewController {
  @IBOutlet private var tableView: UITableView!
  
  private let viewModel = HomeViewModel()
  private let cellIdentifier = "HomeCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = viewModel.title
    tableView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
  }
}

extension HomeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.numberOfRowsIn(section)
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? HomeCell else {
      fatalError("Issue with dequeuing \(cellIdentifier)")
    }
    cell.configure(with: viewModel.cellForRowAt(indexPath))
    return cell
  }
}

extension HomeViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    navigationController?.pushViewController(viewModel.viewControllerAt(indexPath), animated: true)
  }
}
