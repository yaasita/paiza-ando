#!/usr/bin/perl
use strict;
use warnings;
use bigint;
use feature qw(say);

my $n = <STDIN>;
my $str = factorial($n);
$str =~ s/0+$//;
$str =~ s/^.*(\d{9})$/$1/;
$str =~ s/^0*//;
say $str;

sub factorial {
    my ($n) = @_;
    return ($n * &factorial($n -1)) if ($n > 0);
    return 1;
}
