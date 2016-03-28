#! /usr/bin/perl

use strict;
use warnings;
use Encode;

my $filename = "Yourname.txt";

open(my $Fh, '>', $filename) or die "Could not open file '$filename' $!";

print "Please Input Your Name: ";
my $Name = <STDIN>;
print "Please Input Your Address: ";
my $Address = <STDIN>;
print $Fh "Your name: $Name";
print $Fh "Address: $Address";
close $Fh;
