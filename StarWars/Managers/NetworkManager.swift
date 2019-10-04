
import Foundation

final class NetworkManager {
  
  let defaultSession = URLSession(configuration: .default)
  var dataTask: URLSessionDataTask?
  var errorMessage = ""
  var films: [Film] = []
  private let url = URL(string: "https://swapi.co/api/films/1")!
  
  func fetchFilmsSimple() {
    let urlString = "https://www.swapi.co/api/films/"
    
    if let url = URL.init(string: urlString) {
      let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        print(String.init(data: data!, encoding: .ascii) ?? "no data")
      }
      task.resume()
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
