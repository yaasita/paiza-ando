#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat kirishima_ex1.dat | ../kirishima.pl`;
    my @result = split(/\n/,$result);

    is $result[0],"Yes";
    is $result[1],"Yes";
    is $result[2],"No";
    is $result[3],"No";
    is $result[4],"No";
    is $result[5],"No";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat kirishima_ex2.dat | ../kirishima.pl`;
    my @result = split(/\n/,$result);

    is $result[0],"No";
    is $result[1],"No";
    is $result[2],"No";
    is $result[3],"Yes";
}; #}}}
done_testing;

