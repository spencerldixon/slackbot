require 'sinatra'
require "rubygems"
require "arduino_firmata"

require_relative 'features/speech'
require_relative 'features/emotion'
require_relative 'features/slack'
require_relative 'features/random'

class Slackbot < Sinatra::Base
  # Connect to arduino
  #arduino = ArduinoFirmata.connect

  # Display debugging information and flash pin 13 led on and off
  get '/debug' do
    50.times do
      #arduino.digital_write 13, true
      sleep 0.5
      #arduino.digital_write 13, false
      sleep 0.5
    end

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
  end
end