class ResourcesController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  $posts = [{
    id: 0,
    title: "Post 1",
    body: "This is the first post",
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    },{
    id: 1,
    title: "Post 2",
    body: "This is the second post",
    content: "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    },{
    id: 2,
    title: "Post 3",
    body: "This is the third post",
    content: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }]

  get "/" do
    @title = "My Blog"
    @posts = $posts
    erb :"resources/index"
  end

  get "/new" do
    erb :"resources/new"
  end

  get "/:id" do
    @posts = $posts
    @id = params[:id]
    @instance = @posts[@id.to_i]
    erb :"resources/show"
    # "<h1>Hello</h1>"
  end

  get "/:id/edit" do
    "<h1>EDIT: #{params[:id]}</h1>"
  end

  post "/" do
    "<h1>Create</h1>"
  end

  put "/:id" do
    "<h1>Update: #{params[:id]}</h1>"
  end

  delete "/:id" do
    "<h1>Delete: #{params[:id]}</h1>"
  end

end
