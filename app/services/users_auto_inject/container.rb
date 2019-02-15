# frozen_string_literal: true

module UsersAutoInject
  class Container
    extend Dry::Container::Mixin

    namespace 'users' do
      register 'validate' do
        UsersAutoInject::Validate.new
      end

      register 'create' do
        UsersAutoInject::Create.new
      end
    end
  end
end
