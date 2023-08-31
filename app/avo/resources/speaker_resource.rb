class SpeakerResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # Fields generated from the model
  field :name, as: :text
  field :title, as: :text
  field :bio, as: :textarea
  field :image_filename, as: :text
  field :github, as: :text
  field :linkedin, as: :text
  field :twitter, as: :text
  field :speakers_talks, as: :has_many
  field :talks, as: :has_many, through: :speakers_talks
  # add fields here
end
