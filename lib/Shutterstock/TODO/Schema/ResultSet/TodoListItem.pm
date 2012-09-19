package Shutterstock::TODO::Schema::ResultSet::TodoListItem;

use Modern::Perl;
use parent 'Shutterstock::TODO::Schema::ResultSet';

sub incomplete {
  shift->search({completed=>0});
}

1;
