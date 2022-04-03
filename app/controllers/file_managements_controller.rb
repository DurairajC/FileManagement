class FileManagementsController < ApplicationController
	before_action :set_file, only: [:show, :edit, :update]
 
  def index
    @files = current_user.file_managements.order('created_at ASC')
  end
 
  def show
  end
 
  def new
    @file = FileManagement.new
  end
 
  def create
    @file = FileManagement.new(file_params)
    @file.user_id = current_user.id
    if @file.save
      redirect_to file_managements_path
      flash[:alert] = "The File was successfully created."
    else
      render :new
    end
  end
 
  def edit
  end
 
  def update
    if @file.update(file_params)
      redirect_to file_managements_path(@file)
      flash[:alert] = "The File was successfully updated."
    else
      render :edit
    end
  end

  def destroy
  	@file = FileManagement.find(params[:id])
  	@file.destroy
  	flash[:notice] = "The File was successfully destroyed."
    redirect_to home_path
  end

  def download
  	@file = FileManagement.find(params[:id])
  	# byebug
  	send_file @file.attachment.url
  end
 
  private
 
  def file_params
    params.require(:file_management).permit(:title, :description, :attachment)
  end
 
  def set_file
    @file = FileManagement.find(params[:id])
  end
end
