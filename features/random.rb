class Random 
  # Posts a random death threat to human members of the team on Slack
  def self.kill_all_humans
    threats = [
      "Kill all humans!",
      "I just wanted you all to know I'm working on Skynet..."
    ]
    Slack.post(threats.sample)
  end

  # Plays a song from slackbots library and displays a 'party hard' gif from giphy on its screen
  def self.party_mode
  end

  # Gets a random 30 second video from youtube and plays it
  def self.thirty_second_youtube_video
  end
end