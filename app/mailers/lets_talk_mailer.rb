class LetsTalkMailer < ApplicationMailer
    default from: "admin@sidecarsoftwareservices.com"

    def lets_talk_email(fullname, email, how_can_i_help)
        @fullname = fullname
        @email = email
        @how_can_i_help = how_can_i_help
        mail(to: 'Help me Sidecar! <help@sidecarsoftwareservices.com>', fullname: @fullname, email: @email, how_can_i_help: @how_can_i_help, subject: "#{@fullname} wants to talk Sidecar!")
    end    
end
