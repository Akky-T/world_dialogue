class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Man' },
    { id: 3, name: 'Woman' }
  ]

  include ActiveHash::Associations
  has_many :users
end