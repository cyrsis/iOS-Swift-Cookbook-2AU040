//********************************************************************
//********************************************************************
//**************************** Date Picker ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBAction func myDatePickerAction(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd EE HH:mm"
        print(dateFormatter.stringFromDate(myDatePicker.date))
    }
    
    /*用程式碼來生成UIDatePicker
    override func viewDidAppear(animated: Bool) {
        //生成UIDatePicker
        let codeDatePicker = UIDatePicker(frame: CGRect(x: 0, y: view.frame.height-216, width: view.frame.width, height: 216))
        //設定選取模式
        codeDatePicker.datePickerMode = .DateAndTime
        //設定時間間隔
        codeDatePicker.minuteInterval = 30
        //設定使用者選取時間後會執行的方法
        codeDatePicker.addTarget(self, action: #selector(ViewController.codeDatePickerAction(_:)), forControlEvents: .ValueChanged)
        //將DatePicker加入到畫面中
        view.addSubview(codeDatePicker)
    }
    
    func codeDatePickerAction(sender: UIDatePicker) {
        //用程式碼產生的datePicker會執行的方法
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy MMMM dd EEEE HH:mm"
        print(dateFormatter.stringFromDate(myDatePicker.date))
    }
    */
}

