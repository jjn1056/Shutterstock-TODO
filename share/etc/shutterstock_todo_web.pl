{

  name => 'Shutterstock::TODO::Web',
  default_view => 'HTML',
  disable_component_resolution_regex_fallback => 1,

  'Plugin::EnableMiddleware' => [
    'Debug',
    'Debug::DBIC::QueryLog', {querylog_args => {passthrough=>1}},
  ],
  'Controller::Root' => {
    namespace => '',
  },
  'Model::Schema' => {
    traits => ['FromMigration','QueryLog::AdoptPlack'],
    schema_class => 'Shutterstock::TODO::Schema',
  },
  'View::HTML' => {
    INCLUDE_PATH => [ '__path_to(share,html)__' ],
    TEMPLATE_EXTENSION => '.tt',
    WRAPPER => 'page.tt',
  },

};

