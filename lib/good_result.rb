# frozen_string_literal: true

require_relative "good_result/version"

module GoodResult
  class ResultError < StandardError; end
  
  class Success
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def success?
      true
    end

    def failure?
      false
    end
  end

  class Failure
    attr_reader :error

    def initialize(error)
      @error = error
    end

    def success?
      false
    end

    def failure?
      true
    end
  end
end
