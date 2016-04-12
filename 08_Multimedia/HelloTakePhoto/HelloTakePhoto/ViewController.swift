//********************************************************************
//********************************************************************
//*************************** Take Photo *****************************
//********************************************************************
//********************************************************************

import UIKit

//先加入UIImagePickerControllerDelegate,UINavigationControllerDelegate
class ViewController: UIViewController,UIImagePickerControllerDelegate,
                                    UINavigationControllerDelegate {
    @IBAction func takeAPicture(sender: UIButton) {
        //1.檢查是否有相機可以使用
        if UIImagePickerController.isSourceTypeAvailable(.Camera){
            //2.生成負責照相的 UIImagePickerController
            let imagePicker = UIImagePickerController()
            //3.設定來源為相機
            imagePicker.sourceType = .Camera
            //4.把ViewController設定給UIImagePickerController的delegate
            imagePicker.delegate = self
            //5.推出UIImagePickerController來照相
            presentViewController(imagePicker,
                                        animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        //6.利用UIImagePickerControllerOriginalImage的key
            //從info拿到照下的圖片，也可以用UIImageView秀出這個 UIImage
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        //7.把照片存檔到相簿
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        //8.把照相的畫面收回
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        //9.照相過程中如果按了cancel，則把照相畫面收回
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}

