class PostsController < ApplicationController
	def index
	  @posts = Post.all
	end

	def show

	  @post = Post.find(params[:id])

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save 
			redirect_to posts_path, notice: "Post was created"
		else
			render :new, alert: "There was an error"
		end
	end


	def edit
		@post = Post.find(params[:id])
	end

	def update
		   @post = Post.find(params[:id])
   		   @authors = Author.all.collect { |author| [ author.fullname, author.id ] }
			    if @post.update(post_params)
			      redirect_to posts_url, notice: 'Post has been updated'
			    else
			      render :edit
			    end




		# @post = Post.find(params[:id])
		# if @post.update(post_params)
		# 	redirect_to posts_path, notice: "Post was updated"
		# else
		# 	render :edit
		# end
	end

	def destroy
		post = Post.find(params[:id]) 
		if post.destroy
			redirect_to posts_path, notice: "Post was destroyed"
		else
			redirect_to posts_path, alert: "There was an error"
		end
	end


	private

	def post_params
		params.require(:post).permit(:title, :content, :author_id)
	end

end
