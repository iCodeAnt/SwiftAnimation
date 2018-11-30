//
//  KeyframeViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/30.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class KeyframeViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        /*
                UIView.animate(withDuration: 0.5, animations: {
                   self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
                    }, completion: { _ in
                        UIView.animate(withDuration: 0.5, animations: {
                            self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
                            }, completion: { _ in
                                UIView.animate(withDuration: 0.5, animations: {
                                    self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
                                    }, completion: { _ in
                                        UIView.animate(withDuration: 0.5, animations: {
                                            self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
                                        }, completion: nil)
        
                                })
                        })
                })
        */
        
        // Same as above using keyframe animation
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: {
                self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
            })
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
