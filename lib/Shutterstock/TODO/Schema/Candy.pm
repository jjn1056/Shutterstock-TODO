package Shutterstock::TODO::Schema::Candy;

use Modern::Perl;
use parent 'DBIx::Class::Candy';

sub base { $_[1] || 'Shutterstock::TODO::Schema::Result' }

1;

=head1 NAME

Shutterstock::TODO::Schema::Candy - My Candy Class

=head1 SYNOPSIS

	package Shutterstock::TODO::Schema::Result::User;
    use Shutterstock::TODO::Schema::Candy;

=head1 DESCRIPTION

Our custom subclass of L<DBIx::Class::Candy>

=head1 METHODS

This module defines the following methods.

=head2 base

Sets the base class for all Results

=head1 AUTHOR

See L<Shutterstock::TODO> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<Shutterstock::TODO> for rights information.

=cut



