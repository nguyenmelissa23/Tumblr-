//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by jsood on 2/7/18.
//  Copyright © 2018 Melissa Phuong Nguyen. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var photo: [[String:Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.photo)
        let currPost = self.photo[0]
        captionLabel.text = currPost["summary"] as? String
        if let photos = currPost["photos"] as? [[String: Any]]{
            
            let firstPhoto = photos[0]
            // 2.
            let originalSize = firstPhoto["original_size"] as! [String:Any]
            
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            
            photoImageView.af_setImage(withURL: url!)
        }
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FullScreenPhotoViewController
        let image = sender as! UIImageView
        vc.zoomImageView = image
        
    }*/
    
    
    //performSegue(withIdentifier:"zoomSegue", sender:nil)
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
