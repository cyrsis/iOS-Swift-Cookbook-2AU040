//********************************************************************
//********************************************************************
//*********************** Contents of File ***************************
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
        
        let originalArray = ["Apple","Banana","Mango"]
        let arrayToSave = NSArray(array:originalArray)
        let arrayFilePath = NSTemporaryDirectory() + "Array.data"
        arrayToSave.writeToFile(arrayFilePath, atomically: true)
        **************************************************************/
        
        let fileManager = NSFileManager()
        
        do{
            let fileList = try fileManager.contentsOfDirectoryAtPath(NSTemporaryDirectory())
            for file in fileList{
                print(file)
            }
        }catch{
            print("Can't get content at path")
        }
    }
}

