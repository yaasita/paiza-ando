#!/usr/bin/perl
use strict;
use warnings;

my $num = <STDIN>;
my $factorial = 1;
for (1..$num){
    $factorial *= $_;
}
print $factorial;