//
//  ViewController.swift
//  8Ball
//
//  Created by Yash Katwal on 6/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ans.text = ""
    }
    override func becomeFirstResponder() -> Bool {
        return true
    }
 
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let num = Int.random(in: 1...9)
            switch num {
              case 1:
                ans.fadeOut(0)
                ans.text = "Yes"
                ans.fadeOut(0)
              case 2:
                ans.fadeOut(0)
                ans.text = "Yeah probably"
                ans.fadeOut(0)
              case 3:
                ans.fadeOut(0)
                ans.text = "There's a good chance"
                ans.fadeOut(0)
              case 4:
                ans.fadeOut(0)
                ans.text = "What? Try again"
                ans.fadeOut(0)
              case 5:
                ans.fadeOut(0)
                ans.text = "Ask again later"
                ans.fadeOut(0)
              case 6:
                ans.fadeOut(0)
                ans.text = "You don't want to know"
                ans.fadeOut(0)
              case 7:
                ans.fadeOut(0)
                ans.text = "No"
                ans.fadeOut(0)
              case 8:
                ans.fadeOut(0)
                ans.text = "Not gonna happen"
                ans.fadeOut(0)
              case 9:
                ans.fadeOut(0)
                ans.text = "I would give up if I were you"
                ans.fadeOut(0)
              default:
                ans.text = "Error"
            }
            
            ans.textColor = UIColor.white


            ans.fadeIn(2.0)
            
        }
    }
    
    @IBOutlet weak var ans: UILabel!
    @IBOutlet weak var eightBall: UIImageView!
    
   
}

extension UIView {
  func fadeTo(_ alpha: CGFloat, duration: TimeInterval = 0.3) {
    DispatchQueue.main.async {
      UIView.animate(withDuration: duration) {
        self.alpha = alpha
      }
    }
  }

  func fadeIn(_ duration: TimeInterval = 0.3) {
    fadeTo(1.0, duration: duration)
  }

  func fadeOut(_ duration: TimeInterval = 0.3) {
    fadeTo(0.0, duration: duration)
  }
}

