class WelcomeController < ApplicationController
  def index
    @lets_talk_submission = LetsTalkSubmission.new
  end

  def context_story
    @download_url = 'https://drive.google.com/file/d/1ickcLsQT21PqCmONPnp6gsfGQXQc9NGr/view'
    render layout: 'context'
  end
end
