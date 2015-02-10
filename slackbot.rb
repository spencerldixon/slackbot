require 'sinatra'
require "rubygems"
require "arduino_firmata"
require 'bundler/setup'

require_relative 'features/speech'
require_relative 'features/emotion'
require_relative 'features/slack'
require_relative 'features/random'

class Slackbot < Sinatra::Application
  # Connect to arduino
  arduino = ArduinoFirmata.connect

  # Display debugging information
  get '/debug' do
    Speech.say "Debug mode"
    "Firmata Version: #{arduino.version}"
  end

  # Root
  get '/' do
    'Hello, I am Slackbot!'
  end

  # React to incoming webhooks for Github pull requests
  post '/pull-requests' do
  end

  # React to incoming webhooks for Slack text-to-speech
  post '/text-to-speech' do
    Speech.say "Hello world"
    status 200
  end
end