#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

my %buy;
{
    my $total = <DATA>;
    chomp $total;
    for(1..$total){
        $buy{$_} = 1;
    }
}
my @mybooks;
{
    <DATA>;
    my $mybooks = <DATA>;
    chomp $mybooks;
    @mybooks = split(/\s/,$mybooks);
}
my @salebooks;
{
    <DATA>;
    my $salebooks = <DATA>;
    chomp $salebooks;
    @salebooks = split(/\s/,$salebooks);
}
# 自分が持っている本を削除
for (@mybooks){
    delete($buy{$_});
}
# 中古にあるやつを+1
for (@salebooks){
    $buy{$_}++;
}
my @buy = grep {$buy{$_} >= 2} keys %buy;
@buy = sort {$a <=> $b} @buy;
say "@buy";
