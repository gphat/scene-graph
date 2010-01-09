use Test::More;
use strict;

use Scene::Graph::Node;

my $root = Scene::Graph::Node->new(id => 'grandma');
my $trans = Scene::Graph::Node->new(id => 'mom');
$root->add_child($trans);

my $child = Scene::Graph::Node->new(id => 'daughter');
$trans->add_child($child);

my $child2 = Scene::Graph::Node->new(id => 'son');
$trans->add_child($child2);

my $child3 = Scene::Graph::Node->new(id => 'grandson');
$child2->add_child($child3);

my $nodes = $root->find(sub { my $node = shift; $node->id eq 'son' });

cmp_ok(scalar(@{ $nodes }), '==', 1, 'found son node');
cmp_ok($nodes->[0]->id, 'eq', 'son', 'checked id');

my $morenodes = $root->find(sub { my $node = shift; $node->id =~ /son/ });
cmp_ok(scalar(@{ $morenodes }), '==', 2, 'found two son nodes');
cmp_ok($morenodes->[0]->id, 'eq', 'son', 'checked son id');
cmp_ok($morenodes->[1]->id, 'eq', 'grandson', 'checked grandson id');

done_testing;