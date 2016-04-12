//********************************************************************
//********************************************************************
//************************** Dispatch After **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let delayTime = 2.0  // 以秒為單位設定您自己延遲的時間
        let delayTimeNanoSecond = dispatch_time(DISPATCH_TIME_NOW,
                                Int64(delayTime * Double(NSEC_PER_SEC)))
        let globalQueue =
            dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        
        dispatch_after(delayTimeNanoSecond,globalQueue,{
            //在此加入延遲之後要做的事情
            print("已延遲兩秒")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

