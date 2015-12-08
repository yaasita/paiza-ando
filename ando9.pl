#!/usr/bin/perl
use strict;
use warnings;

my $word = "";
<STDIN>;
while (<STDIN>){
    chomp;
    $word .= "${_}_";
}
$word =~ s/_$//;
print $word;
