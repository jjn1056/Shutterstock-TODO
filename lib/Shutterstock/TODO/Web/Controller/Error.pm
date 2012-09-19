package Shutterstock::TODO::Web::Controller::Error;

use Moose;
use MooseX::MethodAttributes;

extends 'Catalyst::Controller';

sub not_found :Private {
  my ($self, $ctx) = @_;
  $ctx->stash(missing => scalar($ctx->request->uri));
  $ctx->response->status(404);
}

sub unauthorized :Private {
  my ($self, $ctx) = @_;
  $ctx->stash(blocked => scalar($ctx->request->uri));
  $ctx->response->status(401);
}

sub internal_error :Private {
  my ($self, $ctx) = @_;
  $ctx->response->status(500);
}

__PACKAGE__->meta->make_immutable;

