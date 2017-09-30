class Project < ApplicationRecord
  validates :done_date, presence: true

  default_scope { order(:done_date => 'DESC') }
end
