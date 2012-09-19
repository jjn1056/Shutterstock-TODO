package Shutterstock::TODO::Web;

use Moose;
use Catalyst qw/
  ConfigLoader
  EnableMiddleware
/;

extends 'Catalyst';

__PACKAGE__->config(
  'Plugin::ConfigLoader' => {
    file => __PACKAGE__->path_to('share', 'etc')});

__PACKAGE__->setup;
__PACKAGE__->meta->make_immutable;


