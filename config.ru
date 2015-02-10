require 'rubygems'
require 'bundler'
require 'dotenv'

Dotenv.load
Bundler.require

root = ::File.dirname(__FILE__)
require ::File.join( root, 'slackbot' )

run Slackbot
