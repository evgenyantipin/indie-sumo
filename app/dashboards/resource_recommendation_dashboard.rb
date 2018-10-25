require "administrate/base_dashboard"

class ResourceRecommendationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    id: Field::Number,
    recommender_name: Field::String,
    recommender_email: Field::String,
    name: Field::String,
    website: Field::String,
    other_information: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :category,
    :recommender_name,
    :recommender_email,
    :name
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :recommender_name,
    :recommender_email,
    :name,
    :website,
    :other_information,
    :created_at,
    :updated_at,
    :id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :recommender_name,
    :recommender_email,
    :name,
    :website,
    :other_information,
  ].freeze

  # Overwrite this method to customize how resource recommendations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(resource_recommendation)
  #   "ResourceRecommendation ##{resource_recommendation.id}"
  # end
end
