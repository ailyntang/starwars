
import Foundation

final class FilmsViewModel {
  private var title: String
  private var director: String
  private var openingCrawl: String

  init(with film: Film){
    self.title = film.title
    self.director = film.director
    self.openingCrawl = film.openingCrawl
  }
  
  func loadFilms() {
    let networkManager = NetworkManager()
    networkManager.fetchFilms() { [weak self] results, errorMessage in
      if let results = results {
        print("YAAAY results! \n\(results)")
      }
      
      if !errorMessage.isEmpty {
        print("Error loading films: \(errorMessage)")
      }
    }
  }
}
