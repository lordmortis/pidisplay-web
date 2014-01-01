class InfomessagesController < ApplicationController
  before_filter :load_message

  def index
    @messages = Infomessage.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: {messages: @messages} }
    end
  end

  def show
  end

  def edit
  end

  def new
    @message = Infomessage.new
    render "edit"
  end

  def create
    @message = Infomessage.new()
    @message.update_attributes!(edit_params)
    saved = @message.save
    respond_to do |format|
      if saved
        format.html { redirect_to infomessages_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @message.update_attributes!(edit_params)
    saved = @message.save
    respond_to do |format|
      if saved
        format.html { redirect_to infomessages_path }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @message.destroy
    redirect_to infomessages_path
  end

private
  def load_message
    @message = Infomessage.where(id: params[:id].to_i).first if params.has_key? :id
  end

  def edit_params
    params.require(:infomessage).permit(:text, :image)
  end

end
