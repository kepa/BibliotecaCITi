require 'test_helper'

class RentMailerTest < ActionMailer::TestCase
  test "rent_confirmation" do
    mail = RentMailer.rent_confirmation
    assert_equal "Rent confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "rent_warning" do
    mail = RentMailer.rent_warning
    assert_equal "Rent warning", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "rent_late" do
    mail = RentMailer.rent_late
    assert_equal "Rent late", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
