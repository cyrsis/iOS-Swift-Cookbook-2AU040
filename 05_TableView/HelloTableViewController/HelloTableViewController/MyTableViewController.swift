//********************************************************************
//********************************************************************
//********************** Table View Controller ***********************
//********************************************************************
//********************************************************************

import UIKit

class MyTableViewController: UITableViewController {
    let fruitArray = ["apple","banana","mango","watermelone"] //您要顯示的資料
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1                //TableView 要顯示幾個section
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitArray.count //TableView每個section要顯示幾列資料
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = fruitArray[indexPath.row] //設定每列顯示的文字
        return cell
    }
    
    override func viewDidLoad() {
        //如果tableView被狀態列蓋到的話，用下面的程式碼，把tableview整個往下移20pt
        self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
    }
}
