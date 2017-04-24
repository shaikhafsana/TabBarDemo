//
//  WebViewController.m
//  AsTabbarmachineTest
//
//  Created by Student P_02 on 19/03/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showActivityIndicator];
  [self loadUIWebView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)loadUIWebView
{
    NSString *currentURL=@"http://www.google.com";
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:currentURL]]];
    webView.delegate=self;
    [self.view addSubview:webView];
   
}
-(void)showActivityIndicator
{
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityIndicator.alpha = 1.0;
    [self.view addSubview:activityIndicator];
    activityIndicator.center = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
    [activityIndicator setHidesWhenStopped:YES];
    [activityIndicator startAnimating];//to start animating
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView;
{
    [activityIndicator stopAnimating];
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"title"
                                 message:@"SucessFully Loaded"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* okButton = [UIAlertAction
                                actionWithTitle:@"OK"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    
                                    
                                }];
    
    
    [alert addAction:okButton];
 
    
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;
{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Logout"
                                 message:@"oops Error Occured!!!!"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* OkButton = [UIAlertAction
                                   actionWithTitle:@"cancel"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction * action) {
                                       
                                       
                                   }];
    
    
    [alert addAction:OkButton];
    
    
    [self presentViewController:alert animated:YES completion:nil];

}
/*- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
{
    [activityIndicator stopAnimating];
    [self loadUIWebView];
    return YES;
}*/
/*- (void)webViewDidStartLoad:(UIWebView *)webView;
{
    [activityIndicator stopAnimating];
    [self loadUIWebView];
 
}*/
@end
