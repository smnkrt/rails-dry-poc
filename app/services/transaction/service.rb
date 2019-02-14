# frozen_string_literal: true

require 'dry/transaction/operation'

module Transaction
  class Service
    include Dry::Transaction(container: Container)

    step :validate, with: 'users.validate'
    step :create, with: 'users.create'
 end
end
