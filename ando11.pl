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
for(my $i=0;$i+1 <= @block+0;$i++){
    if (index($block[$i],$pattern[0]) > -1){
        my $offset = index($block[$i],$pattern[0]);
        if (match({ 'line' => $i, 'offset' => $offset })){
            say "$i $offset";
        }
    }
}
sub match{
    my $c = shift;
    my $start = $c->{'line'} + 1;
    my $offset = $c->{'offset'};
    my $end = $start + @pattern - 2;
    if ($end > $#block){
        return 0;
    }
    my $length = length($pattern[0]);
    for ($start..$end){
        my $cmp_block   = substr($block[$_],$offset,$length);
        my $cmp_pattern = $pattern[$_ - $start + 1];
        if ($cmp_block ne $cmp_pattern){
            return 0;
        }
    }
    return 1;
}
