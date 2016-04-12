//********************************************************************
//********************************************************************
//*********************** UITableViewRowAction ***********************
//********************************************************************
//********************************************************************


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    //建立顯示的資料，存在陣列裡面
    let animalArray = ["cat","dog","elephant","rabbit"]
    
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
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        //***** 產生第一顆按鈕 *****
        //設定按鈕的風格(style)、要顯示的文字(title)，以及按下去執行的程式碼。
        //按下去的程式碼寫在一個Closure裡面。此範例中，第一個按鈕下去只是印出share。
        //印出後用tableView.editing = false，就會讓表格視圖回復成一般狀態。
        let shareAction = UITableViewRowAction(style: .Normal, title: "Share", handler:{
            (action,indexPath) in
            print("share")
            tableView.editing = false
        })
        //調整第一顆按鈕的背景顏色。
        shareAction.backgroundColor = UIColor.blueColor()
        
        //***** 產生第二顆按鈕 *****
        let doneAction = UITableViewRowAction(style: .Normal, title: "Done", handler:{
            (action,indexPath) in
            print("Done")
            tableView.editing = false
        })
        doneAction.backgroundColor = UIColor.grayColor()
        
        //***** 產生第三顆按鈕 *****
        let deleteAction = UITableViewRowAction(style: .Normal, title: "Delete", handler:{
            (action,indexPath) in
            print("Delete")
            tableView.editing = false
        })
        deleteAction.backgroundColor = UIColor.redColor()
        return [deleteAction,shareAction,doneAction]       //回傳三顆按鈕
    }
}