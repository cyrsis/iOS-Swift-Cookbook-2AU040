//********************************************************************
//********************************************************************
//*************************** Create Folder **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileManager = NSFileManager()
        let directoryPath = NSTemporaryDirectory() + "/images"
        
        do{
            try fileManager.createDirectoryAtPath(directoryPath, withIntermediateDirectories: true, attributes: nil)
        }catch{
            print("Create Folder Fail")
        }
        
        /***** URL的作法 *****
        let directoryURL = NSURL.fileURLWithPath(directoryPath, isDirectory: true)
        do{
            try fileManager.createDirectoryAtURL(directoryURL, withIntermediateDirectories: true, attributes: nil)
        }catch{
            print("Create Folder Fail")
        }
        */
    }
}

