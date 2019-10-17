
import UIKit

struct HomeViewModel {
  private let categories: [Category] = [.films, .people, .planets, .species, .starships, .vehicles]
  let title = "Star Wars"
  
  func numberOfRowsIn(_ section: Int) -> Int {
    return section == 0 ? categories.count : 0
  }
  
  func cellForRowAt(_ indexPath: IndexPath) -> Category {
    return categories[indexPath.row]
  }
  
  func viewControllerAt(_ indexPath: IndexPath) -> UIViewController {
    let viewController: UIViewController
    
    switch categories[indexPath.row] {
    case .films: viewController = FilmsViewController()
    default: viewController = FilmsViewController()
    }
    
    return viewController
  }
}
