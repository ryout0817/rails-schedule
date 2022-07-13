class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params.require(:user).permit(:title,:start_day,:finish_day,:all_day,:introduction))
    if @user.save 
      flash.now[:notice] = "ユーザーを新規登録しました1"
      redirect_to :users
    else
      render "new"
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if@user.update(params.require(:user).permit(:title,:start_day,:finish_day,:all_day,:introduction))
      flash.now[:notice] = "ユーザーIDの情報を更新しました"
      redirect_to :users
    else
      render "update"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :users
  end
end
