//********************************************************************
//********************************************************************
//************************** NSUserDefaullts *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBAction func load(sender: UIButton) {
        //找到程式中的 userDefaults，使用各種方法讀取資料
        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let name = userDefaults.objectForKey("name"){
            print("name:\(name as! String)")
        }
        if let numberArray = userDefaults.objectForKey("numberArray"){
            print("numberArray:\(numberArray as! NSArray)")
        }
        if let fruitDict = userDefaults.objectForKey("fruitDict"){
            print("fruitDict:\(fruitDict as! NSDictionary)")
        }
        if let imageData = userDefaults.objectForKey("imageData"){
            (self.view.subviews[0] as! UIImageView).image = UIImage(data: imageData as! NSData)
        }
        print("isGameFun:\(userDefaults.boolForKey("isGameFun"))")
        print("HealthPoint:\(userDefaults.doubleForKey("HealthPoint"))")
        print("Attck:\(userDefaults.floatForKey("Attack"))")
        print("Highscore:\(userDefaults.integerForKey("Highscore"))")
        if let link = userDefaults.URLForKey("Link"){
            print("Link:\(link)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //如果要存圖片，要把圖片轉成 NSData，才能儲存。
        let catImage = UIImage(named: "MyCat")
        let imageData = UIImageJPEGRepresentation(catImage!, 100)
        
        //找到程式中的 userDefaults，使用各種方法儲存資料
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject("Wei Wei", forKey: "name")
        userDefaults.setObject([1,2,3,4], forKey: "numberArray")
        userDefaults.setObject(["red":"apple","yellow":"banana"], forKey: "fruitDict")
        userDefaults.setObject(imageData, forKey: "imageData")
        userDefaults.setBool(true, forKey: "isGameFun")
        userDefaults.setDouble(100.0, forKey: "HealthPoint")
        userDefaults.setFloat(80.0, forKey: "Attack")
        userDefaults.setInteger(90, forKey: "Highscore")
        userDefaults.setURL(NSURL(string: "https://www.appsgaga.com"), forKey: "Link")
        
        //最後要同步，才完成儲存
        userDefaults.synchronize()
    }
}

