class GroupMemberController < ApplicationController

  def index
    @group_members = Group.all
  end

  def show
  end

  def new
    create
  end

  def create
    @group = Group.find(params[:group_id])
    @new_group_member = GroupMember.new
    @new_group_member.update_attributes(:name => current_user.name, :gender => current_user.gender, :age => current_user.age, :is_stalker => false, :is_admin => false, :group_id => params[:group_id])
    current_user.update_attribute(:group_id, params[:group_id])
    if @new_group_member.save
      @group.update_attribute(:member_count, @group[:member_count]+1)
      redirect_to group_path(@group)
    else
      flash[:error] = @new_group_member.errors.full_messages.to_sentence
      redirect_to groups_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
