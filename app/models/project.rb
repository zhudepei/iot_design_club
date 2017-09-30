class Project < ApplicationRecord
  default_scope { order(:done_date => 'DESC') }
end
