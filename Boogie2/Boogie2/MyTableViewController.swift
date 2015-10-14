//
//  MyTableViewController.swift
//  Boogie2
//
//  Created by christian johnson on 10/11/15.
//  Copyright © 2015 iOSBoogie. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    let icons = ["agreement2","arrow487","auricular6","black218","books8","calendar68","calendar146","call60","camera3","car189","checked21","clock96","earth213","email5","email19","facebook2","facebook29","facebook30","facebook55","favorite21","gear39","heart13","heart298","home4","home78","home168","instagram12","instagram16","instagram19","iphone26","keyboard53","magnifier13","magnifying-glass32","mail3","mail59","map-pointer2","marketing8","multiple25","opened4","payment7","phone21","phone72","phone325","pin56","play43","settings48","smartphone86","telephone5","telephone46","three115","twitter","twitter1","user168","users6","users81","verification5","web58","website17", "whatsapp","wifi74","world91","youtube30"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! MyTableViewCell
        print(indexPath.row)
        cell.labelObject.text = icons[indexPath.row]
        
        let imageName = UIImage(named: icons[indexPath.row])
        cell.imageObject.image = imageName
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
}
