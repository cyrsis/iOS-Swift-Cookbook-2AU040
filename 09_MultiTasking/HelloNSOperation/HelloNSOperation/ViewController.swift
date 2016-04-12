//********************************************************************
//********************************************************************
//**************************** NSOperation ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBAction func downloadPic(sender: UIButton) {
        let operationQ = NSOperationQueue() //產生NSOperationQueue
        let task = {
            //下載圖片
            let downloadedImage = UIImage(
                data:NSData(contentsOfURL: NSURL(string:
                        "http://appsgaga.com/IOSBOOK/GCDDemo/1.jpg")!)!)
            //找到主佇列、更新圖片
            NSOperationQueue.mainQueue().addOperationWithBlock({
                self.myImageView.image = downloadedImage
            })
        }
        let operation = NSBlockOperation(block: task)
        operationQ.addOperation(operation)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //使用 NSOperation
        let operationQ = NSOperationQueue() //產生NSOperationQueue
        let operation1 = MyOperation(withTaskNumber: 1)
        let operation2 = MyOperation(withTaskNumber: 2)
        operationQ.addOperation(operation1)
        operationQ.addOperation(operation2)
        
        /***** 其他的程式碼 *****
        // 以 NSBlockOperation 加入
        let task1 = {
            for var i = 1 ; i <= 5 ; i++ {
                print("Task1: \(i)")
            }
        }
        let task2 = {
            for var i = 1 ; i <= 5 ; i++ {
                print("Task2: \(i)")
            }
        }
        let task3 = {
            for var i = 1 ; i <= 5 ; i++ {
                print("Task3: \(i)")
            }
        }
        let task4 = {
            for var i = 1 ; i <= 5 ; i++ {
                print("Task4: \(i)")
            }
        }
        
        let operation1 = NSBlockOperation(block: task1)
        let operation2 = NSBlockOperation(block: task2)
        let operation3 = NSBlockOperation(block: task3)
        let operation4 = NSBlockOperation(block: task4)
        
        operation1.completionBlock = { print("operation1 end")}
        operation2.completionBlock = { print("operation2 end")}
        operation3.completionBlock = { print("operation3 end")}
        operation4.completionBlock = { print("operation4 end")}
        
        operation4.addDependency(operation3)
        operation3.addDependency(operation2)
        operation2.addDependency(operation1)
        
        operationQ.addOperation(operation1)
        operationQ.addOperation(operation2)
        operationQ.addOperation(operation3)
        operationQ.addOperation(operation4)
        
        
        //直接加入Block
        operationQ.addOperationWithBlock(task1)
        operationQ.addOperationWithBlock(task2)
        */
    }
}

class MyOperation:NSOperation{
    var taskNumber:Int!
    init(withTaskNumber number:Int) {
        self.taskNumber = number
    }
    override func start() {
        for var i = 1 ; i <= 5 ; i++ {
            print("Task\(taskNumber): \(i)")
        }
    }
}

