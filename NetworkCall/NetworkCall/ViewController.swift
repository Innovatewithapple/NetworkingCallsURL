//
//  ViewController.swift
//  NetworkCall
//
//  Created by admin on 07/08/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 300).isActive = true
        imageView.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 40).isActive = true
        imageView.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: -40).isActive = true
        imageView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -300).isActive = true
        
        
        let url = URL(string: "https://images.fastcompany.net/image/upload/w_596,c_limit,q_auto:best,f_auto/fc/3034007-inline-i-applelogo.jpg")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil {
                
                let loadImage = UIImage(data: data!)
                self.imageView.image = loadImage
            }
        }
        
        task.resume()
        // Do any additional setup after loading the view.
    }


    
    
}

