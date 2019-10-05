
import Foundation

final class FilmsViewModel {
  var count: Int? = 7
  var films: [Film]?

  init() {
    NetworkManager().fetchFilms { (films) in
      self.films = films
    }
  }
}
