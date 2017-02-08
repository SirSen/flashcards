class Card < ApplicationRecord
    def up
        create_table :card do |t|
            t.text 'original'
            t.text 'translated'
            t.date 'review'
        end
    end
end
