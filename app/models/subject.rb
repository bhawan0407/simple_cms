class Subject < ApplicationRecord

  scope :visible, -> { where(:visible => true) }
  scope :invisible, -> { where(:visible => false) }
  scope :sorted, -> { order("position ASC") }
  scope :newest, -> { order("created_at DESC") }

end
