class Post < ActiveRecord::Base
  # validates :typea, :typeb, :presence => true

  scope :recent, lambda {
    order('created_at DESC')
  }

  # def to_param
  #   "#{typea-parameterize}-#{typeb.parameterize}"
  # end
end
