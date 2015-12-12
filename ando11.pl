#!/usr/bin/perl
use strict;
use warnings;
use feature qw(say);

# 入力
my (@block,@pattern);
{
    my $block_line = <STDIN>;
    for (1..$block_line){
        my $line = <STDIN>;
        chomp $line;
        $line =~ s/ //g;
        push(@block,$line);
    }
}
{
    my $pattern_line = <STDIN>;
    for (1..$pattern_line){
        my $line = <STDIN>;
        chomp $line;
        $line =~ s/ //g;
        push(@pattern, $line);
    }
}
# パターン探索
my ($y,$x) = (0,0);
for(my $i=0;$i+1 <= @block+0;$i++){
    if (index($block[$i],$pattern[0]) > -1){
        $y = $i;
        $x = index($block[$i],$pattern[0]);
        $i++;
        for (my $j=1;$i+1 <= @block+0 and $j+1 <= @pattern+0;$j++){
            my $diff = substr($block[$i],$x,length($pattern[$j]));
            if ($diff ne $pattern[$j]){
                last;
            }
            $i++;
        }
    }
}
say "$y $x";