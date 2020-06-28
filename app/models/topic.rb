class Topic < ApplicationRecord
  belongs_to :subject

  def options_to_json
    options.split(';').map
  end
end
