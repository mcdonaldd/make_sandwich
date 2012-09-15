class Order < ActiveRecord::Base
  attr_accessible :sandwich, :user
  belongs_to :user
end
