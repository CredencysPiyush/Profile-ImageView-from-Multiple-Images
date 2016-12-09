//
//  ViewController.swift
//  MultipleImage
//
//  Created by piyush sinroja on 09/12/16.
//  Copyright © 2016 piyush sinroja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var imgview2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image21 = UIImage(named: "21")!
        let image22 = UIImage(named: "22")!
        let image23 = UIImage(named: "23")!
        let image24 = UIImage(named: "24")!
        
        let size = CGSize(width: CGFloat(imageview.frame.size.width), height: CGFloat(image21.size.height + image22.size.height))
        UIGraphicsBeginImageContext(size)
        
        image21.draw(in: CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(size.width/2), height: CGFloat(image21.size.height + image22.size.height)))
      
        image23.draw(in: CGRect(x: CGFloat(0), y: CGFloat(image21.size.height), width: CGFloat(size.width)/2, height: CGFloat(image22.size.height)))
        
        image22.draw(in: CGRect(x: CGFloat(size.width/2), y: CGFloat(image21.size.height), width: CGFloat(size.width)/2, height: CGFloat(image22.size.height)))
        
        image24.draw(in: CGRect(x: CGFloat(size.width/2), y: CGFloat(0), width: CGFloat(size.width)/2, height: CGFloat(image21.size.height)))
        
       // image25.draw(in: CGRect(x: CGFloat(size.width/4), y: CGFloat(image21.size.height)/3, width: CGFloat(size.width)/2, height: CGFloat(image21.size.height)))
        
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        //set finalImage to IBOulet UIImageView
        imageview.image = finalImage
        imageview.layer.cornerRadius = self.imageview.frame.size.width/2
        imageview.layer.masksToBounds = true
        
        
        setMultipleImage()

    }
    
    func setMultipleImage()  {
        let image21 = UIImage(named: "21")!
        let image22 = UIImage(named: "22")!
        let image24 = UIImage(named: "24")!
        
        let size = CGSize(width: CGFloat(imgview2.frame.size.width), height: CGFloat(image21.size.height + image22.size.height))
        UIGraphicsBeginImageContext(size)
        
        image21.draw(in: CGRect(x: CGFloat(0), y: CGFloat(0), width: CGFloat(size.width/2), height: CGFloat(image21.size.height + image22.size.height)))
        
        image22.draw(in: CGRect(x: CGFloat(size.width/2), y: CGFloat(image21.size.height), width: CGFloat(size.width)/2, height: CGFloat(image22.size.height)))
        
        image24.draw(in: CGRect(x: CGFloat(size.width/2), y: CGFloat(0), width: CGFloat(size.width)/2, height: CGFloat(image21.size.height)))
        
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        //set finalImage to IBOulet UIImageView
        imgview2.image = finalImage
        imgview2.layer.cornerRadius = self.imgview2.frame.size.width/2
        imgview2.layer.masksToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

