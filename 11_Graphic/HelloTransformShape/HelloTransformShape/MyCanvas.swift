//********************************************************************
//********************************************************************
//************************* Transform Shape **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        let path = CGPathCreateMutable()            //產生路徑
        let rectArea = CGRectMake(50, 50, 100, 100) //設定方形範圍
        
        //移動圖形位置
        var transform = CGAffineTransformMakeTranslation(100, 200)
        
        //縮放圖形
        //var transform = CGAffineTransformMakeScale(2.0, 2.0)
        
        //旋轉圖形
        //let radian = CGFloat((10.0 * M_PI)/180.0)   //設定旋轉角度
        //var transform = CGAffineTransformMakeRotation(radian)
        CGPathAddRect(path, &transform, rectArea)
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境

        UIColor.magentaColor().setFill()            //設定顏色
        CGContextDrawPath(context, .Fill)   //填色
    }
    
}
