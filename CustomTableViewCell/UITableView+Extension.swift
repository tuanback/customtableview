//Created by Real Life Swift on 08/12/2018

import Foundation
import UIKit

extension UITableView {
  
  func register<T: UITableViewCell>(_: T.Type) {
    let nib = UINib(nibName: T.nibName, bundle: nil)
    register(nib, forCellReuseIdentifier: T.reuseIdentifier)
  }
  
  func dequeueReuseableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
    guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
    }
    
    return cell
  }
  
}
