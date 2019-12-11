//
//  MemeCollectionViewController.swift
//  MemeMe1.0
//
//  Created by  lama almarshad on 08/12/2019.
//  Copyright © 2019  lama almarshad. All rights reserved.
//

import Foundation
import UIKit
class MemeCollectionViewController: UICollectionViewController {
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate//sharedApplication()
        memes = appDelegate.memes
        collectionView?.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        let destinationController = storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        destinationController.meme = self.memes[(indexPath as NSIndexPath).row]
       navigationController!.pushViewController(destinationController, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath as IndexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.row]
        cell.memeImage.image = meme.memedImage
         return cell
    }
      
      
    @IBAction func creatememe(_ sender: Any) {
        let storyboard = self.storyboard
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(resultVC, animated: true, completion: nil)
    }
}
