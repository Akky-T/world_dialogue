class Nationality < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Japan' },
    { id: 3, name: 'USA' },
    { id: 4, name: 'Britain' },
    { id: 5, name: 'Brazil' },
    { id: 6, name: 'South Africa' }
  ]

  include ActiveHash::Associations
  has_many :users
end