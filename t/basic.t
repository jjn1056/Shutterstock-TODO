use Test::Most;
use Test::DBIx::Class
  -schema_class=>'Shutterstock::TODO::Schema',
  qw(Person);

fixtures_ok sub {
  Person->create({
    email=>'jnapiorkowski@shutterstock.com',
    todo_list=> [
      { description=>"Buy Milk"},
      {description=>"Buy Beer"},
    ]});
};

ok my $person = Person->from_email('jnapiorkowski@shutterstock.com'),
  'Found expected person';

ok (my @jobs = $person->my_incomplete_jobs),
  'Found some jobs';

ok my $new = $person->add_a_job('Pay Bills'),
  'Added a new job';

is $new->description, 'Pay Bills',
  'Got expected description';

$new->change_description('Pay Late Bills'),

is $new->description, 'Pay Late Bills',
  'Got expected description';

ok $new->unfinished, 'Job is incomplete';

$new->mark_completed;

ok $new->is_complete, 'Job is completed';

done_testing;
