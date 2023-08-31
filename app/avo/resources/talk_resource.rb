class TalkResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :title, as: :text
  field :description, as: :textarea
  field :start_time, as: :date_time
  field :location, as: :text
  field :talk_format, as: :select, enum: ::Talk.talk_formats
  field :duration, as: :number
  field :speakers_talks, as: :has_many
  field :speakers, as: :has_many, through: :speakers_talks
  field :talks_users, as: :has_many
  field :users, as: :has_many, through: :talks_users
  field :tags_talks, as: :has_many
  # add fields here
end
