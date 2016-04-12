//********************************************************************
//********************************************************************
//**************************** Save Image ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let filePath = NSTemporaryDirectory() + "CatPic.data"//存檔路徑
        if let imageToSave = UIImage(named: "MyCat.jpg"){
            if let dataToSave =
                        UIImageJPEGRepresentation(imageToSave, 1.0){
                //********** 寫入檔案 **********
                dataToSave.writeToFile(filePath, atomically: true)
            }
        }
        //********** 讀出檔案 **********
        if let catImage = UIImage(contentsOfFile: filePath){
            myImageView.image = catImage
        }
    }
}

