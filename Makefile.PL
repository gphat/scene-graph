use inc::Module::Install;

name     'Scene-Graph';
all_from 'lib/Scene/Graph.pm';
author   q{Cory G Watson <gphat@cpan.org>};
license  'perl';

build_requires 'Test::More';

requires 'Geometry::Primitive';
requires 'Moose';
requires 'MooseX::Clone';
requires 'MooseX::Storage';
requires 'MooseX::Types';
requires 'Geometry::AffineTransform';

test_requires 'JSON::Any';

repository 'http://github.com/gphat/scene-graph';

WriteAll;

