//********************************************************************
//********************************************************************
//****************************** Popover *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    @IBAction func buttonPressed(sender: UIButton) {
        performSegueWithIdentifier("showPopover", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPopover"{
            let vc = segue.destinationViewController
            vc.preferredContentSize = CGSizeMake(200, 100) //設定浮動畫面大小
            //取得 popoverPresentationController
            let controller = vc.popoverPresentationController
            if controller != nil{
                //把ViewController設定為popover的delegate
                controller?.delegate = self
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None //設定style
    }
}

