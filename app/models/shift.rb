class Shift < ApplicationRecord
    belongs_to :user, touch: true
end
