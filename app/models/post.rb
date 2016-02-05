class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	has_attached_file :image, styles: { large: "", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
	:storage => :s3,
  	:bucket => "muskytusk",
  	:region => "us-west-2",
  	:url =>':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename'

  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
	