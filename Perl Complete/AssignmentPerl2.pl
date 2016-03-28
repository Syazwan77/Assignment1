#! /usr/bin/perl

use strict;
use warnings;
use Encode;

my $txtfile = "Yourname.txt";
my $binfile = "Yourname.bin";
my $line;

open(FHtxt, '<', $txtfile) or die "Unable to open: $!";
open(my $FHbin, '>:raw:utf8', $binfile) or die "Unable to open: $!";

foreach $line (<FHtxt>) {
  print $FHbin $line;
}

close($FHbin);
close(FHtxt);
