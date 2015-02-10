require 'httparty'

class Slack
  # Takes in a string and posts it to the #general board on slack as Slackbot
  def self.post text
    url = "https://wcmc.slack.com/services/hooks/slackbot?token=#{ENV['SLACK_TOKEN']}&channel=%23general"

    body = {
      "text" => text
    }.to_json

    HTTParty.post(url, { body: body })
  end
end