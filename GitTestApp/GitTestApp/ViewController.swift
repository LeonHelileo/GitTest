//
//  ViewController.swift
//  GitTestApp
//
//  Created by Leonid Gneiting on 11/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showAlert() {
        let alert = UIAlertController(title: "PhotoAccess", message: "Do you allow to use your photos?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet() {
        enum Films: String {
            case film1 = "Spiderman"
            case film2 = "Fringe"
        }
        
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        
        let handler:(_ type: Films) -> (UIAlertAction) -> Void =
        {   type in
            return {action in
                print(type.rawValue)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let film1 = UIAlertAction(title: Films.film1.rawValue, style:  .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style:  .default, handler: handler (.film2))
        alert.addAction(film2)
        
        present(alert, animated: true, completion: nil)
        
    }
}

