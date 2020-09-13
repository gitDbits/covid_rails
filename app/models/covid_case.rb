class CovidCase < ApplicationRecord
  belongs_to :state, dependent: :destroy
end
