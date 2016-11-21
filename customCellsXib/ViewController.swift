//
//  ViewController.swift
//  customCellsXib
//
//  Created by steven burnett on 11/19/16.
//  Copyright © 2016 steven burnett. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage
}

class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    
    
    override func viewDidLoad() {
        arrayOfCellData = [cellData(cell : 1, text: "asdfasdfasdfasd", image : #imageLiteral(resourceName: "6154124337_30db82d88c_o") ), cellData(cell : 2, text: "123123123123", image : #imageLiteral(resourceName: "6154124337_30db82d88c_o") ), cellData(cell : 1, text: "czxvxcvzxcvxzc", image : #imageLiteral(resourceName: "6154124337_30db82d88c_o") )]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if arrayOfCellData[indexPath.row].cell == 1 {
            let cell = Bundle.main.loadNibNamed("TableViewCell1" , owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 2 {
            let cell = Bundle.main.loadNibNamed("TableViewCell2" , owner: self, options: nil)?.first as! TableViewCell2
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            return cell
        }
        else {
            let cell = Bundle.main.loadNibNamed("TableViewCell1" , owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            return cell
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1 {
            return 329.0
        }
        else if arrayOfCellData[indexPath.row].cell == 2 {
            return 109.0
        }
        else {
            return 329.0
        }
    }

}

