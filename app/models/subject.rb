class Subject < ApplicationRecord

  has_many :pages

  scope :visible, -> { where(:visible => true) }
  scope :invisible, -> { where(:visible => false) }
  scope :sorted, -> { order("position ASC") }
  scope :newest, -> { order("created_at DESC") }

  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }

end
