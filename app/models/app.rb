class App < ActiveRecord::Base
  has_many :comments
  has_many :votes, :as => :votable
end
