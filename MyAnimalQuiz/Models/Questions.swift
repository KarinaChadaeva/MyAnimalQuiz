//
//  Questions.swift
//  MyAnimalQuiz
//
//  Created by Карина Чадаева on 26.01.23.
//

enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answer: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Какую еду ты предпочитаешь?",
                type: .single,
                answer: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
                ]
            ),
            Question(
                text: "Что ты любишь делать?",
                type: .multiple,
                answer: [
                    Answer(text: "Плавать", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Обниматься", type: .rabbit),
                    Answer(text: "Есть", type: .turtle)
                ]
            ),
            Question(
                text: "Любишь ли ты поездки на машине?",
                type: .range,
                answer: [
                    Answer(text: "Обожаю", type: .dog),
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Ненавижу", type: .rabbit),
                    Answer(text: "Обожаю", type: .turtle)
                ]
            )
        ]
    }
}
