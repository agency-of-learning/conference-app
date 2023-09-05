class Comments::PostToSlackJob < ApplicationJob
  queue_as :default

  def perform(comment)
    HTTParty.post(endpoint, body: body, headers: headers)
  end

  def endpoint
    "https://yov8r.hatchboxapp.com/webhooks/incoming/rails_world_feedback_webhooks"
  end

  def body
    { comment: comment }.to_json
  end

  def headers
    { "Content-Type" => "application/json" }
  end
end
