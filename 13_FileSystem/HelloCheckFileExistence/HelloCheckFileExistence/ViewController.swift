//********************************************************************
//********************************************************************
//*********************** Check File Existence ***********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*********** 註釋起來的程式碼，是先建立一些檔案********************
         let fileManager = NSFileManager()
         let directoryPath = NSTemporaryDirectory() + "/images"
         do{
         try fileManager.createDirectoryAtPath(directoryPath, withIntermediateDirectories: true, attributes: nil)
         }catch{
         print("Create Folder Fail")
         }
         
         let text = "Hello World"
         let filePath = NSTemporaryDirectory() + "Test.txt"
         do{
         try text.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding)
         }catch{
         print("not save correctly")
         }
         **************************************************************/
        
        let fileManager = NSFileManager()
        let directoryPath = NSTemporaryDirectory() + "/images"
        var isDir:ObjCBool = false
        
        let isExist = fileManager.fileExistsAtPath(directoryPath,
                                            isDirectory: &isDir)
        if isExist == true && isDir.boolValue == true{
            print("該檔案存在，是資料夾")
        }else if isExist == true && isDir.boolValue == false{
            print("該檔案存在，是檔案")
        }else if isExist == false{
            print("該檔案不存在")
        }
    }
}

