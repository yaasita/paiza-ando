#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

package Cake;
sub new {
    my $self = {};
    my $class = shift;
    $self->{X} = $_[0];
    $self->{Y} = $_[1];
    $self->{Z} = $_[2];
    $self->{Xcut} = [];
    $self->{Ycut} = [];
    bless $self;
    return $self;
}
sub cut {
    my $self = shift;
    my $way = shift;
    my $len = shift;
    if ($way == 0){
        push(@{$self->{Xcut}},$len);
    }
    else {
        push(@{$self->{Ycut}},$len);
    }
}
sub blocks {
    my @cut = @_;
    @cut = sort {$a <=> $b} @cut;
    my $start = 0;
    my @ret;
    for (@cut){
        push(@ret,$_ - $start);
        $start = $_;
    }
    return @ret;
}
sub Xblocks {
    my $self = shift;
    blocks(@{$self->{Xcut}},$self->{X});
}
sub Yblocks {
    my $self = shift;
    blocks(@{$self->{Ycut}},$self->{Y});
}

package main;

my ($x,$y,$z);
{
    my $line = <DATA>;
    chomp $line;
    ($x, $y, $z) = split(/\s/,$line);
}
my $pkg = Cake->new($x, $y, $z);
while (<DATA>){
    chomp;
    my ($hoko, $cm) = split(/\s/);
    $pkg->cut($hoko,$cm);
}
my @blocks;
{
    my @xblocks = $pkg->Xblocks();
    my @yblocks = $pkg->Yblocks();
    for (@yblocks){
        my $yb = $_;
        for (@xblocks){
            my $xb = $_;
            push (@blocks, $xb * $yb * $z);
        }
    }
    @blocks = sort {$a <=> $b} @blocks;
}
say $blocks[0];

__DATA__
20 40 10 5
1 34
1 17
0 7
1 6
0 11
