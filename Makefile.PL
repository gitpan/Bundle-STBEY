#!perl -w

###############################################################################
##                                                                           ##
##    Copyright (c) 2009 by Steffen Beyer.                                   ##
##    All rights reserved.                                                   ##
##                                                                           ##
##    This package is free software; you can redistribute it                 ##
##    and/or modify it under the same terms as Perl itself.                  ##
##                                                                           ##
###############################################################################

use strict;

use ExtUtils::MakeMaker;

use Config;

WriteMakefile(
    'NAME'              => 'Bundle::STBEY',
    'VERSION_FROM'      => 'STBEY.pm',
    'PREREQ_PM'         =>
                              {
                                  'Carp::Clan'       => 5.3,
                                  'Bit::Vector'      => 7.1,
                                  'Date::Calc'       => 6.0,
                                  'Date::Calc::Util' => 1.0,
                                  'Date::Pcalc'      => 6.0,
                                  'Data::Locations'  => 5.4,
                                  'Math::MatrixBool' => 5.8,
                                  'Set::IntRange'    => 5.2
                              },
#   ($] >= 5.005 ?
#       ('ABSTRACT'     => 'Bundle of my most popular modules',
#        'AUTHOR'       => 'Steffen Beyer <STBEY@cpan.org>') : ()),
#   ($] >= 5.005 && $^O eq 'MSWin32' && $Config{archname} =~ /-object\b/i ?
#       ('CAPI'         => 'TRUE') : ()),
    'dist'              => { COMPRESS => "gzip -9", SUFFIX => "gz" }
);

__END__

