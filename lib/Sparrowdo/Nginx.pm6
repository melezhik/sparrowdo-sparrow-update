use v6;

unit module Sparrowdo::Nginx;

use Sparrowdo;

sub tasks (%args) {

  task_run  %(
    task => 'install nginx',
    plugin => 'package-generic',
    parameters => %( list => 'nginx' )
  );

  task_run  %(
    task => 'enable nginx',
    plugin => 'service',
    parameters => %( service => 'nginx', action => 'enable' )
  );

  task_run  %(
    task => 'start nginx',
    plugin => 'service',
    parameters => %( service => 'nginx', action => 'start' )
  );


}

