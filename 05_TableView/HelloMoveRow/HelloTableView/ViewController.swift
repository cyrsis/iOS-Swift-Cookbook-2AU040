//********************************************************************
//********************************************************************
//**************************** Move Row ******************************
//********************************************************************
//********************************************************************


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    //建立顯示的資料，存在NSMutableArray型別的陣列裡面
    let animalArray:NSMutableArray = ["cat","dog","elephant","rabbit"]
    
    @IBAction func editButtonPress(sender: UIBarButtonItem) {
        if self.myTableView.editing == true{
            sender.title = "Edit"
            self.myTableView.editing = false
        }else{
            sender.title = "Done"
            self.myTableView.editing = true
        }
    }
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
        cell.textLabel?.text = animalArray[indexPath.row] as? String
        return cell
    }
    
    func tableView(tableView: UITableView,
                moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        animalArray.exchangeObjectAtIndex(sourceIndexPath.row, withObjectAtIndex: destinationIndexPath.row)
    }
}