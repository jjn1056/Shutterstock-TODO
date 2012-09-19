{

  'Model::Schema' => {
    traits => ['QueryLog::AdoptPlack'],
    connect_info => {
      user => $ENV{DOTCLOUD_DATA_MYSQL_LOGIN},
      password => $ENV{DOTCLOUD_DATA_MYSQL_PASSWORD},
      dsn => "host=$ENV{DOTCLOUD_DATA_MYSQL_HOST};port=$ENV{DOTCLOUD_DATA_MYSQL_PORT}",
    },
  },
};

