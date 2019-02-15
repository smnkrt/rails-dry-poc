# frozen_string_literal: true

class UsersController < ApplicationController
  def transaction
    render json: { result: UsersTransaction::Service.new.call(params[:fail]) }
  end

  def auto_inject
    render json: { result: UsersAutoInject::Service.new.call(params[:fail]) }
  end
end
