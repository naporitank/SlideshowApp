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
    
    let images = ["animal.jpeg","animal2.jpeg","animal3.jpg"]
    let myImage1 = UIImage(named : "animal.jpeg")
    let myImage2 = UIImage(named : "animal2.jpeg")
    let myImage3 = UIImage(named : "animal3.jpg")
    var timer: NSTimer?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    //画像表示
    func imageDisplay(){
        
        photosImage = UIImage(named : images[countnumber])
        imageView.image = photosImage
        
        
    }
    
    
    @IBAction func nextbuttontapaction(sender: AnyObject) {
        nextpage()
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
    
    
    func nextpage(){
        //        if countnumber < images.count-1{
        //            countnumber++
        //        }else if countnumber == images.count-1{
        //        }
        if countnumber < images.count-1{
            countnumber++
        }else if countnumber == images.count-1{
            countnumber = 0
        }
        imageDisplay()
    }
    
    //タイマー
    func onUpdate(){
        timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target:self,selector:("nextpage"),userInfo:nil,repeats:true)
        
    }
    
    @IBAction func startandstopbutton(sender: AnyObject) {
        if timer == nil {
            // タイマーが動いていない
            onUpdate()
        } else {
            // タイマーが動いていている
            timer?.invalidate()
            timer = nil
        }
    }
    
    
}


