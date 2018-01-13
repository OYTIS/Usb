// MIT License
//
// Copyright 2017 Electric Imp
//
// SPDX-License-Identifier: MIT
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
// EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
// OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//

// A class that plays a role of table for converting of HID keyboard usage ID to US-ASCII codes
// Used with HIDKeyboard class if this file is included into application code
class HIDUsage2ASCII {
    function _get(key) {
        if (key > 3 && key < 30) {
            return 'a' + (key - 3);
        } else if ((key > 29 && key < 40) ) {
            return '1' + (key - 29);
        } else if (key == 44) {
            return ' ';
        } else if (key == 43) { // tab
            return '\t';
        } else if (key > 44 && key < 47) { // - =
            return '-' + (key - 44);
        } else if (key == 47 || key == 48) { // [ ]
            return '[' + (key - 47);
        } else if (key == 51 || key == 52) { // ; '
            return ';' + (key - 51);
        } else if (key == 49) { // \
            return '\\';
        } else if (key > 53 && key < 57) { // ,./
            return ',' + key - 53;
        } else { //
            // Zero means error
            return 0;
        }
    }
}
