package Shutterstock::TODO::Web::Controller::Root;

use Moose;
use MooseX::MethodAttributes;
use Shutterstock::TODO::Web::CreateJobs;

extends 'Catalyst::Controller';

sub start : Chained('/')
  PathPrefix CaptureArgs(0)
{
  pop->stash(current_model => 'IncompleteJobs');
}

  sub incomplete_jobs : Chained('start')
    PathPart('') Args(0)
  {
    my ($self, $ctx) = @_;
    $ctx->stash(incomplete_jobs =>
      $ctx->model->as_arrayref);
  }

  sub create : Chained('start')
    ActionClass('REST') Args(0)
  {
    my ($self, $ctx) = @_;
    my $item = $ctx->model->new_result({});
    $ctx->stash(
      form => Shutterstock::TODO::Web::CreateJobs->new(item => $item));
  }

    sub create_GET { }
    sub create_POST {
      my ($self, $ctx) = @_;
      $ctx->stash->{form}->add_if_valid(
        $ctx->req->body_parameters)
          and $ctx->go('posted');
    }

  sub posted : Action {
    my ($self, $ctx) = @_;
    $ctx->response->redirect(
      $ctx->uri_for_action('incomplete_jobs'));
  }

sub end : ActionClass('RenderView') { }

__PACKAGE__->meta->make_immutable;

