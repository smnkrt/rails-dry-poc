# frozen_string_literal: true

require 'dry/transaction/operation'

module AutoInject
  class Service
    include Import['users.validate', 'users.create']

    def call(params)
      create.call(validate.call(params))
    end
 end
end
