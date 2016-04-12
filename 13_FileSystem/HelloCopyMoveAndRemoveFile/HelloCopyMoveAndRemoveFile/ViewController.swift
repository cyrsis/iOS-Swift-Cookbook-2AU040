//********************************************************************
//********************************************************************
//*********************** Copy, Move And Remove **********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*********** 註釋起來的程式碼，是先建立一個檔案********************
         let text = "Hello World"
         let filePath = NSTemporaryDirectory() + "Test.txt"
         do{
         try text.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding)
         }catch{
         print("not save correctly")
         }
         **************************************************************/
        
        let fileManager = NSFileManager()
        //origianlPath:原來的檔案路徑; copyToThisPath:準備複製到的路徑
        //moveToThisPath:準備移動到的路徑
        let originalPath = NSTemporaryDirectory() + "Test.txt"
        let copyToThisPath = NSHomeDirectory() + "/Documents/TestBackUp.txt"
        let moveToThisPath = NSHomeDirectory() + "/Documents/Test.txt"
        
        do{ //複製檔案
            try fileManager.copyItemAtPath(originalPath, toPath: copyToThisPath)
        }catch{
            print("can't copy file")
        }
        
        do{ //移動檔案
            try fileManager.moveItemAtPath(originalPath, toPath: moveToThisPath)
        }catch{
            print("can't move file")
        }
        
        do{ //刪除檔案
            try fileManager.removeItemAtPath(moveToThisPath)
        }catch{
            print("can't delete file")
        }
    }
}