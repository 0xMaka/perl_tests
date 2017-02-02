#!/usr//bin/perl

use strict;
use warnings;

use Path::Class;
use autodie; 				# die if problem reading or 
					# writing a file
my $dir = dir ("/tmp"); 		# /tmp

my $file = $dir -> file ("file.txt"); 	# /tmp file.txt

# Read in the contents of a file
my $content = $file -> slurp();

# openr() returns an object to read from
my $file_handle = $file -> openr();

# Add the line to the file
while ( my $line = $file_handle -> getline () ) {
  print $line;
}

