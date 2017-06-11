# frozen_string_literal: true

# exercise object model
module ObjectModel
  # define molule LinuxFriendly
  module LinuxFriendly
    def fork_process
      super
    end
  end
  # define parent class for Laptop
  class Computer
    def mine_bitcoins
      inspect
    end

    def fork_process
      'Parent: allocate memory'
    end
  end
  # define child class Laptop
  class Laptop < Computer
    prepend LinuxFriendly
  end
end
