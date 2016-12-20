class ReadsController < ApplicationController
  def create
    read = Read.create(read_params)
  end
  private
  def read_params
    params.require(:read).permit(:title, :url)
  end
end
