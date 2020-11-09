class Api::RecipesController < ApplicationController
	before_action :set_respond_to_mime_type
  before_action :set_pagination
  def index
    @recipes = Recipe.includes(:chef, :tags).limit(@limit).offset(@offset)
  end

  def show
    @recipe = Recipe.includes(:chef, :tags).where(id: params[:id])
  end

  private


    def set_respond_to_mime_type
      request.format = :json
    end

    def is_initial_page?
      params[:page].nil? or params[:page].to_i <= 0
    end

    def page
      self.is_initial_page? ? 0 : params[:page].to_i - 1
    end

    def per_page
      (params[:per_page].nil? or params[:per_page].to_i <= 0) ? 10 : params[:per_page].to_i 
    end

    def set_pagination
      @limit = per_page
      @offset = page * @limit
      puts "@limit => #{@limit}"
      puts "@offset => #{@offset}"
    end
end
