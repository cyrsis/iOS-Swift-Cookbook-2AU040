//********************************************************************
//********************************************************************
//**************************** Save String ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let text = "Hello World"        //要存的文字
        let filePath = NSTemporaryDirectory() + "Test.txt" //存檔路徑
        
        //********** 寫入檔案 **********
        do{
            try text.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding)
        }catch{
            print("not save correctly")
        }
        
        //********** 讀出檔案 **********
        do{
            let loadedString = try NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding) as String
            print(loadedString)
        }catch{
            print("not load correctly")
        }
    }


}

