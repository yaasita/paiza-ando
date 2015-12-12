#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat rio_ex1.dat | ../rio.pl`;
    chomp $result;
    is $result,"10";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat rio_ex2.dat | ../rio.pl`;
    chomp $result;
    is $result,"42";
}; #}}}
done_testing;

