# frozen_string_literal: true

module UsersTransaction
  class Create
    include Dry::Transaction::Operation

    def call(input)
      Success("#{input} - create")
    end
  end
end
