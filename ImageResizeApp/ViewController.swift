//
//  ViewController.swift
//  ImageResizeApp
//
//  Created by abdukomil on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var leftOn: UIImage?
    var rigtOn: UIImage?

    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftOn = UIImage(named: "image1.jpg")
        rigtOn = UIImage(named: "image2.jpg")
    
        imgView.image = leftOn
        }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        
        let scale:CGFloat = 2.0
            var newWidth:CGFloat, newHeight:CGFloat
        
            if(isZoom){
                newWidth = imgView.frame.width/scale
                newHeight = imgView.frame.height/scale
                btnResize.setTitle("big", for: .normal)
            }
            else{
                newWidth = imgView.frame.width*scale
                newHeight = imgView.frame.height*scale
                btnResize.setTitle("small", for: .normal)
            }
            imgView.frame.size = CGSize(width: newWidth, height: newHeight)
            isZoom = !isZoom
        
    }
    
    @IBAction func leftBtn(_ sender: Any) {
        print("left button pressed")
        text.text = "photo 1"
        imgView.image = leftOn
    }
    
    @IBAction func rightBtn(_ sender: Any) {
        print("right button pressed")
        text.text = "photo 2"
        imgView.image = rigtOn
    }
    
    

}

//var isZoom = false
//var leftOn: UIImage?
//var rigtOn: UIImage?
//
//@IBOutlet weak var imgView: UIImageView!
//@IBOutlet weak var btnResize: UIButton!
//
//
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view.
//
//    leftOn = UIImage(named: "flutter1.png")
//    rigtOn = UIImage(named: "flutter2.png")
//
//    imgView.image = leftOn
//}
//
//
//@IBAction func btnResizeImage(_ sender: UIButton) {
//    let scale:CGFloat = 2.0
//    var newWidth:CGFloat, newHeight:CGFloat
//
//    if(isZoom){
//        newWidth = imgView.frame.width/scale
//        newHeight = imgView.frame.height/scale
//        btnResize.setTitle("확대", for: .normal)
//    }
//    else{
//        newWidth = imgView.frame.width*scale
//        newHeight = imgView.frame.height*scale
//        btnResize.setTitle("축소", for: .normal)
//    }
//    imgView.frame.size = CGSize(width: newWidth, height: newHeight)
//    isZoom = !isZoom
//}
//
////    @IBAction func btnResizeImage(_ sender: UIButton) {
////
////
////    }
//
//
//
//
//
//
//
//
//
//@IBOutlet weak var text: UILabel!
//
//@IBAction func LeftButton(_ sender: Any) {
//    print("Left Button")
//    text.text = "Flutter 1 photo"
//    imgView.image = leftOn
//}
//
//@IBAction func RightButton(_ sender: Any) {
//    print("Right Button")
//    text.text = "Flutter 2 photo"
//    imgView.image = rigtOn
//}
