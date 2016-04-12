//********************************************************************
//********************************************************************
//***************************** UILabel ******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "Hello! Swift!"                  //更改文字內容
        myLabel.textColor = UIColor.redColor()          //更改文字顏色
        myLabel.textAlignment = .Center                 //對齊方式
        myLabel.backgroundColor = UIColor.yellowColor() //底色
        myLabel.font = UIFont(name: "Arial", size: 24)  //字型
        
        //用程式碼生成UILabel
        let anotherLabel = UILabel(frame: CGRectMake(200, 200, 200, 50))
        anotherLabel.font = UIFont(name: "Arial", size: 24)
        anotherLabel.textColor = UIColor.magentaColor()
        anotherLabel.text = "Swift Rocks!"
        view.addSubview(anotherLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

