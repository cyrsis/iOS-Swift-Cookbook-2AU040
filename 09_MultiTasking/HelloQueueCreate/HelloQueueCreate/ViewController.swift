//********************************************************************
//********************************************************************
//*************************** Create Queue ***************************
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
        let createdQueue1 = dispatch_queue_create("myQueue1", nil)
        let createdQueue2 = dispatch_queue_create("myQueue2", nil)
        dispatch_async(createdQueue1, task1)
        dispatch_async(createdQueue2, task2)
    }
}

