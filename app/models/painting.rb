class Painting < ActiveRecord::Base
  belongs_to :artist
  belongs_to :museum

  def self.search(query)
    where('title LIKE :query', query: "%#{query}%")
  end
end
