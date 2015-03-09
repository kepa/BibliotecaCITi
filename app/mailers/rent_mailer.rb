class RentMailer < ActionMailer::Base
  default from: "biblioteca@citi.org.br"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.rent_confirmation.subject
  #
  def rent_confirmation(rent)
    @rent = rent

    mail to: rent.email, subject: "[Biblioteca CITi] Aluguel Confirmado"
  end

  def rent_warning(rent)
    @rent = rent

    mail to: rent.email, subject: "[Biblioteca CITi] Aluguel prestes a terminar"
  end

  def rent_end(rent)
    @rent = rent

    mail to: rent.email, subject: "[Biblioteca CITi] Aluguel termina hoje!"
  end

  def rent_late(rent)
    @rent = rent

    mail to: rent.email, subject: "[Biblioteca CITi] Você possui pendências"
  end

end
