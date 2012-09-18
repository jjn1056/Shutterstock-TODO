package Shutterstock::TODO::Schema::Result::TodoListItem;

use Shutterstock::TODO::Schema::Candy;

table 'todo_list_item';

primary_column todo_list_item_id => {
  data_type => "integer",
  is_auto_increment => 1};

column person_id => {
  data_type => "integer",
  is_foreign_key => 1};

column description => {
  data_type => 'text'};

column completed => {
  data_type => 'boolean',
  default_value => '0'};

belongs_to person => (
  '::Person', 'person_id');

1;

=head1 NAME

Shutterstock::TODO::Schema::Result::TodoListItem

=head1 DESCRIPTION

    TBD

=head1 METHODS

    TBD

=head1 AUTHOR

See L<Shutterstock::TODO> for authorship information.

=head1 COPYRIGHT & LICENSE

See L<Shutterstock::TODO> for rights information.

=cut


