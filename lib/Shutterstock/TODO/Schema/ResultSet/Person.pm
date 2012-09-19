package Shutterstock::TODO::Schema::ResultSet::Person;

use Modern::Perl;
use parent 'Shutterstock::TODO::Schema::ResultSet';

sub from_email {
  my ($self, $email) = @_;
  return  $self->find({email=>$email});
}

1;
