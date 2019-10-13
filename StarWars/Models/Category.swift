
import UIKit

enum Category {
  case films
  case planets
  case people
  case species
  case starships
  case vehicles
  
  var title: String {
    switch self {
    case .films: return "Films"
    case .planets: return "Planets"
    case .people: return "People"
    case .species: return "Species"
    case .starships: return "Starships"
    case .vehicles: return "Vehicles"
    }
  }
  
  var icon: UIImage? {
    switch self {
    case .films: return UIImage(named: "iconVideoCamera")
    case .planets: return UIImage(named: "iconPlanet")
    case .people: return UIImage(named: "iconPerson")
    case .species: return UIImage(named: "iconPawPrint")
    case .starships: return UIImage(named: "iconDeathStar")
    case .vehicles: return UIImage(named: "iconScooter")
    }
  }
}
