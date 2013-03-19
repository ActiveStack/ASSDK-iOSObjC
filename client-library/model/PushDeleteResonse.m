//
//  PushDeleteResonse.m
//  Percero
//
//  Created by Jeff Wolski on 3/13/13.
//
//

#import "PushDeleteResonse.h"
#import "EntityManager.h"
@implementation PushDeleteResonse

- (id) initFromDictionary:(NSDictionary *)dict{
    self = [super initFromDictionary:dict];
    if(self){
        _result = [[EntityManager sharedInstance] deserializeObject:[dict objectForKey:@"objectList"]];
    }
    
    return self;
}

- (NSMutableDictionary*) toDictionary:(BOOL)isShell{
    NSMutableDictionary* dict = [super toDictionary:isShell];
    
    [dict setObject:[self remoteClassName] forKey:@"cn"];
    
    if(!isShell){
        
    }
    
    return dict;
}


- (NSString*) remoteClassName{
    return @"com.percero.agents.sync.vo.PushDeleteResponse";
}

@end
