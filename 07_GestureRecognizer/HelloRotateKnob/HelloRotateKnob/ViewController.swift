//********************************************************************
//********************************************************************
//******************************* Knob *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knob: UIImageView!
    var nowAngle:CGFloat = 0
    
    func distanceBetweenPoints(point1:CGPoint,point2:CGPoint) -> CGFloat{
        let dx = point1.x - point2.x
        let dy = point1.y - point2.y
        return sqrt(dx * dx + dy * dy)
    }
    
    func angleBetweenLines(lineABegin:CGPoint, lineAEnd:CGPoint, lineBBegin:CGPoint,lineBEnd:CGPoint) -> CGFloat{
        let a = lineAEnd.x - lineABegin.x
        let b = lineAEnd.y - lineABegin.y
        let atanA = atan2(a,b) //第一點形成的角度
        
        let c = lineBEnd.x - lineBBegin.x
        let d = lineBEnd.y - lineBBegin.y
        let atanB = atan2(c,d) //第二點形成的角度
        
        return (atanA - atanB) * 180 / CGFloat(M_PI)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let nowPoint = touches.first?.locationInView(self.view)
        let previousPoint = touches.first?.previousLocationInView(self.view)
        let midPoint = knob.center
        let distance = distanceBetweenPoints(midPoint, point2: nowPoint!)
        if distance < knob.bounds.size.width/2{
            let angle = angleBetweenLines(midPoint, lineAEnd: previousPoint!, lineBBegin: midPoint, lineBEnd: nowPoint!)
            nowAngle += angle
            knob.transform = CGAffineTransformMakeRotation(nowAngle * CGFloat(M_PI) / 180)
        }
    }
}