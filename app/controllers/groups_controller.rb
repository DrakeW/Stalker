class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    
  end
  
  def create
    @new_group = Group.new(group_params)
    if @new_group.save
      redirect_to(group_path(@new_group))
    else
      flash[:error] = @new_group.errors.full_messages.to_sentence
      redirect_to(groups_path)
    end
  end

  def edit
  end

  def update
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, :member_limit)
  end

  def add_memeber
  end
  
end
