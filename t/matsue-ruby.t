#!/usr/bin/perl
# vim: fdm=marker
use strict;
use warnings;
use feature qw(say);
use Test::More;
use FindBin;
chdir $FindBin::Bin;

subtest 'example1' => sub { #{{{
    my $result = `cat matsue-ruby_ex1.dat | ../matsue-ruby.pl`;
    chomp $result;
    is $result,"fdkjnvqaqvnjkdf";
}; #}}}
subtest 'example2' => sub { #{{{
    my $result = `cat matsue-ruby_ex2.dat | ../matsue-ruby.pl`;
    chomp $result;
    is $result,"hujxnrnwoownrnxjuh";
}; #}}}

subtest 'user1' => sub { #{{{
    my $result = `cat matsue-ruby_user1.dat | ../matsue-ruby.pl`;
    chomp $result;
    my $kotae = "a b c b a";
    $kotae =~ s/ //g;
    is $result, $kotae;
}; #}}}
done_testing;

