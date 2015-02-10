class Emotion
  # Takes in a filename (string) and displays the image on Slackbots screen for 10 seconds
  # Overridden if a new image is sent before the 10 seconds is up
  def show filename
  end

  # Takes in a string and chances it by getting a random gif from giphy to display on Slackbots screen
  # Conforms to above 10 second rule for normal display
  def giphy text
  end
end