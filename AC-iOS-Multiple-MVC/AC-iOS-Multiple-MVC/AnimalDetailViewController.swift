//
//  DetailViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Chelsi Christmas on 11/19/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalDescriptionLabel: UILabel!
    
    
    var animal: ZooAnimal?
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedUI()

        // Do any additional setup after loading the view.
    }
    
    func updatedUI() {
          guard let theAnimal = animal else {
              fatalError("Unable to get animal info, verify prepare for segue: ")
          }
          title = theAnimal.name
        animalImageView.image = UIImage(named: "\(theAnimal.imageNumber)")
          animalDescriptionLabel.text = theAnimal.info      }
    
    

}
