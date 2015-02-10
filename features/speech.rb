require 'tts'

class Speech
  # Takes in a string and uses TTS to play it through Slackbot's speaker
  def self.say text
    text.play
  end

  # Takes an audio file stored in the memories directory and plays it through Slackbot's speaker
  def self.sing sound
  end
end