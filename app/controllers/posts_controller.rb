class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
        handle_special_redirection
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
          flash[:success] = "Object successfully created"
          redirect_to root_path

        else
          flash[:error] = "Something went wrong"
          render :new, status: :unprocessable_entity
        end
    end

    def edit
    end
    
    def update
        if @post.update(post_params)
          flash[:success] = "Object was successfully updated"
          redirect_to @post
        else
          flash[:error] = "Something went wrong"
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
       @post.destroy
       redirect_to posts_path, notice: "Post deleted"
    end
    
    
    private 

    def post_params
        params.require(:post).permit(:title,:content,:description,:category,:published_at,:slug)
    end

    def set_post
        if params[:id].blank?
          redirect_to root_path, alert: "ID no proporcionado"
          return
        end
      
        @post = Post.friendly.find(params[:id])
      
        if @post.nil?
          redirect_to root_path, alert: "Post no encontrado"
        end
      end

      def handle_special_redirection
        case @post.id
        when 12 then redirect_to work_path
        when 13 then redirect_to skills_path
        when 14 then redirect_to education_path
        else
          render 'show',formats: :html # Renderiza la vista normal si no es uno de los posts especiales
        end
      end
      
    
    

end