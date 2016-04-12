//********************************************************************
//********************************************************************
//************************** Image Transform *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UFO: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //圓角
        UFO.layer.cornerRadius = 40
        UFO.clipsToBounds = true
        
        //圓形
        UFO.layer.cornerRadius = 100
        UFO.clipsToBounds = true
        
        //移動
        //UFO.transform = CGAffineTransformMakeTranslation(-200, -200)
        //旋轉
        //UFO.transform = CGAffineTransformMakeRotation(CGFloat(30.0 * M_PI / 180.0))
        //放大縮小
        UFO.transform = CGAffineTransformMakeScale(0.5, 0.5)
        
        //結合兩種
        let myTransform1 = CGAffineTransformMakeScale(0.5, 0.5)
        let myTransform2 = CGAffineTransformMakeRotation(CGFloat(30.0 * M_PI / 180.0))
        UFO.transform = CGAffineTransformConcat(myTransform1, myTransform2)
        
        /****************** UIView也可以設定圓角與變形 ****************
        let redView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        redView.backgroundColor = UIColor.redColor()
        view.addSubview(redView)
        
        redView.layer.cornerRadius = 50
        redView.clipsToBounds = true
        */
    }
}

