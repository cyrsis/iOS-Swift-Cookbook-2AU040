//********************************************************************
//********************************************************************
//*************************** Global Queue ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
        let globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_async(globalQueue, task1)
        dispatch_async(globalQueue, task2)
    }

}

