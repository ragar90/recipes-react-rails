class Api::RecipesController < ApplicationController
  before_action :set_pagination
  def index
    Recipe.include(:chef, :tags).limit(@limit).offset(@offset)
  end

  private
    def is_initial_page?
      params[:page].nil? or params[:page].to_i <= 0
    end

    def page
      self.is_initial_page? ? 0 : params[:page].to_i - 1
    end

    def set_pagination
      @limit = params[:per_page].to_i ||10
      @offset = page * @limit
    end
end
