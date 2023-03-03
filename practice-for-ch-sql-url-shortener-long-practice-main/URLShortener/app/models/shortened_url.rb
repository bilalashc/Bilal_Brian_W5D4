require 'SecureRandom'

class ShortenedUrl < ApplicationRecord
    validates :short_url, uniqueness: true, presence: true
    validates :long_url, presence: true
    validates :user_id, presence: true

    def self.random_code
        SecureRandom.urlsafe_base64
    end
end