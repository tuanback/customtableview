//Created by Real Life Swift on 08/12/2018

import Foundation
import UIKit

extension UITableViewCell {
  static var reuseIdentifier: String {
    return String(describing: self)
  }
  
  static var nibName: String {
    return String(describing: self)
  }
}
