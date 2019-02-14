# frozen_string_literal: true

module AutoInject
  class Container
    extend Dry::Container::Mixin

    namespace 'users' do
      register 'validate' do
        AutoInject::Validate.new
      end

      register 'create' do
        AutoInject::Create.new
      end
    end
  end
end
