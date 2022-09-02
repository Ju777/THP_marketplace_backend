class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = get_user_from_token
    render json: {
      message: "If you see this, you're in!",
      user: user.as_json(include: :articles)
    }
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
end