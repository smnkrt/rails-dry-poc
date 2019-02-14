# frozen_string_literal: true

module AutoInject
  class Validate
    def call(input)
      return 'validation_fail' if input == 'true'
      "#{input} - valid"
    end
  end
end
