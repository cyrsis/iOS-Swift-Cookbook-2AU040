//********************************************************************
//********************************************************************
//************************* Put it in Center  ************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        /************** 用程式碼設定設定置中 ****************
        //產生一個紅色的UIView
        let redView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        //調整背景為紅色
        redView.backgroundColor = UIColor.redColor()
        //加到畫面
        view.addSubview(redView)
        //置中的第一個方法
        redView.center = view.center
        //置中的第二個方法
        redView.translatesAutoresizingMaskIntoConstraints = false
        //x方向置中
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .CenterX, relatedBy: .Equal, toItem: view , attribute: .CenterX, multiplier: 1.0, constant: 0))
        //y方向置中
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .CenterY, relatedBy: .Equal, toItem: view , attribute: .CenterY, multiplier: 1.0, constant: 0))
        //固定寬度
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .Width, relatedBy: .Equal, toItem: nil , attribute: .NotAnAttribute, multiplier: 1, constant: 100))
        //固定高度
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .Height, relatedBy: .Equal, toItem: nil , attribute: .NotAnAttribute, multiplier: 1, constant: 100))
        */
    }
}

