//
//  ViewController.swift
//  Book_Day_1
//
//  Created by ITEC on 02/10/2019.
//  Copyright © 2019 ITEC. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var datePickerOne: UIDatePicker!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var lblOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label with constraint
//        let label = UILabel()
//        label.backgroundColor = .red
//        label.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label)
//        NSLayoutConstraint.activate([
//            //stick the top of the label to the top of its superview:
//            label.topAnchor.constraint(equalTo: view.topAnchor),
//            //stick the left of the label to the left of its superview
//            //if the alphabet is left-to-right, or to the right of its
//            //superview if the alphabet is right-to-left:
//            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            //stick the label's bottom to the bottom of its superview:
//            label.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            //the label's width should be equal to 100 points:
//            label.widthAnchor.constraint(equalToConstant: 100)
//
////            label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ])

        //create label
        let frame = CGRect(x: 20, y: 40, width: 300, height: 21)
        let label = UILabel(frame: frame)
//        label.textColor = .blue
        label.text = "My Label"
        view.addSubview(label)
        
        //with the help of attributedString can change the specific text color/style etc..
//        let attributedString = NSMutableAttributedString(string: "The grass is green; the sky is blue.")
//    attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range:
//        NSRange(location: 13, length: 5))
//        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.blue, range:
//        NSRange(location: 31, length: 4))
//        label.attributedText = attributedString
//
//        lblOne.text = "Suppose you have a UILabel on your storyboard and you have created an IBOutlet for it in ViewController.swift / ViewController.m and named it labelOne."
//        lblOne.numberOfLines = 0
//        lblOne.sizeToFit()

        lblOne.isHighlighted = true
        lblOne.highlightedTextColor = UIColor.red
        
        
        //button code
        //button title can move left,right etc
        btnOne.contentHorizontalAlignment = .fill
        
        //datepicker
//        datePickerOne.datePickerMode = .countDownTimer
        datePickerOne.minuteInterval = 1
        
        // Local Notification 5 steps
        //Step 1: User permission
//        let center = UNUserNotificationCenter.current()
//
//        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
//
//        }
//
//        //Step 2: Create the notification content
//        let content = UNMutableNotificationContent()
//        content.title = "Hey I am notification!"
//        content.body = "Look at me."
//
//        //Step 3: Create the notification trigger
//        let date = Date().addingTimeInterval(10)
//
//        let dateComponent = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second], from: date)
//
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: true)
//       
//
//        //Step 4: Create the notification request
//        let uuidString = UUID().uuidString
//        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
//
//        //Step 5: Register with notification center
//        center.add(request) { (error) in
//           //code here
//            print("error is =  \(String(describing: error))")
//        }
//    

    }
    
    @IBAction func btnOne(_ sender: UIButton) {
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "TestNotification"), object: nil)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("10.second.message"), object: nil)
    }
    
}

