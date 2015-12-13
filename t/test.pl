#!/usr/bin/perl
use strict;
use warnings;
use bigint;
use feature qw(say);

my $stdin = <STDIN>;
chomp $stdin;
my $answer = 1;
for (1..$stdin){
    $answer *= $_;
}
$answer =~ s/0+$//;
$answer = substr($answer,-9);
$answer =~ s/^0+//;
say $answer;
