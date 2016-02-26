//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 穂坂研興 on 2016/02/23.
//  Copyright © 2016年 kenko.hosaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startstop: UIButton!
    @IBOutlet weak var next: UIButton!
    @IBOutlet weak var back: UIButton!
    
    var countnumber  = 0
    var photosImage:UIImage!
    
    let images = ["photo-1","photo-2","photo-3"]
    let myImage1 = UIImage(named : "photo-1")
    let myImage2 = UIImage(named : "photo-2")
    let myImage3 = UIImage(named : "photo-3")
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func imageDisplay(){
        
        photosImage = UIImage(named : images[countnumber])
        imageView.image = photosImage
        
    
        }
    
    
    @IBAction func nextbuttontapaction(sender: AnyObject) {
        if countnumber < images.count-1{
            countnumber++
        }else if countnumber == images.count-1{
            countnumber = 0
            }
        imageDisplay()
        }
    
    
    @IBAction func backbuttontapaction(sender: AnyObject) {
        if countnumber != 0{
            countnumber--
        }else if countnumber == 0{
            countnumber = images.count-1
            }
        imageDisplay()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

