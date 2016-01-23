class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { large: "", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
	  :storage => :s3,
  
  	:bucket => "muskytusk",
  	:s3_credentials => {
    :access_key_id => "AKIAI4USINTRBAZS47YQ",
    :secret_access_key => "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"
  }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/



end
	