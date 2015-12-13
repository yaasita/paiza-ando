#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my $n = <STDIN>;
my $answer = 1;
for (1..$n){
    $answer *= $_;
    $answer =~ s/0+$//;
    $answer = substr($answer,-12);
}

$answer = substr($answer,-9);
$answer =~ s/^0+//;
say $answer;
