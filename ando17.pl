#!/usr/bin/perl
use strict;
use warnings;
use POSIX qw(ceil);
use feature qw(say);

my $width = <STDIN>;
my $length = <STDIN>;
my $ret = "";

my $inv = 1;
for (1..ceil($length / $width)){
    if ($inv){
        $ret .= "R" x $width;
        $inv = !$inv;
    }
    else {
        $ret .= "W" x $width;
        $inv = !$inv;
    }
}
say substr($ret,0,$length);
