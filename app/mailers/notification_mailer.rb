class NotificationMailer < ApplicationMailer
    default from: 'no-reply@app.com'

    def comment_added
        mail(to: 'my@email.com',
            subject: "A comment has been added to your place")
    end
end
