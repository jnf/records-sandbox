class Artist < ActiveRecord::Base
  validates :name, presence: true
  has_many :albums

  def display_name
    return "" if name.nil?
    # converts 'The Clash' to 'Clash, The'
    return name unless name[0,4] == 'The '

    name.gsub(/^The\s+/, '') + ', The'
  end
end
