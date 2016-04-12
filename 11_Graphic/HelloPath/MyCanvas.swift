//********************************************************************
//********************************************************************
//************************** Draw With Path **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        //***** 繪製線段 *****
        let path = CGPathCreateMutable()            //產生路徑
        CGPathMoveToPoint(path, nil, 50, 50)        //移到線段端點
        CGPathAddLineToPoint(path, nil, 250, 250)   //加上線段
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.redColor().setStroke()              //設定顏色
        CGContextSetLineWidth(context, 10)          //設定線段粗細
        CGContextStrokePath(context)                //畫出線段
        //CGContextDrawPath(context, .Stroke)       //畫線段的另外一個方法

        
        /***** 繪製圖形 *****
        let path = CGPathCreateMutable()            //產生路徑
        CGPathMoveToPoint(path, nil, 0, 110)        //移到線段端點
        CGPathAddLineToPoint(path, nil, 100, 90)    //開始增加線段
        CGPathAddLineToPoint(path, nil, 150, 0)
        CGPathAddLineToPoint(path, nil, 200, 90)
        CGPathAddLineToPoint(path, nil, 300, 110)
        CGPathAddLineToPoint(path, nil, 230, 185)
        CGPathAddLineToPoint(path, nil, 243, 286)
        CGPathAddLineToPoint(path, nil, 150, 243)
        CGPathAddLineToPoint(path, nil, 57, 286)
        CGPathAddLineToPoint(path, nil, 70, 185)
        CGPathCloseSubpath(path)                    //關閉路徑
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.yellowColor().setFill()             //設定顏色
        CGContextFillPath(context)                  //填色
        //CGContextDrawPath(context, .Fill)         //填色的另外一個方法

        
        ***** 繪製曲線 *****
        let path = CGPathCreateMutable()            //產生路徑
        CGPathMoveToPoint(path, nil, 50, 150)       //移到線段端點
        CGPathAddCurveToPoint(path, nil, 100, 0, 200, 300, 250, 150) //加入曲線
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.lightGrayColor().set()              //設定顏色
        CGContextSetLineWidth(context, 10)          //設定線段粗細
        CGContextDrawPath(context, .Stroke)         //畫出線段

        
        ***** 繪製弧線 *****
        let path = CGPathCreateMutable()            //產生路徑
        CGPathMoveToPoint(path, nil, 250, 150)      //移到線段端點
        CGPathAddArc(path, nil, 150, 150, 100, 0, CGFloat(45.0 * M_PI/180.0), false) // 加入弧線
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.orangeColor().set()                 //設定顏色
        CGContextSetLineWidth(context, 10)          //設定線段粗細
        CGContextDrawPath(context, .Stroke)         //畫出線段

        
        ***** 繪製方形 *****
        let path = CGPathCreateMutable()            //產生路徑
        let rectArea = CGRectMake(50, 50, 200, 100) //設定方形範圍
        CGPathAddRect(path, nil, rectArea)          //加入方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.magentaColor().setFill()            //設定顏色
        CGContextFillPath(context)                  //填色

        
        ***** 繪製曲線 *****
        let path = CGPathCreateMutable()            //產生路徑
        let ellipseArea = CGRectMake(50, 50, 100, 100) //設定限制圓形的方形範圍
        CGPathAddEllipseInRect(path, nil, ellipseArea) //加入限制圓形的方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.greenColor().setFill()              //設定顏色
        CGContextFillPath(context)                  //填色
        */
    }
    
}
