use Test::Most;
use Test::DBIx::Class
  -schema_class=>'Shutterstock::TODO::Schema',
  qw(Person TodoList);

done_testing;
