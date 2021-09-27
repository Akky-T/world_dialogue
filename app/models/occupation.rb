class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Student' },
    { id: 3, name: 'Office worker' },
    { id: 4, name: 'Physician' },
    { id: 5, name: 'Counselor' },
    { id: 6, name: 'Nurse' },
    { id: 7, name: 'Teacher' },
    { id: 8, name: 'Professor' },
    { id: 9, name: 'Researcher' },
    { id: 10, name: 'Journalist' },
    { id: 11, name: 'Writer' },
    { id: 12, name: 'Photographer' },
    { id: 13, name: 'Industrial worker' },
    { id: 14, name: 'Technique' },
    { id: 15, name: 'Builder' },
    { id: 16, name: 'Entrepreneur' },
    { id: 17, name: 'Free-lance' },
    { id: 18, name: 'Part-time job' },
    { id: 19, name: 'Other' }
  ]

  include ActiveHash::Associations
  has_many :users
end