//
//  Pendientes.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/PFQueryTableViewController.h>


@interface Pendientes : PFQueryTableViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblTipo;
@property (strong, nonatomic) IBOutlet UILabel *lblFecha;
@property (strong, nonatomic) IBOutlet UILabel *lblLugar;
@property (strong, nonatomic) IBOutlet UILabel *lblMonto;

@end
