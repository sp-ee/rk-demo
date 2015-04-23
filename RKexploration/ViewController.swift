//
//  ViewController.swift
//  RKexploration
//
//  Created by James Godwin on 17/04/2015.
//  Copyright (c) 2015 Science Practice. All rights reserved.
//

import UIKit
import ResearchKit


//This is the initial view controller
class ViewController: UIViewController, ORKTaskViewControllerDelegate {
    
    //Tap the button for consent and create an action
    @IBAction func beginTapped(sender: AnyObject) {
        
        //Create a variable to store the ConsentTask
        let consentTask = ConsentTask
        
        //Passing `nil` for the `taskRunUUID` lets the task view controller generate an identifier for this run of the task.
        let taskViewController = ORKTaskViewController(task: consentTask, taskRunUUID: nil)
        taskViewController.delegate = self
        
        //Present the TaskViewController for consent with an animation
        presentViewController(taskViewController, animated: true, completion: nil)
        
    }
    
    // Function that is called when the consent process is finished
    func taskViewController(taskViewController: ORKTaskViewController, didFinishWithReason reason: ORKTaskViewControllerFinishReason, error: NSError?) {
        
        //Switch statement used to decide on state of process
        switch reason {
            
        //If task is completed then load the project view
        case .Completed:
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let projectView = storyboard.instantiateViewControllerWithIdentifier("ProjectView") as! UIViewController
            taskViewController.presentViewController(projectView, animated: true, completion: nil)
            
        // If the task is cancelled, failed or saved then dismiss the task view
        case .Saved, .Failed, .Discarded:
            
            taskViewController.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}