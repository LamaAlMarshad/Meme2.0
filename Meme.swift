//
//  Meme.swift
//  MemeMe1.0
//
//  Created by  lama almarshad on 08/12/2019.
//  Copyright © 2019  lama almarshad. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText : String
    var bottomText : String
    var originalImage : UIImage
    var memedImage : UIImage
    
    init(top: String, bottom: String, image: UIImage, memedImage: UIImage) {
    self.topText = top
    self.bottomText = bottom
    self.originalImage = image
    self.memedImage = memedImage
    }
}
/*Meme : NSObject{
    var topText : String
    var bottomText : String
    var originalImage : UIImage
    var memedImage : UIImage
    
    init(top: String, bottom: String, image: UIImage, memedImage: UIImage) {
        self.topText = top
        self.bottomText = bottom
        self.originalImage = image
        self.memedImage = memedImage
    }

}*/
