require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "bcrypt"
require "./models"


enable :sessions

configure :development do
  set :database, "sqlite3:app.db"
end

configure :production do
  set :database, ENV["DATABASE_URL"]
end


get "/" do
  if session[:user_id]
     @posts = Post.all
    @user = User.find(session[:user_id])
    erb :signed_in_homepage
  else
    redirect "/sign-in"
  end
end

post "/" do
  @user = User.find(session[:user_id])
  @post = Post.create(
    user_id: @user.id,
    title: params[:title],
    content: params[:content]
  )
  redirect "/"
end


get "/sign-in" do
  erb :sign_in
end


post "/sign-in" do
  @user = User.find_by(username: params[:username])


  if @user && @user.password == params[:password]

    session[:user_id] = @user.id


    redirect "/"
  else

    flash[:warning] = "Your username or password is incorrect"


    redirect "/sign-in"
  end
end


get "/sign-up" do
  erb :sign_up
end

post "/sign-up" do
  @user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password],
    email: params[:email],
    image_url: params[:image_url],
    birthday: params[:birthday]
  )


  session[:user_id] = @user.id


  redirect "/"
end

get "/create-post" do
  if session[:user_id]
  erb :create_post
  else
  redirect "/"
  end
end

post '/create-post' do
  @user = User.find(session[:user_id])
  @post = Post.create(
    user_id: @user.id,
    title: params[:title],
    content: params[:content]
  )
  redirect "/"
end

get "/profile" do

  if session[:user_id]
    @user = User.find(session[:user_id])
  erb :profile
  else
  redirect "/"
  end
end

post "/profile" do
  @user = User.find(session[:user_id])
  @post = Post.create(
    user_id: @user.id,
    title: params[:title],
    content: params[:content]
  )
  redirect "/profile"
end


get "/user-profile/:id" do
  @user = User.find(params[:id])
  @posts = User.find(params[:id]).posts
  if session[:user_id]
    # @posts = Post.all.limit(3)
  erb :other_users_posts
end
end


get "/settings" do
  if session[:user_id]
    @user = User.find(session[:user_id])
    erb :settings
  else
  redirect "/"
  end
end

post "/settings" do
    @user = User.find(session[:user_id])

  if @user.username == params[:username] && @user.password == params[:password]
    @user.posts.each do |post|
       Post.destroy(post.id)
    end
    User.destroy(session[:user_id])
    session[:user_id] = nil
    flash[:warning] = "You have deleted your account"
    redirect "/"

  else
    flash[:warning] = "Your username or password is incorrect"
    redirect "/settings"

  end
end

put "/settings" do
  @user = User.find(session[:user_id])
  @user.update(
    first_name: params[:first_name],
    last_name: params[:last_name],
    username: params[:username],
    password: params[:password],
    email: params[:email],
    image_url: params[:image_url])

    flash[:info] = "You have updated your account"
    redirect "/settings"
end


get "/sign-out" do

  session[:user_id] = nil
  flash[:info] = "You have been signed out"
  redirect "/"
end


post "/delete-post/:id" do
  if @post = Post.find(params['id'])
  @post.destroy
flash[:info] = "You have deleted your post"
redirect "/profile"
end
end


get "/feed" do
  @posts = Post.last(20).reverse
  erb :"/feed"
end




# get "/feed" do
#   @users = User.all.reverse
# 		@posts = Post.all
# 		@posts = Post.paginate(:page => params[:page], :per_page => 20)
# 		if !session[:id].nil?
# 		erb :feed, :layout => :log_in
		
# else 
# 		redirect '/log_in'
# end
 
# end

