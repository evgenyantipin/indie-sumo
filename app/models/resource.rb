class Resource < ApplicationRecord
  include Sluggable

  has_and_belongs_to_many :categories
  has_many :lists, dependent: :destroy
  has_many :information_recommendations, dependent: :destroy
  has_many :creators, dependent: :destroy
  has_one_attached :icon
  has_many :comments

  validates_presence_of :title
end