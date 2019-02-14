# frozen_string_literal: true

class UsersController < ApplicationController
  def transaction
    render json: { result: Transaction::Service.new.call(params[:fail]) }
  end

  def auto_inject
    render json: { result: AutoInject::Service.new.call(params[:fail]) }
  end
end
