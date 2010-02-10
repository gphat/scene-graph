package Scene::Graph::Types;
use MooseX::Types -declare => [qw(Point)];

use MooseX::Types::Moose qw(ArrayRef);

class_type Point, { class => 'Geometry::Primitive::Point' };

coerce Point,
    from ArrayRef,
    via { Geometry::Primitive::Point->new(x => $_[0]->[0], y => $_[0]->[1]) };

1;