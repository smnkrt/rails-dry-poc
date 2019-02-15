# frozen_string_literal: true

module UsersAutoInject
  class Create
    def call(input)
      "#{input} - created"
    end
  end
end
