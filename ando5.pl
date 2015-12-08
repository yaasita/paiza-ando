#!/usr/bin/perl
use strict;
use warnings;
my ($y,$n);
while (<STDIN>){
    $y++ if /yes/;
    $n++ if /no/;
}
if ($y > $n){
    print "yes";
}
else {
    print "no";
}