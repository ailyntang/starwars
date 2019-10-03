
import Foundation

final class NetworkManager {
  
  let defaultSession = URLSession(configuration: .default)
  var dataTask: URLSessionDataTask?
  var errorMessage = ""
  var films: [Film] = []
  private let url = URL(string: "https://swapi.co/api/films/1")!
  
  func fetchFilms(completionHandler: @escaping (Film?, String) -> Void) {
    dataTask?.cancel()
    
    dataTask = defaultSession.dataTask(with: url) { [weak self] data, response, error in defer {
      self?.dataTask = nil
      }
      if let error = error {
        self?.errorMessage = "DataTask error: \(error.localizedDescription)"
      } else if
        let data = data,
        let response = response as? HTTPURLResponse,
        response.statusCode == 200 {
        print(data)
        DispatchQueue.main.async {
          completionHandler(Film(title: "woo it worked", director: "mee", openingCrawl: "y'all"), self?.errorMessage ?? "")
        }
      }
    }
  }
}

private extension NetworkManager {
  func getRequest(url: URL) -> URLRequest {
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    return request
  }
}
