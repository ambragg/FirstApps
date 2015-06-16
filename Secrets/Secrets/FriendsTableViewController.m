


#import "FriendsTableViewController.h"
#import <Parse/Parse.h>

@interface FriendsTableViewController ()

@end

@implementation FriendsTableViewController
{
    NSArray * friends;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    
//    PFQuery * query = [PFUser query];
//    
//    [query whereKey:@"objectId" notEqualTo:[PFUser currentUser].objectId];
//    
//    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError * error) {
//        
//        if (objects.count > 1) {
//            
//            friends = objects;
//            
//        }
//        
//        [self.tableView reloadData];
//        
//    }];
    
}


- (void) tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PFUser * user = friends[indexPath.row];
    
    PFQuery * deviceQuery = [PFInstallation query];
    [deviceQuery whereKey:@"user" equalTo:user];
    
    PFPush * push = [PFPush push];
    
    [push setMessage:[NSString stringWithFormat:@"%@ has Poked You",[PFUser currentUser].username]];
    [push setQuery:deviceQuery];
    
    [push sendPushInBackground];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return friends.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"friendCell" forIndexPath:indexPath];
    
    PFUser * user = friends[indexPath.row];
    
    cell.textLabel.text = user.username;
    
    return cell;
}

@end
