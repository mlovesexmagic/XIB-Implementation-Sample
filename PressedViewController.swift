//
//  PressedViewController.swift
//  testing_SubView
//
//  Created by Zhipeng Mei on 3/8/16.
//  Copyright © 2016 Zhipeng Mei. All rights reserved.
//

import UIKit

class PressedViewController: UIViewController {

    
    var myPopupView:popupView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonPressed(sender: AnyObject) {
         self.myPopupView = popupView(frame: CGRect(x: 10, y: 200, width: 300, height: 200))
        
         self.myPopupView.dismissPressed.addTarget(self, action: "myDismissPressed:", forControlEvents: UIControlEvents.TouchUpInside)
        
         self.view.addSubview(myPopupView)
        
    }
    
    func myDismissPressed(sender:UIButton) {
        self.myPopupView.removeFromSuperview()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
