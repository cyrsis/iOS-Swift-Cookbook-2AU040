//********************************************************************
//********************************************************************
//************************* Swipe to Delete **************************
//********************************************************************
//********************************************************************


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //建立顯示的資料，存在陣列裡面
    var animalArray = ["cat","dog","elephant","rabbit"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        //要顯示幾個Section，範例中只顯示一個section
        return 1
    }
    
    func tableView(tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        //Section裡面要顯示的列數，範例中顯示animalArray的數量。
        return animalArray.count
    }
    
    func tableView(tableView: UITableView,cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //每一列TableViewCell要顯示的資料
        //先產出Cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        //設定Cell的文字
        cell.textLabel?.text = animalArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        //如果滑動後選擇要刪除的話，刪除 animalArray 中的資料，並且讓table view去reloadData
        if editingStyle == .Delete{
            animalArray.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
}