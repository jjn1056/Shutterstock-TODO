package Shutterstock::TODO::Schema::Result;

use Modern::Perl; 
use parent 'DBIx::Class::Core';

__PACKAGE__->load_components(qw/
  Helper::Row::NumifyGet
  Helper::Row::OnColumnChange
  Helper::Row::StorageValues
  Helper::Row::RelationshipDWIM
  Helper::Row::OnColumnChange
  Helper::Row::ProxyResultSetMethod
  Helper::Row::SelfResultSet
  InflateColumn::DateTime /);

sub default_result_namespace { 'Shutterstock::TODO::Schema::Result' }

sub fill_fields_from_hashref {
  my ($self, $values) = @_;
  foreach my $field (keys %$values) {
    $self->$field($values->{$field});
  }
}

1;

=head1 NAME

Shutterstock::TODO::Schema::Result - The base result class

=head1 SYNOPSIS

	package Shutterstock::TODO::Schema::Result::Person;
    use parent 'Shutterstock::TODO::Schema::Result';
	
=head1 DESCRIPTION

All Result classes will inherit from this.  This provides some base functions,
primarily from included components.  Please see the documentation for the
following components: L<DBIx::Class::Helpers>, L<DBIx::Class::DynamicDefault>,
L<DBIx::Class::Timestamp>, L<DBIx::Class::InflateColumn::DateTime>.

=head1 ATTRIBUTES

This class defines the following attributes.

=head1 METHODS

This module defines the following methods.

=head2 default_result_namespace

Required by L<DBIx::Class::Helper::Row::RelationshipDWIM> to set the namespace
that gets prepended in relationships class names.

=head1 AUTHOR

See L<Shutterstock::TODO> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<Shutterstock::TODO> for rights information.

=cut


