use Test::More skip_all => 'Serialization does not work yet';
use strict;

use Scene::Graph::Node;
use Geometry::Primitive::Point;

my $root = Scene::Graph::Node->new(id => 'grandma');
my $mom = Scene::Graph::Node->new(id => 'mom');
$root->add_child($mom);

my $child = Scene::Graph::Node->new(id => 'daughter');
$mom->add_child($child);

my $child2 = Scene::Graph::Node->new(id => 'son');
$mom->add_child($child2);

my $ser = $root->freeze({ format => 'JSON' });

done_testing;