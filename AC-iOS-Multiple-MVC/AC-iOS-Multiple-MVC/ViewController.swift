//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var zooAnimal = [ZooAnimal]() {
        didSet {
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        zooAnimal = ZooAnimal.zooAnimals
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let animalDVC = segue.destination as? AnimalDetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("No information from AnimalDetailViewController available")
        }
        let zooAnimals = zooAnimal[indexPath.row]
        animalDVC.animal = zooAnimals
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {
            fatalError("No animalCell available to deque")
        }
        
        let animal = zooAnimal[indexPath.row]
        
        cell.configureCell(for: animal)
        
      return cell
    }
}
