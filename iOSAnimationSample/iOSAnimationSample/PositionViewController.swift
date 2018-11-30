//
//  PositionViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/21.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var blueView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        
        UIView.animate(withDuration: 1) {
            self.blueView.center.x = self.view.bounds.width - self.blueView.center.x;
            
            
        };
        
        
        UIView.animate(withDuration: 1, delay: 0.5, options: UIViewAnimationOptions.allowUserInteraction, animations: {
            self.purpleView.center.y = self.view.bounds.height - self.blueView.center.y;
        }, completion: nil);
        
        UIView.animate(withDuration: 1, delay: 1, options: UIViewAnimationOptions.allowUserInteraction, animations: {
            self.greenView.center.x = self.view.bounds.width - self.greenView.center.x;
            self.greenView.center.y = self.view.bounds.height - self.greenView.center.y;
        }, completion: nil);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
