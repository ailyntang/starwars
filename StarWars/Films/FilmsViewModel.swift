
import Foundation

final class FilmsViewModel {
  let count: Int = 7
  
  private var title: String
  private var director: String

  init(with film: Film){
    self.title = film.title
    self.director = film.director
  }
  
  func fetchFilms() {
    let networkManager = NetworkManager()
    networkManager.fetchFilms { (films) in
      print(films)
    }
  }
}
