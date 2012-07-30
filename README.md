# BNSegmenter

Simple wrapper of CFStringTokenizer.

## Usage

* Copy `BNSegmenter.h`, `BNSegmenter.m` to your projects.
* Import `BGSegmenter.h`.
* Call `[[BNSegmenter shared] segment:string]` or `[[BNSegmenter shared] separate:string separator:@"|"]`.

## Example

    NSString *string = @"すもももももももものうち";
    NSString *separeted = [[BNSegmenter shared] separate:string separator:@"|"];
    NSLog(separeted); // すもも|も|もも|も|もも|の|うち

## Thanks

 * https://github.com/oomori/CFStringTokenizer
 * http://d.hatena.ne.jp/monsierPIXY/20111216/1323987094

## LICENSE

New BSD License
