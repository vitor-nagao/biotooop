class EventMailer < ApplicationMailer
  default from: 'Biotooop <events@biotooop.com>'

  def logger
    Rails.logger
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.send.subject
  #
  def sender(user, event)

    @user = user
    @event = event
    mail to: @user.email, subject: 'ビオトープイベント開催のお知らせ'

    # mail to: "to@example.org"
  end

  def send_cancel_message(user, event)
    logger.info user
    logger.info event

    @user = user
    @event = event
    mail to: @user.email, subject: '本日のビオトープイベント辞退のお知らせ'
  end
end
