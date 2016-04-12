//********************************************************************
//********************************************************************
//*************************** File Location **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //********** 找出 Documents 資料夾 **********
        //找出 Documents 資料夾的第一種方法
        let path = NSHomeDirectory() + "/Documents"
        print("檔案路徑:\(path)")
        let documentsURL = NSURL.fileURLWithPath(path)
        print("檔案URL:\(documentsURL)")
        
        //找出 Documents 資料夾的第二種方法
        let fileManager = NSFileManager()
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask) as [NSURL]
        if urls.count > 0 {
            let documentsURL = urls[0]
            print("第二種方法找到的URL:\(documentsURL)")
        }
        
        //********** 找出 Caches 資料夾 **********
        //找出 Caches 資料夾的第一種方法
        let cachesPath = NSHomeDirectory() + "/Library/Caches"
        print("暫存Caches路徑:\(cachesPath)")
        let cachesURL = NSURL.fileURLWithPath(cachesPath)
        print("暫存Caches的URL:\(cachesURL)")
        
        //找出 Caches 資料夾的第二種方法
        //let fileManager = NSFileManager() 上面寫過，所以註釋
        let cachesUrls = fileManager.URLsForDirectory(.CachesDirectory,
                                    inDomains: .UserDomainMask) as [NSURL]
        if cachesUrls.count > 0 {
            let cachesURL = cachesUrls[0]
            print("第二種方法找到暫存Caches的URL:\(cachesURL)")
        }
        
        //********** 找出 Tmp 資料夾 **********
        //找出 Tmp 資料夾的第一種方法
        let tempPath = NSHomeDirectory() + "/tmp"
        print("暫存Tmp資料夾路徑:\(tempPath)")
        //找出 Tmp 資料夾的第二種方法
        let tempDirectory = NSTemporaryDirectory()
        print("第二種方法找到的暫存Tmp資料夾路徑:\(tempDirectory)")
    }
}

