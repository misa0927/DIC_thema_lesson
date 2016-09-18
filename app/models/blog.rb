class Blog < ActiveRecord::Base
  validates :title, presence: true, length: { :maximun 140 }
end
