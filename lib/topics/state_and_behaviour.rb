# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # define class Car
  class Car
    attr_accessor :year, :color, :model, :current_speed
    def self.default_car
      Car.new {}
    end

    def initialize(car_attributes)
      raise ArgumentError, 'Expects hash' unless car_attributes.is_a?(Hash)
      self.year = car_attributes.fetch(:year, 2015)
      self.color = car_attributes.fetch(:color, 'purple')
      self.model = car_attributes.fetch(:model, 'skyline')
      self.current_speed = 0
    end

    def speed_up(speed)
      self.current_speed = speed
    end

    def push_break(speed)
      self.current_speed -= speed if speed <= current_speed
    end
  end
end
