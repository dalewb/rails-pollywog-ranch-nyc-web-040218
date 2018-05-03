class Tadpole < ActiveRecord::Base
  belongs_to :frog
  delegate :pond, to: :frog

  def make_frog
    Frog.create(name: self.name, color: self.color)
  end

end
