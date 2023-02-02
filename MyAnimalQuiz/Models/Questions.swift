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
    let answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(
                text: "Какую еду ты предпочитаешь?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", type: .dog),
                    Answer(text: "Рыба", type: .cat),
                    Answer(text: "Морковь", type: .rabbit),
                    Answer(text: "Кукуруза", type: .turtle)
                ]
            ),
            Question(
                text: "Что ты любишь делать?",
                type: .multiple,
                answers: [
                    Answer(text: "Плавать", type: .dog),
                    Answer(text: "Спать", type: .cat),
                    Answer(text: "Обниматься", type: .rabbit),
                    Answer(text: "Есть", type: .turtle)
                ]
            ),
            Question(
                text: "Любишь ли ты поездки на машине?",
                type: .range,
                answers: [
                    Answer(text: "Ненавижу", type: .cat),
                    Answer(text: "Люблю", type: .turtle),
                    Answer(text: "Равнодушно", type: .rabbit),
                    Answer(text: "Обожаю", type: .dog)
                ]
            )
        ]
    }
}
