use DBIx::Class::Migration::RunScript;
 
migrate {
  shift->schema
    ->resultset('Person')
    ->create({
      email=>'jnapiorkowski@shutterstock.com',
      todo_list_items => [
        { description=>"Buy Milk"},
        {description=>"Buy Beer"},
      ]});
};

