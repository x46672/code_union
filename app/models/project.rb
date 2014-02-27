class Project < ActiveRecord::Base
  has_many :commits
  has_many :pivotal_stories
  has_many :travis
  has_many :code_climates

  belongs_to :user

  # validates :github, uniqueness: true
  # validates_presence_of :pivotal
  # validates_presence_of :github
  # validates_presence_of :travis
  # validates_presence_of :code
end
