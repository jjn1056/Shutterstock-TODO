package Shutterstock::TODO::Web::CreateJobs;

use Moose;
use HTML::FormHandler::Moose;

extends 'HTML::FormHandler';

has_field 'description' => (type => 'TextArea', size => 45, required => 1);
has_field 'submit' => (type => 'Submit', value => 'Go');

sub add_if_valid {
  my ($self, $params) = @_;
  $self->process(params => $params)
}

sub update_model {
  my $item = (my $self = shift)->item;
  $item->fill_fields_from_hashref($self->value);
  $item->update_or_insert;
}

__PACKAGE__->meta->make_immutable;

