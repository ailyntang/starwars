
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
}
