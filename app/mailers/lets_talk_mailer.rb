class LetsTalkMailer < ApplicationMailer
    default from: "admin@mycompany.com"

    def lets_talk_email(fullname, email, how_can_i_help)
        @fullname = fullname
        @email = email
        @how_can_i_help = how_can_i_help
        mail(to: 'Help! <help@mycompany.com>', fullname: @fullname, email: @email, how_can_i_help: @how_can_i_help, subject: "#{@fullname} needs help!")
    end    
end
