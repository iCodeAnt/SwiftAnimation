//
//  LoginViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/23.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    
    //Custom
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.white)
    var loginPosition = CGPoint.zero;
    let warningMessage = UIImageView(image: UIImage(named: "Warning"))
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.bubble1.transform = CGAffineTransform.init(scaleX: 0, y: 0);
        self.bubble2.transform = CGAffineTransform.init(scaleX: 0, y: 0);
        self.bubble3.transform = CGAffineTransform.init(scaleX: 0, y: 0);
        self.bubble4.transform = CGAffineTransform.init(scaleX: 0, y: 0);
        self.bubble5.transform = CGAffineTransform.init(scaleX: 0, y: 0);
        
        
        self.logo.center.x -= self.view.bounds.width;
        self.dot.center.x -= self.view.bounds.width/2;

        
        let userPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: self.userName.frame.height));
        
        self.userName.leftView = userPaddingView;
        self.userName.leftViewMode = .always;
        
        
        let passwordPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: self.password.frame.height));
        
        self.password.leftView = passwordPaddingView;
        self.password.leftViewMode = .always;
        
        
        let userImageView = UIImageView(image: UIImage(named:"User"))
        self.userName.addSubview(userImageView)
        userImageView.center.y = self.userName.frame.height/2;
        userImageView.frame.origin.x = 13;
        
        
        let passwordImageView = UIImageView(image: UIImage(named:"Key"))
        self.password.addSubview(passwordImageView)
        passwordImageView.center.y = self.password.frame.height/2;
        passwordImageView.frame.origin.x = 9;
        
        
        self.userName.center.x -= self.view.bounds.width;
        self.password.center.x -= self.view.bounds.width;
        self.loginPosition = self.login.center
        self.login.center.x -= self.view.bounds.width;

        
        self.view.addSubview(self.warningMessage)
        self.warningMessage.isHidden = true
        self.warningMessage.center = self.loginPosition
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /*
        UIView.animate(withDuration: 0.3, animations: {
            self.bubble1.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble2.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble3.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble4.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble5.transform = CGAffineTransform.init(scaleX: 1, y: 1);

        }) { (finish) in
            
        }
        */
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            self.bubble1.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble2.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble3.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble4.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble5.transform = CGAffineTransform.init(scaleX: 1, y: 1);
        }) { (finish) in
            
        }
        
        
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
//            self.bubble1.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble2.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble3.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble4.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble5.transform = CGAffineTransform.init(scaleX: 1, y: 1);
        }) { (finish) in
            
        }
        
        UIView.animate(withDuration: 0.3, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            //            self.bubble1.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble2.transform = CGAffineTransform.init(scaleX: 1, y: 1);
//            self.bubble3.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            //            self.bubble4.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            //            self.bubble5.transform = CGAffineTransform.init(scaleX: 1, y: 1);
            self.bubble5.transform = CGAffineTransform.init(scaleX: 1, y: 1);

        }) { (finish) in
            
        }
        
        
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: .allowUserInteraction, animations: {
            self.logo.center.x += self.view.bounds.width;
//            self.dot.center.x += self.view.bounds.width;

        }, completion: nil);
        
        UIView.animate(withDuration: 3, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 1, options: .allowUserInteraction, animations: {
//            self.logo.center.x += self.view.bounds.width;
            self.dot.center.x += self.view.bounds.width/2;
            
        }, completion: nil);
        
        
        UIView.animate(withDuration: 0.4, delay: 0.5, options: .curveEaseOut, animations: {
            self.userName.center.x += self.view.bounds.width;
//            self.password.center.x += self.view.bounds.width;
        }, completion: nil);
        
        
        UIView.animate(withDuration: 0.4, delay: 0.6, options: .curveEaseOut, animations: {
//            self.userName.center.x += self.view.bounds.width;
            self.password.center.x += self.view.bounds.width;
        }, completion: nil);
        
        
        UIView.animate(withDuration: 0.4, delay: 0.7, options: .curveEaseOut, animations: {
            //            self.userName.center.x += self.view.bounds.width;
            self.login.center.x += self.view.bounds.width;
        }, completion: nil);

        
//        self.view.layer.cornerRadius
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        self.login.addSubview(self.spinner)
        self.spinner.center.y = self.login.frame.height/2;
        self.spinner.center.x = 30;
        self.spinner.startAnimating()
//        self.warningMessage.isHidden = true
        
        UIView.transition(with: self.warningMessage, duration: 0.3, options: .transitionFlipFromBottom, animations: {
            self.warningMessage.isHidden = true
        }, completion: nil)

        UIView.animate(withDuration: 0.3) {
            self.login.center = self.loginPosition
        }
        self.login.center.x -= 30
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: .allowUserInteraction, animations: {
            self.login.center.x += 30

        }, completion:{ _ in
            UIView.animate(withDuration: 0.3, animations: {
                self.login.center.y += 80
                self.spinner.removeFromSuperview()
            }, completion:{ _ in
                
                let opts: UIViewAnimationOptions = [UIViewAnimationOptions.transitionFlipFromTop , UIViewAnimationOptions.curveEaseOut]
                UIView.transition(with: self.warningMessage, duration: 0.3, options: opts, animations: {
                    self.warningMessage.isHidden = false
                }, completion: { _ in
                    
                })
            })
        })
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
