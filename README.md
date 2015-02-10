# Slackbot

Slackbot is an arduino/raspberry pi based robot that sits on our desks, interfaces with Slack and Github and keeps us entertained. It occasionally attempts to kill all humans too.

## Hardware

- DFRobots base, motors and wheels
- Arduino Duemilanove clone flashed with Firmata
- Raspberry Pi
- A speaker
- A touchscreen shield for the Raspberry Pi
- A wifi dongle
- A USB juice pack for power

## Software

- Firmata runs on the arduino
- A sinatra app runs on the raspberry pi taking in webhooks from Github, Slack and other services
- The sinatra app communicates with the arduino using the `arduino_firmata` library for ruby

## Features

- Announces pull requests closed with a fanfare and posts “Great job name!” on Slack

## Feature wishlist...

- Text to speech slash command through Slack
- Relays all giphy commands to it’s screen
- Uses giphy to generate emotions/faces based on text to speech
- RGB Led Beacon
- Announces when build breaks and who broke it
- World domination engine

## Contributing

1. Fork it ( https://github.com/spencerldixon/slackbot/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request with nice documentation of your changes
