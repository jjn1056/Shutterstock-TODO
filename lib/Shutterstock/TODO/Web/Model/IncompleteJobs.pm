package Shutterstock::TODO::Web::Model::IncompleteJobs;

use Moose;
extends 'Catalyst::Model';

has class => (is=>'ro', required=>1, default=>'Person');

sub ACCEPT_CONTEXT {
  my ($self, $ctx, @args) = @_;
  my $id = '__'. ref $self;
  return $ctx->stash->{$id} ||=
    $self->_get_incomplete_jobs($ctx);
}    

sub _get_current_person {
  my ($self, $ctx) = @_;
  return $ctx->model('Schema')
    ->resultset($self->class)
    ->from_email('jnapiorkowski@shutterstock.com');
}

sub _get_incomplete_jobs {
  my ($self, $ctx) = @_;
  return $self->_get_current_person($ctx)
    ->my_incomplete_jobs;
}
 
 


__PACKAGE__->meta->make_immutable;
