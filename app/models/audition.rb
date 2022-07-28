class Audition < ActiveRecord::Base
  belongs_to :role

  #change the hired attribute to true
  def call_back
    self.update(hired: true)
  end
end