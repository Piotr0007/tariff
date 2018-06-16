class User < ApplicationRecord

  
  before_save :downcase_email
  before_create :create_activation_digest
  validates :name, presence: true, length: { maximum: 15}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_secure_password
  #validates :password, presence: true, length: { minimum: 8 }, allow_nil: true
   validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
  validates :password, :confirmation => true,
                       :length => {:within => 6..40},
                       :allow_blank => true,
                       :on => :update
  validates  :phone, presence: true, length: { minimum:9 }

 

 has_many :courses



	
end
