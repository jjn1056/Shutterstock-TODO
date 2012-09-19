package Shutterstock::TODO::Schema::Result::Person;

use Shutterstock::TODO::Schema::Candy;

table 'person';

primary_column person_id => {
  data_type => "integer",
  is_auto_increment => 1};

unique_column email => {
  data_type => 'varchar',
  size => '96'};

has_many todo_list => (
  '::TodoListItem', 'person_id');

sub my_incomplete_jobs {
  my $set = shift->todo_list
    ->incomplete;
  return wantarray ? $set->all : $set;
}

sub add_a_job {
  my ($self, $description) = @_;
  $self->add_to_todo_list({description=>$description});
}

1;

=head1 NAME

Shutterstock::TODO::Schema::Result::Person

=head1 DESCRIPTION

    TBD

=head1 METHODS

    TBD

=head1 AUTHOR

See L<Shutterstock::TODO> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<Shutterstock::TODO> for rights information.

=cut

