# Preview all emails at http://localhost:3000/rails/mailers/rent_mailer
class RentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rent_mailer/rent_confirmation
  def rent_confirmation
    RentMailer.rent_confirmation
  end

  # Preview this email at http://localhost:3000/rails/mailers/rent_mailer/rent_warning
  def rent_warning
    RentMailer.rent_warning
  end

  # Preview this email at http://localhost:3000/rails/mailers/rent_mailer/rent_late
  def rent_late
    RentMailer.rent_late
  end

end
