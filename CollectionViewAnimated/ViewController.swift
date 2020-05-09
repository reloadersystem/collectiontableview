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
        
        
        models.append(Model(text: "Watch Digital Models", imageName:
            "img_1"))
        
        models.append(Model(text: "WG Deport", imageName:
            "img_2"))
        
        models.append(Model(text: "WG Run", imageName:
            "img_3"))
        
        models.append(Model(text: "WG Sleep", imageName:
            "img_4"))
        
        models.append(Model(text: "WG Move", imageName:
            "img_5"))
        
        models.append(Model(text: "WG Summer", imageName:
            "img_6"))
        
        
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
    }
    
    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //models.count
         return 1
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

