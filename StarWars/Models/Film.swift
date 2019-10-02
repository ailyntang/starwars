
import Foundation

struct Film {
  let title: String
  let director: String
  let openingCrawl: String
  
  init(title: String,
       director: String,
       openingCrawl: String) {
    self.title = title
    self.director = director
    self.openingCrawl = openingCrawl
  }
}
