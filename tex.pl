#!/bin/bash/perl

use warnings;

$in = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d";

$out = unpack("B32", pack("N", hex $in));

print $out;
