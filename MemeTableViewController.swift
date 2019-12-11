//
//  MemeTableViewController.swift
//  MemeMe1.0
//
//  Created by  lama almarshad on 09/12/2019.
//  Copyright © 2019  lama almarshad. All rights reserved.
//
//UITableViewDataSource
import Foundation
import UIKit
//
//UITableViewController
class MemeTableViewController : UITableViewController{
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell") as! MemeTableViewCell
        let meme = memes[indexPath.row]
        cell.memeImageView.image = meme.memedImage
        cell.memeLabel.text = buildMemeTextSummary(meme: meme)
        return cell
    }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
      override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        let destinationController = storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
         destinationController.meme = self.memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(destinationController, animated: true)
    }
    
    func buildMemeTextSummary(meme: Meme) -> String {
        var topSubstring = meme.topText
        var bottomSubstring = meme.bottomText
        return "\(topSubstring). \(bottomSubstring)"
    }
    
    @IBAction func createMeme(_ sender: Any) {
        let storyboard = self.storyboard
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(resultVC, animated: true, completion: nil)
    }
    
}
