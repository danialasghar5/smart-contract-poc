class WelcomeController < ApplicationController
    def index
        @lets_talk_submission = LetsTalkSubmission.new
    end
end