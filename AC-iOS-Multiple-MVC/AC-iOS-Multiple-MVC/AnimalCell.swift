//
//  AnimalCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Chelsi Christmas on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {
    
    
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalOrigin: UILabel!
    
   

    
    func configureCell(for zooAnimal: ZooAnimal) {
        
        animalImageView.image = UIImage(named: "\(zooAnimal.imageNumber)")
        animalName.text = zooAnimal.name
        animalOrigin.text = zooAnimal.origin

}
}
