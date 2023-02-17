class Event < ApplicationRecord
    has_many :taggables, dependent: :destroy
    has_many :tags, through: :taggables
    has_many :participants

    validates :description, presence: true
    enum status: { pending: 'pending', progress: 'progress', finished: 'finished', canceled: 'canceled'}
    
    validates :status,
    inclusion: { in: %w[pending progress canceled] },
    if: -> { status_changed? && status_was == 'pending'}

    validates :status,
    inclusion: { in: %w[finished] },
    if: -> { status_changed? && status_was == 'finished'}
end

