class EmailsController < ApplicationController
  def index
  end

  def create
    @email = Email.create(
      sender: params[:email][:sender],
      recipient: params[:email][:recipient],
      subject: params[:email][:subject],
      body: params[:email][:body],
      )
    redirect_to emails_path
  end

  def all
    @emails = Email.all
  end

  def new
    @email = Email.new
  end

  def show
    @email = Email.find(params[:id])
  end
end