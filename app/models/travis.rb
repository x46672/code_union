class Travis < ActiveRecord::Base
  belongs_to :project

  STATES = %w{ unverified active deleted }

  STATES.each do |state|
    define_method("#{state}?") do
      self.state == state
    end

    define_method("#{state}!") do
      self.update_attribute(:state, state)
    end
  end

end
