# == Schema Information
#
# Table name: visits
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  shortened_url_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Visit < ApplicationRecord

  def self.record_visit!(user, shortened_url)
    Visit.new(user_id: user.id, shortened_url_id: shortened_url.id)
  end 
  
  belongs_to :short_url,
    primary_key: :id,
    foreign_key: :shortened_url_id,
    class_name: :ShortenedUrl
    
  belongs_to :visitor,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end 
