# frozen_string_literal: true

module UsersTransaction
  class Container
    extend Dry::Container::Mixin

    namespace 'users' do
      register 'validate' do
        UsersTransaction::Validate.new
      end

      register 'create' do
        UsersTransaction::Create.new
      end
    end
  end
end
