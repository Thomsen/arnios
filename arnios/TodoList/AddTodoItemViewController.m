//
//  AddTodoItemViewController.m
//  arnios
//
//  Created by cinna on 14-12-6.
//  Copyright (c) 2014年 Personal. All rights reserved.
//

#import "AddTodoItemViewController.h"


@interface AddTodoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddTodoItemViewController

- (void) prepareForSegue: (UIStoryboardSegue *)segue sender:(id)sender {
    // done to add item
    if (sender != self.doneButton) return ;
    if (self.textField.text.length > 0) {
        self.todoItem = [[TodoItem alloc] init];
        self.todoItem.itemName = self.textField.text;
        self.todoItem.completed = NO;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
