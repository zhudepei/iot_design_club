class News < ApplicationRecord
  default_scope { order(:created_at => 'DESC') }

  def previous
    News.where("id < ?", self.id).order(:id).first
  end

  def next
    News.where("id > ?", self.id).order(:id).first
  end

end
