//********************************************************************
//********************************************************************
//************************ UIView Animation **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UFO: UIImageView!
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(1.0, delay: 0,
            options: [.Repeat, .Autoreverse, .CurveEaseIn], //結合三種選項
            animations: {
            //把要做的動畫放在這個 Closure 裡面
            self.UFO.frame.origin.x = self.UFO.frame.origin.x + 100
            let rotationAngle = CGFloat(30.0 * M_PI / 180.0)
            self.UFO.transform = CGAffineTransformMakeRotation(rotationAngle)
            }, completion:{
                finish -> () in
                print("animation ended")
            }
        )
        
        /*  彈跳動畫
        
        UIView.animateWithDuration(1.0, delay: 0,
            usingSpringWithDamping: 0.3,
            initialSpringVelocity: 0.5,
            options: [.Repeat, .Autoreverse],
            animations:{
            //同時設定x跟y座標
            let xFinal = self.UFO.frame.origin.x + 100
            let yFinal = self.UFO.frame.origin.y + 100
            let finalPoint = CGPointMake(xFinal, yFinal)
            self.UFO.frame.origin = finalPoint
            
            //同時放大又旋轉
            let scale = CGAffineTransformMakeScale(2.0, 2.0)
            let rotationAngle = CGFloat(30.0 * M_PI / 180.0)
            let rotation = CGAffineTransformMakeRotation(rotationAngle)
            self.UFO.transform = CGAffineTransformConcat(scale, rotation)
            },
            completion: nil
        )
        */
    }
}

