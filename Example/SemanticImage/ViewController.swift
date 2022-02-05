//
//  ViewController.swift
//  SemanticImage
//
//  Created by sunfjun on 02/05/2022.
//  Copyright (c) 2022 sunfjun. All rights reserved.
//

import UIKit
import SemanticImage

class ViewController: UIViewController {
    @IBOutlet weak var vOriginImage: UIImageView!
    @IBOutlet weak var vNewImage: UIImageView!
    let image = UIImage.init(named: "origin")
    let semanticImage = SemanticImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        vOriginImage.image = image
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func maskImage() {
        if let image = image {
            let cropImage: UIImage? = semanticImage.personCrop(uiImage: image)
            vNewImage.image = cropImage
        }
    }
}

