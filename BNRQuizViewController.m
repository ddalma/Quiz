//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Student on 2/21/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak)IBOutlet UILabel *questionLabel;
@property (nonatomic, weak)IBOutlet UILabel *answerLabel;
@property(nonatomic) int CurrentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //create two arrays filled with questions and answers and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?"];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    
    //Return the address of the new object
    return self;
}


-(IBAction)showQuestion:(id)sender{
    //step to the next question
    self.CurrentQuestionIndex++;
    if(self.CurrentQuestionIndex == [self.questions count]){
        //Go back to the first question
        self.CurrentQuestionIndex = 0;
    }
    //Get the string at that index in the questions array
    NSString *question = self.questions[self.CurrentQuestionIndex];
    
    //display the string in the question label
    self.questionLabel.text = question;
    
    //reset the answer label
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender{
    //what is the answer to the current question?
    NSString *answer = self.answers[self.CurrentQuestionIndex];
    
    //display it in the answer label
    self.answerLabel.text = answer;
    
}

@end
