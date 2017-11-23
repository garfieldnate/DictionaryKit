// main.m
//
// Copyright (c) 2014 Mattt Thompson
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <Foundation/Foundation.h>

#import "TTTDictionary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        if(argc != 3) {
            printf("Usage: lookup <dict_name> <term>.\nAvailable dictionaries: \n");
            NSSet *allDics = [TTTDictionary availableDictionaries];
            for (TTTDictionary *dictionary in allDics) {
                printf("  %s\n", dictionary.name.UTF8String);
            }
            return 0;
        }
        
        NSString *dictName = [NSString stringWithUTF8String:argv[1]];
        NSString *term = [NSString stringWithUTF8String:argv[2]];
        
        TTTDictionary *dictionary = [TTTDictionary dictionaryNamed:dictName];
        NSLog(@"%@\n", dictionary.name);

        for (TTTDictionaryEntry *entry in [dictionary entriesForSearchTerm:term]) {
            printf("%s\n", entry.text.UTF8String);
        }
    }

    return 0;
}
