//
// Copyright 2013 Jeff Verkoeyen
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "ParagraphsViewController.h"

#import "NSAttributedStringMarkdownParser.h"
#import "NimbusAttributedLabel.h"

@implementation ParagraphsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSAttributedStringMarkdownParser* parser = [[NSAttributedStringMarkdownParser alloc] init];
    NSAttributedString* string = [parser attributedStringFromMarkdownString:
                                  @"- List item 1\n"
                                  @"- List item 2\n"
                                  @"+ List item 3\n"
                                  @"+ List item 4\n"
                                  @"* List item 5\n"
                                  @"* List item 6\n"];

    NIAttributedLabel* label = [[NIAttributedLabel alloc] init];
    label.attributedString = string;
    label.numberOfLines = 0;
    label.frame = self.view.bounds;
    [self.view addSubview:label];
}

@end