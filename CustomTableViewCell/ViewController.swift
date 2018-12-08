//Created by Real Life Swift on 02/12/2018

import UIKit

struct Item {
  var name: String
  var imageName: String
}
class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  var items: [Item] = [Item(name: "Record videos", imageName: "1.jpg"),
                       Item(name: "Edit Videos", imageName: "2.jpg"),
                       Item(name: "Reply comments", imageName: "3.jpg"),
                       Item(name: "Whatever", imageName: "4.jpg"),
                       Item(name: "One more row", imageName: "5.jpg")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    setupTableView()
  }

  private func setupTableView() {
    //let nib = UINib(nibName: ItemTableViewCell.nibName, bundle: nil)
    //tableView.register(nib, forCellReuseIdentifier: ItemTableViewCell.reuseIdentifier)
    tableView.register(ItemTableViewCell.self)
  }

}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReuseableCell(forIndexPath: indexPath) as ItemTableViewCell
    
    cell.itemImageView.image = UIImage(named: items[indexPath.row].imageName)
    cell.itemTitleLabel.text = items[indexPath.row].name
    
    return cell
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return tableView.frame.height / 4
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Did select row at: \(indexPath)")
  }
}

