#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example0' => sub { #{{{
    my $result = `echo 38 | ../ando13.pl`;
    chomp $result;
    is $result,"742912";
}; #}}}
subtest 'example1' => sub { #{{{
    my $result = `echo 15 | ../ando13.pl`;
    chomp $result;
    is $result,"307674368";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `echo 10 | ../ando13.pl`;
    chomp $result;
    is $result,"36288";
}; #}}}
#subtest 'my1' => sub { #{{{
    my $result = `echo 100 | ../ando13.pl`;
    chomp $result;
    is $result,"210916864";
#}; #}}}
subtest 'my2' => sub { #{{{
    my $result = `echo 10000 | ../ando13.pl`;
    chomp $result;
    is $result,"1579008";
}; #}}}
subtest 'my3' => sub { #{{{
    my $result = `echo 34454 | ../ando13.pl`;
    chomp $result;
    is $result,"587523584";
}; #}}}
done_testing;
