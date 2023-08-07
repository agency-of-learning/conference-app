class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  def talk 
    self[:params][:talk]
  end 
end
