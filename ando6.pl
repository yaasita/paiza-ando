#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my $count = <STDIN>;
chomp $count;
while (1){
    say $count;
    $count--;
    if ($count <= 0){
        say "$count!!";
        last;
    }
}