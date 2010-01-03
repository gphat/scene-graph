use inc::Module::Install;

name     'Scene-Graph';
all_from 'lib/Scene/Graph.pm';
author   q{Cory G Watson <gphat@cpan.org>};
license  'perl';

build_requires 'Test::More';

use 'Geometry::Primitive';
use 'Forest';
use 'Moose';
use 'MooseX::Clone';
use 'MooseX::Storage';

WriteAll;

