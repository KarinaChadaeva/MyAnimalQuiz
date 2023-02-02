//
//  FinalViewController.swift
//  MyAnimalQuiz
//
//  Created by Карина Чадаева on 26.01.23.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    var answers: [Answer]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        let maxAnimal = getMaxAnimal()
        updateResult(with: maxAnimal)
    }
}

//MARK: - Private Methods
extension FinalViewController {
    
    private func getMaxAnimal() -> AnimalType? {
        return Dictionary(grouping: answers, by: { $0.type })
            .sorted(by: { $0.value.count > $1.value.count })
            .first?.key
    }
    
    private func updateResult(with animal: AnimalType?) {
        animalTypeLabel.text = "Ты \(animal?.rawValue ?? "😿")!"
        descriptionLabel.text = animal?.definition ?? "Ooops! We have some problems"
    }
    
    
    
    
}
