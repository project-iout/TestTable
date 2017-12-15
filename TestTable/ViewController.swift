//
//  ViewController.swift
//  TestTable
//
//  Created by WengChihao on 13/10/2017.
//  Copyright © 2017 WengChihao. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    var productArray:[Product] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        let product:Product =  productArray[indexPath.row]
        cell.test.text = product.name
        cell.myImage.image = UIImage(named: product.photo)
        cell.txt.text = product.desc
        
        return cell
    }
    

    override func viewDidLoad() {
        
        let product = Product(name:"小明" , photo:"1"  , desc:"說明1")
        let product2 = Product(name:"小呆" , photo:"2"  , desc:"說明1")
        let product3 = Product(name:"小明黃" , photo:"3"  , desc:"說明1")
        productArray.append(product)
        productArray.append(product2)
        productArray.append(product3)

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

