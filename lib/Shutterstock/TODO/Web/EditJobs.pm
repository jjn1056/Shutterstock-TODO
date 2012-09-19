package Shutterstock::TODO::Web::EditJobs;

use Moose;
use HTML::FormHandler::Moose;

extends 'Shutterstock::TODO::Web::CreateJobs';

has_field 'completed' => (type => 'Checkbox');

__PACKAGE__->meta->make_immutable;

