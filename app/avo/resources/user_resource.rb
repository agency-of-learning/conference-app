class UserResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :email, as: :text
  field :role, as: :select, enum: ::User.roles
  field :receive_app_notifications, as: :boolean
  field :receive_email_notifications, as: :boolean
  field :profile_photo, as: :file
  field :qrcode, as: :file
  field :notifications, as: :has_many
  field :talks_users, as: :has_many
  field :talks, as: :has_many, through: :talks_users
  # add fields here
end
