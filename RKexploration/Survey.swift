//
//  survey.swift
//  RKexploration
//
//  Created by James Godwin on 21/04/2015.
//  Copyright (c) 2015 Science Practice. All rights reserved.
//

import Foundation
import ResearchKit

public var surveyTask: ORKTask {
    var steps = [ORKStep]()
    
    // Create the intro step.
    let instructionStep = ORKInstructionStep(identifier: "instructionStep")
    instructionStep.title = NSLocalizedString("Quality Of Life Questionnaire", comment: "")
    instructionStep.text = "You will need to answer 13 questions about your quality of life"
    
    steps += [instructionStep]
    
    // Question 1
    
    let textChoiceOneText = NSLocalizedString("Poor", comment: "")
    let textChoiceTwoText = NSLocalizedString("Fair", comment: "")
    let textChoiceThreeText = NSLocalizedString("Good", comment: "")
    let textChoiceFourText = NSLocalizedString("Excellent", comment: "")
  
    let textChoices = [
        ORKTextChoice(text: textChoiceOneText, value: "choice_1"),
        ORKTextChoice(text: textChoiceTwoText, value: "choice_2"),
        ORKTextChoice(text: textChoiceThreeText, value: "choice_3"),
        ORKTextChoice(text: textChoiceFourText, value: "choice_4")
    ]
    
    let answerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: textChoices)

    let question1Step = ORKQuestionStep(identifier: "Question1Step", title: "Physical Health", answer: answerFormat)
    
    question1Step.text = "First of all, how do you feel about your physical health?"
    
    //The optional attribute will remove the ability to skip the question
    question1Step.optional = false
    
    
    steps += [question1Step]
    
    // Question 2
    
    let question2Step = ORKQuestionStep(identifier: "Question2Step", title: "Energy Levels", answer: answerFormat)
    
    question2Step.text = "How do you feel about your energy level?"
    
    steps += [question2Step]
    
    // Question 3
    
    let question3Step = ORKQuestionStep(identifier: "Question3Step", title: "Mood", answer: answerFormat)
    
    question3Step.text = "How has your mood been lately? Have your spirits been good, or have you been feeling down?"
    
    steps += [question3Step]

    
    // Question 4
    
    let question4Step = ORKQuestionStep(identifier: "Question4Step", title: "Living Situation", answer: answerFormat)
    
    question4Step.text = "How about your living situation? How do you feel about the place you live now?"
    
    steps += [question4Step]

    
    // Question 5
    
    let question5Step = ORKQuestionStep(identifier: "Question5Step", title: "Memory", answer: answerFormat)
    
    question5Step.text = "How about your memory?"
    
    steps += [question5Step]
    
    // Question 6

    let question6Step = ORKQuestionStep(identifier: "Question6Step", title: "Family", answer: answerFormat)
    
    question6Step.text = "How about your family and your relationship with family members? Would you describe it as poor, fair, good, or excellent?"
    
    steps += [question6Step]
    
    // Question 7
    
    let question7Step = ORKQuestionStep(identifier: "Question7Step", title: "Marriage", answer: answerFormat)
    
    question7Step.text = "How do you feel about your marriage?"
    
    steps += [question7Step]
    
    // Question 8
    
    let question8Step = ORKQuestionStep(identifier: "Question8Step", title: "Friends", answer: answerFormat)
    
    question8Step.text = "How would you describe your current relationship with your friends?"
    
    steps += [question8Step]

    // Question 9
    
    let question9Step = ORKQuestionStep(identifier: "Question9Step", title: "Your Self", answer: answerFormat)
    
    question9Step.text = "How do you feel about yourself—when you think of your whole self, and all the different things about you?"
    
    steps += [question9Step]
    
    // Question 10
    
    let question10Step = ORKQuestionStep(identifier: "Question10Step", title: "House Work", answer: answerFormat)
    
    question10Step.text = "How do you feel about your ability to do things like chores around the house or other things you need to do?"
    
    steps += [question10Step]
    
    // Question 11
    
    let question11Step = ORKQuestionStep(identifier: "Question11Step", title: "Enjoyment", answer: answerFormat)
    
    question11Step.text = "How about your ability to do things for fun, that you enjoy?"

    
    steps += [question11Step]
    
    // Question 12
    
    let question12Step = ORKQuestionStep(identifier: "Question12Step", title: "Money", answer: answerFormat)
    
    question12Step.text = "How do you feel about your current situation with money, your financial situation?"
    
    
    steps += [question12Step]
    
    // Question 13
    
    let question13Step = ORKQuestionStep(identifier: "Question13Step", title: "Life", answer: answerFormat)
    
    question13Step.text = " How would you describe your life as a whole. When you think about your life as a whole, everything together, how do you feel about your life?"
    
    
    steps += [question13Step]
    
    
    // Add a summary step.
    let summaryStep = ORKInstructionStep(identifier: "SummaryStep")
    summaryStep.title = NSLocalizedString("Thanks", comment: "")
    summaryStep.text = NSLocalizedString("Thank you for completing your quality of life questionnaire.", comment: "")
    
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "SurveyStep", steps: steps)
}
