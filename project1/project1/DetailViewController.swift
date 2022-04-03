//
//  DetailViewController.swift
//  project1
//
//  Created by Batuhan Yetgin on 28.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageview: UIImageView!
    var selectedImage : String?
    var totalElementcounts : Int?
    var currentItemIndex : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(currentItemIndex!) of \(totalElementcounts!)"
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = selectedImage{
            imageview.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.hidesBarsOnTap = false
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
