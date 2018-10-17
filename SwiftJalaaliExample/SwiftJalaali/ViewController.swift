//
//  ViewController.swift
//  SwiftJalaali
//
//  Created by parham khamsepour on 10/17/18.
//  Copyright © 2018 parham khamsepour. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var jalaaliDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func selectButtonIsPressed(_ sender: Any) {
        datePicker.isHidden = false
    }
    @IBAction func done(_ sender: Any) {
        datePicker.isHidden = true
        let date = datePicker.date
        let calender = Calendar.current
        let jalaali = toJalaali(gy: calender.component(.year, from: date), calender.component(.month, from: date), calender.component(.day, from: date))
        let jalaaliYear = jalaali.year
        let jalaaliDay = jalaali.day
        var jalaaliMonth = ""
        switch jalaali.month {
        case 1:
            jalaaliMonth = "فرودین"
            break
        case 2:
            jalaaliMonth = "اردیبهشت"
            break
        case 3:
            jalaaliMonth = "خرداد"
            break
        case 4:
            jalaaliMonth = "تیر"
            break
        case 5:
            jalaaliMonth = "مرداد"
            break
        case 6:
            jalaaliMonth = "شهریور"
            break
        case 7:
            jalaaliMonth = "مهر"
            break
        case 8:
            jalaaliMonth = "آبان"
            break
        case 9:
            jalaaliMonth = "آذر"
            break
        case 10:
            jalaaliMonth = "دی"
            break
        case 11:
            jalaaliMonth = "بهمن"
            break
        case 12:
            jalaaliMonth = "اسفند"
            break
        default:
            jalaaliMonth = "\(jalaali.month)"
        }
        jalaaliDate.text = "\(jalaaliDay)ـم \(jalaaliMonth) ماهِ سالِ \(jalaaliYear) شمسی"
    }
    
}
