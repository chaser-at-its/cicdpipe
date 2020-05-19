class StaffMember < ApplicationRecord
  def password=(raw_password)
    if raw_password.is_a?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif
      self.hashed_password = nil
    end
  end

  def active?
    !suspended? && start_date <= Time.zone.today &&
      (end_date.nil? || end_date > Time.zone.today)
  end
end
