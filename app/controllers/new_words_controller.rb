class NewWordsController < ApplicationController
  def index
    @words = NewWord.ransack(params[:q]).result
    render json: {
      success: true,
      data: ActiveModel::SerializableResource.new(@words)
    }
  end

  def show
    @word = NewWord.find(params[:id])
    render json: {
      success: true,
      data: ActiveModel::SerializableResource.new(@word)
    }
  end
end
