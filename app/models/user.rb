class User < ApplicationRecord

   has_many :courses


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
  
#validates :phone,   :presence => {:message => 'hi, bad operation!'},
#                    :numericality => true,
#                   :length => { :minimum => 9, :maximum => 15 }
#
#                    number_regex = /\d[0-9]\)*\z/
#validates :phone,:presence => true,
#                 :numericality => true,
#                 :length => { :minimum => 9, :maximum => 15 }

  VALID_PHONE_REGEX = /\d[0-9]\)*\z/
  validates :phone, presence: true, length: { :minimum => 9, :maximum => 15}, format:{with: VALID_PHONE_REGEX}, 
             uniqueness: false
          
          




 




	
end
