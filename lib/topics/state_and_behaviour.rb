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
      raise ArgumentError unless car_attributes.is_a?(Hash)
      @year = car_attributes.fetch(:year, 2015)
      @color = car_attributes.fetch(:color, 'purple')
      @model = car_attributes.fetch(:model, 'skyline')
      @current_speed = 0
    end

    def speed_up(speed)
      raise ArgumentError, 'No argument passed' if speed.nil?
      @current_speed = speed
    end

    def push_break(speed)
      raise ArgumentError, 'No argument passed' if speed.nil?
      @current_speed -= speed if speed <= @current_speed
    end
  end
end
