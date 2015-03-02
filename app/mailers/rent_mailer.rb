class RentMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.rent_confirmation.subject
  #
  def rent_confirmation(rent)
    @rent = rent

    mail to: rent.email, subject: "[BIBLIOTECA CITi] Aluguel Confirmado"
  end

  def rent_warning(rent)
    @rent = rent

    mail to: rent.email, subject: "[BIBLIOTECA CITi] Aluguel prestes a terminar"
  end

  def rent_late(rent)
    @rent = rent

    mail to: rent.email, subject: "[BIBLIOTECA CITi] Aluguel termina hoje!"
  end
end
