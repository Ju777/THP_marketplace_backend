class MembersController < ApplicationController
  before_action :authenticate_user!, only: %i[show]

  def index
    @users = User.all 
    render json: @user.map{ |user| 
                 if user.avatar.attached? 
                   user.as_json(include: :articles).merge(avatar_path: url_for(user.avatar))
                 else 
                    user.as_json include: :articles
                 end  
                }
  end

  def show
    user = get_user_from_token
    render json: {
      message: "If you see this, you're in!",
      user: user.as_json(include: [:articles, :received_messages])
      # user: user.as_json(include: [:articles])
    }
  end

  def add_avatar
    user = get_user_from_token
    user.avatar.attach(params[:avatar])
  end

  def update
    user = get_user_from_token
    
    puts "#"*100
    puts user
    puts "#"*100

    if user.update(user_params)
        user.avatar.attach(params[:avatar])
        render json: user
    else
        render json: user.errors, status: :unprocessable_entity
    end

    
  end

  def show_visitors
    @user = User.find(params[:id])
       if @user.avatar.attached? 
          render json: @user.as_json(include: :articles).merge(avatar_path: url_for(@user.avatar))
       else 
         render json: @user.as_json(include: :articles)
      end 
  end

  private

  def get_user_from_token
    puts "#"*100
    puts "JWT_SECRET_KEY"
    # puts ENV['JWT_SECRET_KEY']
    puts "#"*100
    
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1], ENV["JWT_SECRET_KEY"]).first
    user_id = jwt_payload['sub']
    User.find(user_id.to_s)
  end

  def user_params
    params.require(:user).permit(:avatar, :email, :name)
  end 
end