//********************************************************************
//********************************************************************
//***************** Download Pics Asynchronously  ********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController{
    let imageArray = [
    "http://appsgaga.com/IOSBOOK/GCDDemo/1.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/2.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/3.jpg",
    "http://appsgaga.com/IOSBOOK/GCDDemo/4.jpg"]
    
    @IBOutlet weak var myImageView1: UIImageView!
    @IBOutlet weak var myImageView2: UIImageView!
    @IBOutlet weak var myImageView3: UIImageView!
    @IBOutlet weak var myImageView4: UIImageView!
    
    func downloadPics(url:String) -> UIImage! {
        let data = NSData(contentsOfURL: NSURL(string: url)!)
        return UIImage(data: data!)
    }
    
    @IBAction func startDownload(sender: UIBarButtonItem) {
        
        
        let globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_async(globalQueue,{
            let downloadedImage1 = self.downloadPics(self.imageArray[0])
            let downloadedImage2 = self.downloadPics(self.imageArray[1])
            let downloadedImage3 = self.downloadPics(self.imageArray[2])
            let downloadedImage4 = self.downloadPics(self.imageArray[3])
            dispatch_async(dispatch_get_main_queue(), {
                self.myImageView1.image = downloadedImage1
                self.myImageView2.image = downloadedImage2
                self.myImageView3.image = downloadedImage3
                self.myImageView4.image = downloadedImage4
            })
        })
        
        /*
        // ----- 使用此方法下載整個畫面會卡住 -----
        let downloadedImage1 = self.downloadPics(self.imageArray[0])
        let downloadedImage2 = self.downloadPics(self.imageArray[1])
        let downloadedImage3 = self.downloadPics(self.imageArray[2])
        let downloadedImage4 = self.downloadPics(self.imageArray[3])
        self.myImageView1.image = downloadedImage1
        self.myImageView2.image = downloadedImage2
        self.myImageView3.image = downloadedImage3
        self.myImageView4.image = downloadedImage4
        
        //----- 使用循序佇列下載圖片 -----
        let createdQueue1 = dispatch_queue_create("myQueue1", nil)
        let createdQueue2 = dispatch_queue_create("myQueue2", nil)
        let createdQueue3 = dispatch_queue_create("myQueue3", nil)
        let createdQueue4 = dispatch_queue_create("myQueue4", nil)
        dispatch_async(createdQueue1,{
            let downloadedImage1 = self.downloadPics(self.imageArray[0])
            dispatch_async(dispatch_get_main_queue(), {
                self.myImageView1.image = downloadedImage1
            })
        })
        dispatch_async(createdQueue2,{
            let downloadedImage2 = self.downloadPics(self.imageArray[1])
            dispatch_async(dispatch_get_main_queue(), {
                self.myImageView2.image = downloadedImage2
            })
        })
        dispatch_async(createdQueue3,{
            let downloadedImage3 = self.downloadPics(self.imageArray[2])
            dispatch_async(dispatch_get_main_queue(), {
                    self.myImageView3.image = downloadedImage3
            })
        })
        dispatch_async(createdQueue4,{
            let downloadedImage4 = self.downloadPics(self.imageArray[3])
            dispatch_async(dispatch_get_main_queue(), {
                    self.myImageView4.image = downloadedImage4
            })
        })
        */
    }

}

