//********************************************************************
//********************************************************************
//********** Table View With Thumbnail and AccessoryType *************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UITableViewDelegate,
                                            UITableViewDataSource {
    let animalArray = ["cat","dog","elephant","rabbit"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(tableView: UITableView,
                        numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(tableView: UITableView,
            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //每一列TableViewCell要顯示的資料
        //先產出Cell
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        //設定Cell的文字
        cell.textLabel?.text = animalArray[indexPath.row]
                
        //設定Cell的縮圖
        cell.imageView?.image =
                        UIImage(named: animalArray[indexPath.row])
        //設定儲存格右邊箭頭
        cell.accessoryType = .DisclosureIndicator
                                                    
        return cell
    }
}