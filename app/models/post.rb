class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history, :finders]
  belongs_to :author
  belongs_to :category
  has_many :elements

  has_one_attached :header_image

  validates_presence_of :title, :description
  validates_length_of :description, within: 50..250
  
  def should_generate_new_friendly_id?
    title_changed?
  end
  

  scope :published, -> do
    where(published: true)
  end

  scope :most_recently_published,  -> do
    order(published_at: :desc)
  end


end
