
import Foundation

final class NetworkManager {

  var films: [Film] = []
  private let domainUrlString = "https://swapi.co/api/"
  
  func fetchFilms(completionHandler: @escaping ([Film]) -> Void) {
    let urlString = domainUrlString + "films/"
    
    if let url = URL(string: urlString) {
      let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
        if let filmSummary = try? JSONDecoder().decode(FilmSummary.self, from: data!) {
          completionHandler(filmSummary.results ?? [])
        }
      })
      task.resume()
    }
  }

  private func fetchFilm(withID id:Int, completionHandler: @escaping (Film) -> Void) {
    let urlString = domainUrlString + "films/\(id)"
    
    if let url = URL(string: urlString) {
      let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let film = try? JSONDecoder().decode(Film.self, from: data!) {
          completionHandler(film)
        }
      }
      task.resume()
    }
  }
}
