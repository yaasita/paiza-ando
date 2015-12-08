#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my $drink1 = <STDIN>;
my $drink2 = <STDIN>;

&cp(\$drink1);
&cp(\$drink2);
print $drink1 > $drink2 ? 1 : 2;

sub cp {
    my $ref = shift;
    my ($caffeine,$cost) = split(/\s/,$$ref);
    $$ref = $caffeine / $cost;
}