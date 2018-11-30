//
//  RotateViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/21.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {

    @IBOutlet weak var wheelImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func  spin() -> Void {
//        UIView.animate(withDuration: 1) {
//            self.wheelImageView.transform = CGAffineTransform.init(rotationAngle: CGFloat(M_PI))
//        }
        
        
       /*
        UIView.animate(withDuration: 1, animations: {
//            self.wheelImageView.transform = CGAffineTransform.init(rotationAngle: <#T##CGFloat#>)
            var transform = self.wheelImageView.transform
            transform = transform.rotated(by: CGFloat(M_PI))
            self.wheelImageView.transform = transform;
            
        }) { (finished) in
            self.spin()
        }
        */
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            var transform = self.wheelImageView.transform
            transform = transform.rotated(by: CGFloat(M_PI))
            self.wheelImageView.transform = transform;
        }) { (finished) in
            self.spin()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spin()
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
