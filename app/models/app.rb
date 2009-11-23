class App < ActiveRecord::Base
  has_many :votes, :as => :votable
end
