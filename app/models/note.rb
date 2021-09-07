class Note < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :date, presence: true
  validates :instructor, presence: true
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 500 }
  acts_as_taggable
  
  def previous
    Note.where(["id < ?", id]).last
  end
  
  def next
    Note.where(["id > ?", id]).first
  end
end