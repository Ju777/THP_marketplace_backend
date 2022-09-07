class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
		devise :database_authenticatable, :registerable, :recoverable,
		:jwt_authenticatable,
		jwt_revocation_strategy: JwtDenylist
  
	has_many :articles
	has_one_attached :avatar

	has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
	has_many :received_messages, :class_name => "Message", :foreign_key => "recipient_id"
  end
  