//
//  MemeDetailViewController.swift
//  MemeMe1.0
//
//  Created by  lama almarshad on 08/12/2019.
//  Copyright © 2019  lama almarshad. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    var meme: Meme!
    @IBOutlet weak var memeImage: UIImageView!
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          self.tabBarController?.tabBar.isHidden = true
          self.memeImage!.image = meme.memedImage
      }
      
      override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)
          self.tabBarController?.tabBar.isHidden = false
      }

}
