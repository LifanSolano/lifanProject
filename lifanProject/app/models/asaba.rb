class Asaba < ApplicationRecord
    has_many :parties
    has_many :countries
    has_many :cities
end