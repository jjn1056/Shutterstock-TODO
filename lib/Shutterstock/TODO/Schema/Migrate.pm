package Shutterstock::Exchange::TODO::Migrate;

use Moose;
 
extends 'DBIx::Class::Migration::Script';
 
sub defaults {
  schema_class => 'Shutterstock::TODO::Schema',
}

__PACKAGE__->meta->make_immutable;
__PACKAGE__->run_if_script;

=head1 NAME

Shutterstock::TODO::Schema::Migrate - 

=head1 SYNOPSIS

    TBD
    	
=head1 DESCRIPTION

    TBD

=head1 AUTHOR

See L<Shutterstock::TODO> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<Shutterstock::TODO> for rights information.

=cut

