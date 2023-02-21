class LetsTalkSubmissionsController < ApplicationController

  # POST /lets_talk_submissions or /lets_talk_submissions.json
  def create
    @lets_talk_submission = LetsTalkSubmission.new(lets_talk_submission_params)

    respond_to do |format|
      if @lets_talk_submission.save
        
        LetsTalkMailer.lets_talk_email(@lets_talk_submission.fullname, @lets_talk_submission.email, @lets_talk_submission.how_can_i_help).deliver

        format.turbo_stream { render turbo_stream: turbo_stream.replace(
          "lets_talk_form_holder",
          partial: 'on_its_way'
        )}
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(
          "lets_talk_form_error_messages_holder",
          partial: 'lets_talk_error_messages'
        )}
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def lets_talk_submission_params
      params.require(:lets_talk_submission).permit(:fullname, :email, :how_can_i_help)
    end
end
