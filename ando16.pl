#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

<STDIN>;
my @mybooks;
{
    <STDIN>;
    my $mybooks = <STDIN>;
    chomp $mybooks;
    @mybooks = split(/\s/,$mybooks);
}
my @salebooks;
{
    <STDIN>;
    my $salebooks = <STDIN>;
    chomp $salebooks;
    @salebooks = split(/\s/,$salebooks);
}
my %buy;
# 中古にあるやつを+1
for (@salebooks){
    $buy{$_}++;
}
# 自分の本を削除
for (@mybooks){
    delete($buy{$_});
}
my @buy = grep {$buy{$_} >= 1} keys %buy;
@buy = sort {$a <=> $b} @buy;
if (@buy+0 == 0){
    say "None";
}
else {
    say "@buy";
}
