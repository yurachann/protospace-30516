class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @profile = @user.profile
    @occupation = @user.occupation
    @position = @user.position
    @prototypes = Prototype.where(user_id: params[:id])
    # @prototypes = prototype(user_id: params[:id] )
  end

  private

  # def user_params
  #   params.require(:user).permit(:name, :profile, :occupation, :position).merge(prototype_id: params.id)
  # end
  # select * from Prototype where user_id == params[:id]
end