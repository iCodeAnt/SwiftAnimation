//
//  EasingViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/21.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var purpleSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var orangeSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x;
        }, completion: nil)
        
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.purpleSquare.center.x = self.view.bounds.width - self.purpleSquare.center.x;
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x;
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.orangeSquare.center.x = self.view.bounds.width - self.orangeSquare.center.x;
        }, completion: nil)
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
