//
//  ProjectViewController.swift
//  RKexploration
//
//  Created by James Godwin on 21/04/2015.
//  Copyright (c) 2015 Science Practice. All rights reserved.
//

import UIKit
import ResearchKit


class ProjectViewController: UIViewController, ORKTaskViewControllerDelegate {
    
    //Quality of Life Button
    @IBAction func qolTap(sender: AnyObject) {
        
        //Present the Quality of Life task
        let SurveyTask = surveyTask
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    //Walking Task Button
    @IBAction func walkTap(sender: AnyObject) {
        
        //Present the Walking task
        let WalkingTask = fitnessTask
        let taskViewController = ORKTaskViewController(task: WalkingTask, taskRunUUID: nil)
        taskViewController.delegate = self
        presentViewController(taskViewController, animated: true, completion: nil)
    }
    
    
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        
        let taskResult = taskViewController.result
        //You could do something with the result here
        
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }
    
}