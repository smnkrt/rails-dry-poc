# frozen_string_literal: true

module UsersTransaction
  class Validate
    include Dry::Transaction::Operation

    def call(input)
      return Failure('reason') if input == 'true'

      Success("#{input} - validate")
    end
  end
end
