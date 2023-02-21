class LetsTalkSubmission < ApplicationRecord
    validates :fullname, :email, :how_can_i_help, presence: true
end
