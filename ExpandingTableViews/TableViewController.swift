//
//  TableViewController.swift
//  ExpandingTableViews
//
//  Created by Michael Sacks on 12/12/15.
//  Copyright © 2015 MichaelSacks. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    var currentListData: [String] = []
    var selectedList: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return DataController.sharedInstance.lists.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == selectedList {
            return currentListData.count + 1
        } else {
            return 1
        }
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        if indexPath.row == 0 {
            cell.textLabel?.text = DataController.sharedInstance.lists[indexPath.section]
            cell.backgroundColor = UIColor.yellowColor()
        } else {
            cell.textLabel?.text = currentListData[indexPath.row - 1]
            cell.backgroundColor = UIColor.whiteColor()
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        selectedList = indexPath.section
        currentListData = DataController.sharedInstance.listDetails[selectedList]
        
        if indexPath.row == 0 {
            tableView.reloadData()
            tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition: .Middle, animated: true)

        }
        
    }

}
