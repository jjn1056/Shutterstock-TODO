package Shutterstock::TODO::Web::Controller::Job;

use Moose;
use MooseX::MethodAttributes;
use Shutterstock::TODO::Web::EditJobs;

extends 'Catalyst::Controller';

sub start : Chained('/start')
  PathPart('') CaptureArgs(0) { }

  sub edit : Chained('start')
    ActionClass('REST') Args(1)
  {
    my ($self, $ctx, $id) = @_;
    my $item = $ctx->model->find($id) || $ctx->go('error/not_found');
    $ctx->stash(
      form => Shutterstock::TODO::Web::EditJobs->new(item => $item));
  }

    sub edit_GET { }
    sub edit_POST {
      my ($self, $ctx) = @_;
      $ctx->stash->{form}->add_if_valid(
        $ctx->req->body_parameters)
          and $ctx->go('/posted');
    }

__PACKAGE__->meta->make_immutable;

