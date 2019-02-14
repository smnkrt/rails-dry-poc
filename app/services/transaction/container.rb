# frozen_string_literal: true

module Transaction
  class Container
    extend Dry::Container::Mixin

    namespace 'users' do
      register 'validate' do
        Transaction::Validate.new
      end

      register 'create' do
        Transaction::Create.new
      end
    end
  end
end
