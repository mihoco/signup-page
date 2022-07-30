class User < ApplicationRecord
  has_secure_password
  
  validates :firstname, :lastname, presence: true
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
                        uniqueness: { case_sensitive: false },
                        format: { with: VALID_EMAIL_REGEX }
    
  validates :dob, presence: true
  validate :validate_age

  def validate_age
    if dob.present? && dob.to_i > 16.years.ago.to_i
      errors.add(:dob, "You need to be 16 years old or older")
    end
  end
end
