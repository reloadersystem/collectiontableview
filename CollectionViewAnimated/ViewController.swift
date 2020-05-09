//
//  ViewController.swift
//  CollectionViewAnimated
//
//  Created by Resembrink Correa on 5/8/20.
//  Copyright © 2020 Reloader. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        models.append(Model(text: "iPhone Model 1012", imageName:
            "iphone_1"))
        
        models.append(Model(text: "iPhone Deport 1013", imageName:
            "iphone_2"))
        
        models.append(Model(text: "iPhone Run 1014", imageName:
            "iphone_3"))
        
        models.append(Model(text: "iPhone Sleep 1015" , imageName:
            "iphone_4"))
        
        models.append(Model(text: "iPhone Move 1016", imageName:
            "iphone_5"))
        
        models.append(Model(text: "iPhone Summer 1017", imageName:
            "iphone_6"))
        
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
    }
    
    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
         //return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
}


struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String){
        self.text = text
        self.imageName = imageName
    }
}
