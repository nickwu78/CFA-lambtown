class CommentsController < ActionController::Base

def index
end

def new
  @comment = Comment.new
end

def create
  @comment = Comment.new
end

def show
end

end