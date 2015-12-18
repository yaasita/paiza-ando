#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat 16_ex1.dat | ../ando16.pl`;
    chomp $result;
    is $result,"2 5";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat 16_ex2.dat | ../ando16.pl`;
    chomp $result;
    is $result,"None";
}; #}}}
done_testing;
