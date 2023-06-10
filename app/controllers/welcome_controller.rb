class WelcomeController < ApplicationController
  def index
    @lets_talk_submission = LetsTalkSubmission.new
  end

  def context_story
    render layout: 'context'
  end
end
