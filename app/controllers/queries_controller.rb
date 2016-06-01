class QueriesController < ApplicationController

  def create
    result = ::RootSchema.execute(params[:query], context: {current_user: current_user})
    render json: result
  end

  private

  def current_user
    User.all.to_a.sample
  end
end
