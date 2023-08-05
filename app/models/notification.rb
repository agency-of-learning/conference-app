class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  def talk_title
    if self[:params][:talk]
      self[:params][:talk][:title]
    end 
  end 

  def talk_start_time 
     if self[:params][:talk]
      self[:params][:talk][:start_time].strftime("%I:%M %p, %a %d, %b %Y")
     end 
  end 

  def talk 
    if self[:params][:talk]
      self[:params][:talk]
    end 
  end 
end
