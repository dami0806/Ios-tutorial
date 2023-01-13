//
//  ViewController.swift
//  Table_food
//
//  Created by 박다미 on 2023/01/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let data = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
        self.tableView.register(UINib(nibName:"FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "foodcell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate{
    
    
}
extension ViewController: UITableViewDataSource{
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // (힙에 올라간)재사용 가능한 셀을 꺼내서 사용하는 메서드
            let cell = tableView.dequeueReusableCell(withIdentifier: "foodcell", for: indexPath) as! FoodTableViewCell
            
      
            cell.title.text = self.data[indexPath.row]
            
          
            
           return cell
            
        }
        
        
    }
    
    


