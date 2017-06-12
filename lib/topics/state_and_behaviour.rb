# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # define class Car
  class Car
    attr_reader :year, :color, :model, :current_speed

    def self.default_car
      Car.new {}
    end

    def initialize(car_attributes)
      raise ArgumentError, 'Expects hash' unless car_attributes.is_a?(Hash)

      @year = car_attributes.fetch(:year, 2015)
      @color = car_attributes.fetch(:color, 'purple')
      @model = car_attributes.fetch(:model, 'skyline')
      @current_speed = 0
    end

    def speed_up(more_speed)
      @current_speed += more_speed
    end

    def push_break(more_speed)
      @current_speed -= more_speed if more_speed <= current_speed
    end
  end
end
