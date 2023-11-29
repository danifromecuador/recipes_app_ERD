class UsersController < ApplicationController
  def index
    users = User.all.sort_by(&:updated_at).reverse
    render json: users, status: :ok
  end

  def show
    user = User.find(params[:id])
    render json: user, status: :ok
  end

  def create
    user = User.create(create_params)
    if user.valid?
      render json: 'User created sucessfully', status: :created
    else
      error_messages = []
      user.errors.messages.each do |m|
        error_messages << m.join(' ')
      end
      render json: error_messages, status: :bad_request
    end
  end

  def destroy
    user = User.find_by_id(params[:id])
    user.destroy
    render json: 'User deleted successfully', status: :ok
  end

  private

  def create_params
    params.permit(:name)
  end
end
