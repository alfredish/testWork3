//
//  ViewController.swift
//  testWork3
//
//  Created by кирилл корнющенков on 11/11/2019.
//  Copyright © 2019 кирилл корнющенков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arr:[String] = []
    @IBOutlet weak var InputCounttextField: UITextField!
    
    @IBOutlet weak var buttom: UIButton!{
        didSet{
            buttom.layer.cornerRadius = buttom.frame.height / 2
            buttom.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
    }

    
    @IBAction func LoadButtom(_ sender: UIButton) {
        updateApi()
        tableView.reloadData()
    }

}



//MARK: TableView
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.contentLabel.text = arr[indexPath.row]
        
        return cell
    }
    
}


//MARK: API
extension ViewController{
    
    func updateApi(){
        
        arr.removeAll()
        
        let Url = "http://api.icndb.com/jokes/random/" + (InputCounttextField.text ?? "0")
        let url = URL(string: Url)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else { return }
            guard let info = try? JSONDecoder().decode(datas.self, from: data) else { return }
        
            for i in info.value{
                self.arr.append(i.joke)
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }.resume()
    }
}
