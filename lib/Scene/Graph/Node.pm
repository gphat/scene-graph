package Scene::Graph::Node;
use Moose;

extends 'Forest::Tree';

with qw(MooseX::Clone MooseX::Storage::Deferred);

use Forest;
use Geometry::Primitive::Point;

has 'id' => (
    traits => [ 'Clone' ],
    is => 'ro',
    isa => 'Str'
);

has 'is_rotatable' => (
    traits => [ 'Clone' ],
    is => 'ro',
    isa => 'Bool',
    default => 0
);

has 'is_scalable' => (
    traits => [ 'Clone' ],
    is => 'ro',
    isa => 'Bool',
    default => 0
);

has 'is_translatable' => (
    traits => [ 'Clone' ],
    is => 'ro',
    isa => 'Bool',
    default => 0
);

__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Scene::Graph::Node - A Node in a scene

=head1 SYNOPSIS

Perhaps a little code snippet.

    use Scene::Graph;

    my $foo = Scene::Graph->new();
    ...

=head1 ATTRIBUTES

=head2 parent

=head1 METHODS

=head2 add_child

Add a child node to this one.

=head2 child_count

The number of child nodes this node has.

=head2 clear_children

Removes all children of this node.

=head2 clear_parent

Clear this node's parent

=head2 get_child_at ($index)

Return the child at the $index position.

=head2 has_parent

Returns true if this node has a parent.

=head2 insert_child_at ($index, $child)

Add a child node at the specified index.

=head2 is_leaf

Returns true if this node has no children.

=head2 is_root

Returns true if this node is the root node in a Scene::Graph

=head2 remove_child_at ($index)

Remove the child at the $index position.

=head2 siblings

Return an array reference of all siblings of this node (not including this one)

=head1 AUTHOR

Cory G Watson, C<< <gphat at cpan.org> >>

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2010 Cold Hard Code, LLC.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
