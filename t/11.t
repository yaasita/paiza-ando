#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat 11_ex1.dat | ../ando11.pl`;
    chomp $result;
    is $result,"1 0";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat 11_ex2.dat | ../ando11.pl`;
    chomp $result;
    is $result,"1 2";
}; #}}}
done_testing;
