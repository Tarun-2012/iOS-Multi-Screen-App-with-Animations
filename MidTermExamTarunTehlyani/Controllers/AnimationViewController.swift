//
//  AnimationViewController.swift
//  MidTermExamTarunTehlyani
//
//  Created by Default User on 2/14/25.
//

import UIKit

class AnimationViewController: UIViewController {
       var spinLayer: CALayer?
       var fadeLayer: CALayer?
       @IBOutlet var imgView: UIImageView!
       @IBOutlet var animatedImageViewContainer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateImage()
        spinAndFadeImage()
    }
       
       func animateImage() {
           let img1 = UIImage(named: "Image1.jpeg")!
           let img2 = UIImage(named: "image2.jpeg")!
           let img3 = UIImage(named: "image3.jpeg")!
           let img4 = UIImage(named: "Image4.jpeg")!
           let img5 = UIImage(named: "image5.jpeg")!
           
           let carImages = [img1, img2, img3, img4, img5]
           
           imgView.animationImages = carImages
           imgView.animationDuration = 7.0
           imgView.animationRepeatCount = 0
           imgView.startAnimating()
       }
       
       
       func spinAndFadeImage() {
           let image = UIImage(named: "Image1.jpeg")
           spinLayer = .init()
                  
           let screenWidth = view.bounds.width
           let screenHeight = view.bounds.height
                  
           let layerWidth: CGFloat = screenWidth * 0.5
           let layerHeight: CGFloat = screenHeight * 0.3
           
           spinLayer?.bounds = CGRect(x: 0, y: 0, width: layerWidth, height: layerHeight)
                  
           spinLayer?.position = CGPoint(x: screenWidth / 2, y: screenHeight * 0.4)
           spinLayer?.contents = image?.cgImage
                  
           animatedImageViewContainer.layer.addSublayer(spinLayer!)
    
           let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
           rotateAnimation.fromValue = 0
           rotateAnimation.toValue = 2 * Double.pi
           rotateAnimation.isRemovedOnCompletion = false
           rotateAnimation.duration = 1.0
           rotateAnimation.repeatCount = .infinity
           spinLayer?.add(rotateAnimation, forKey: nil)
            
           
           let fadeAnimation = CABasicAnimation(keyPath: "opacity")
           fadeAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
           fadeAnimation.fromValue = NSNumber.init(value: 1.0)
           fadeAnimation.toValue = NSNumber.init(value: 0.0)
           fadeAnimation.isRemovedOnCompletion = false
           fadeAnimation.duration = 3.0
           fadeAnimation.beginTime = 1.0
           fadeAnimation.autoreverses = true
           fadeAnimation.repeatCount = .infinity
                  
            
           spinLayer?.add(rotateAnimation, forKey: "rotation")
           spinLayer?.add(fadeAnimation, forKey: "fade")
       }
       
    
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
