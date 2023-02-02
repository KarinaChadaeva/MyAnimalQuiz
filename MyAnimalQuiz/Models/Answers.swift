//
//  Answers.swift
//  MyAnimalQuiz
//
//  Created by Карина Чадаева on 26.01.23.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            return "Тебе нравится быть с друзьями. Ты окружаешь себя людьми, которые тебе нравятся и которые всегда готовы тебе помочь"
        case .cat:
            return "Ты себе на уме. Любишь гулять один и ценишь свое одиночество."
        case .rabbit:
            return "Тебе нравится все мягкое. Ты здоров и полон энергии."
        case .turtle:
            return "Твоя сила в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}
