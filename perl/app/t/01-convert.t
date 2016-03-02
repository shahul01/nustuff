#!/usr/bin/env perl

use strict;
use warnings;

# Place app's subs in the app:: namespace.
require app;

use Test::More tests => 1;

# Test results of app sub
my $input = 'myvalue';
my $expected_output = qr{ \A myvalue \Z }msx;
like( app::convert( $input ), $expected_output, "Test convert subroutine" );
