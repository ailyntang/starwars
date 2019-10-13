
import Foundation

struct FilmSummary: Codable {
  let count: Int?
  let results: [Film]?
}

struct Film: Codable {
  let title: String
  let episodeId: Int
  
  enum CodingKeys: String, CodingKey {
    case title
    case episodeId = "episode_id"
  }
  
  init(title: String,
       episodeId: Int) {
    self.title = title
    self.episodeId = episodeId
  }
}

struct People: Codable {
  let count: Int
  let next: String?
  let prev: String?
  let results: [Person]?
}

struct Person: Codable {
  let name: String
}
