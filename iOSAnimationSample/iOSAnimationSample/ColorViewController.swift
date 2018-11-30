//
//  ColorViewController.swift
//  iOSAnimationSample
//
//  Created by think on 2018/11/21.
//  Copyright © 2018 tita. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var blueSquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 6) {
            self.blueSquare.backgroundColor = UIColor.red;
            self.name.textColor = UIColor.white;
        }
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
