#!/usr/bin/env plackup

use Modern::Perl;
use Shutterstock::TODO::Web;

Shutterstock::TODO::Web->psgi_app;

