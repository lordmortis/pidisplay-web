class InfomessagesController < ApplicationController
  before_filter :load_message
  respond_to :json, :html, only: :index
  respond_to :json

  def index
    @messages = Infomessage.all
    respond_with @messages
  end

  def show
    respond_with @message
  end

  def edit
    respond_with @message
  end

  def new
    @message = Infomessage.new
    respond_with @message
  end

  def create
    @message = Infomessage.new()
    @message.update_attributes!(edit_params)
    saved = @message.save
    respond_to do |format|
      if saved
        respond_with @message
      else
        respond_with @message.errors
      end
    end
  end

  def update
    @message.update_attributes!(edit_params)
    saved = @message.save
    respond_to do |format|
      if saved
        respond_with @message
      else
        respond_with @message.errors
      end
    end
  end

  def destroy
    @message.destroy
    respond_with status: :ok
  end

private
  def load_message
    @message = Infomessage.where(id: params[:id].to_i).first if params.has_key? :id
  end

  def edit_params
    params.require(:infomessage).permit(:text, :image)
  end

end
