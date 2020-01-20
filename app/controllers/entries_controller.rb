class EntriesController < ApplicationController

  def index
    @entries = Entry.order(date: :desc)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:entry].inspect
    @entry = Entry.new(entry_params)

    @entry.save
    redirect_to @entry
  end

  private
    def entry_params
      params.require(:entry).permit(:date, :description)
    end

end
