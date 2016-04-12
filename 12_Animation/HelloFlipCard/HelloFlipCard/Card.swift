//********************************************************************
//********************************************************************
//*************************** Flipping Card **************************
//********************************************************************
//********************************************************************

import UIKit

class Card: UIView {
    
    var isBack = true                  //記錄卡片正面還是反面，一開始是反面
    var front = UIImageView(image: UIImage(named: "Front")) //讀入圖片
    var back  = UIImageView(image: UIImage(named: "Back"))  //讀入圖片
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addSubview(back) //生成這個UIView時，把背面的圖加入到UIView上
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if isBack == true{
            //翻牌的動畫
            isBack = false
            UIView.transitionFromView(back, toView: front, duration: 1, options: .TransitionFlipFromRight, completion: nil)
        }else{
            isBack = true
            UIView.transitionFromView(front, toView: back, duration: 1, options: .TransitionFlipFromLeft, completion: nil)
        }
    }
}
