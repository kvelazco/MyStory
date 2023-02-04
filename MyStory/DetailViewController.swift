//
//  DetailViewController.swift
//  MyStory
//
//  Created by Kevin Velazco on 2/2/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var contextItem: ContextItem?
    
    @IBOutlet weak var contextItemImageView: UIImageView!
    @IBOutlet weak var contextItemLabel: UILabel!
    
    //contextItemLabel.lineBreakMode = .byWordWrapping
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let contextItem = contextItem{
            contextItemLabel.numberOfLines = 0;

            contextItemImageView.image = contextItem.image
            contextItemLabel.text = contextItem.description
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
