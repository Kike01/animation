//
//  ViewController.swift
//  Carrusel
//
//  Created by Kike fuentes on 11/16/16.
//  Copyright © 2016 Kike fuentes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDelegate,iCarouselDataSource {

    @IBOutlet var corouselView: iCarousel!
    
    var image = [Int]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        image = [1,2,3,4,5]

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    corouselView.type = .rotary
        
        
    }
    
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return image.count
    }
    
    // aumento de tamaño de image
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let tempView = UIView(frame: CGRect(x: 0, y: 0, width: 130, height: 130))
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 130, height: 130))
        
        button.setTitle("\(index)", for: .normal)
      //  button.imageView = UIImage(named: "png3")
        button.backgroundColor = UIColor(patternImage: UIImage(named: "home2")!)
        
        tempView.addSubview(button)
        
       
        
        
        return tempView
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == iCarouselOption.spacing{
        
        return 1.2
            
        }
        return value
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

