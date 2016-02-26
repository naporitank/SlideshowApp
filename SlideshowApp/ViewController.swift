//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 穂坂研興 on 2016/02/23.
//  Copyright © 2016年 kenko.hosaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var startstop: UIButton!
    @IBOutlet weak var next: UIButton!
    @IBOutlet weak var back: UIButton!
    
    var countnumber  = 0
    var photoImage:UIImage!
    
    let images = ["image-1","image-2","image-3"]
    let myImage1 = UIImage(named : "image-1")
    let myImage2 = UIImage(named : "image-2")
    let myImage3 = UIImage(named : "image-3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func imageDisplay(){
        
        photoImage = UIImage(named : images[countnumber])
        myImageView.image = photoImage
        
        imageDisplay()
    }
    
    @IBAction func nextbuttontapaction(sender: AnyObject) {
        if countnumber < images.count-1{
            countnumber++
        }else if countnumber == images.count-1{
            countnumber = 0
            
            imageDisplay()
        }
        
        
        
    }
    @IBAction func backbuttontapaction(sender: AnyObject) {
        if countnumber != 0{
            countnumber--
        }else if countnumber == 0{
            countnumber = images.count-1
            
            imageDisplay()
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

