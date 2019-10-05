
import Foundation

struct Film: Codable {
  let title: String
  let director: String
  
  init(title: String,
       director: String) {
    self.title = title
    self.director = director
  }
}
