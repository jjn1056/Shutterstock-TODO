package Shutterstock::TODO::Web::View::HTML;

use Modern::Perl;
use parent 'Catalyst::View::TT';

sub uri_for_action {
  my ($self, $ctx, @args) = @_;
  $ctx->uri_for_action(@args);
}

__PACKAGE__->config(
  expose_methods => [qw/
    uri_for_action /]);
