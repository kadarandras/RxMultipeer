# A testable abstraction over multipeer connectivity

Using the adapter pattern, we can test multipeer code with heavy mocking. In effect, we are trying to isolate all the
untestable bits of `MultipeerConnectivity` into one library.

This library also gives you the flexibility to swap out the underlying mechanics of p2p with some other protocol such as
websockets. At the moment it only comes with support for Apple's MultipeerConnectivity, however you can easily write
your own adapters for different protocols.

Please note that NKMultipeer makes heavy use of [RxSwift](https://github.com/kzaher/RxSwift) which you should read up on
if unfamiliar with Rx* libraries.

## Example code

### @TODO : Testing

### @TODO : Usage

## License

The MIT License (MIT)

Copyright (c) 2015 Nathan Kot

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
