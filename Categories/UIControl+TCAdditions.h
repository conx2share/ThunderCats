//
//  UIControl+TCAdditions.h
//  ThunderCats
//
//  Copyright (c) 2015 Metova Inc.
//
//  MIT License
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import <UIKit/UIKit.h>
#import "TCNullabilityMacros.h"

@interface UIControl (TCAdditions)

/**
 *  Returns a Boolean value that indicates whether the control has an IBAction wired to a target for a particular control event.
 *
 *  @param target           The target of the action.
 *  @param ibactionSelector The IBAction selector.
 *  @param controlEvent     The control event to check for.
 *
 *  @return YES if the control has the target for the control event.
 */
- (BOOL)tc_isControlWiredToTarget:(id __tc_nonnull)target
              forIBActionSelector:(SEL __tc_nonnull)ibactionSelector
                  forControlEvent:(UIControlEvents)controlEvent;

@end
