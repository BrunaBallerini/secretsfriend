class AllSecretsFriendsController < ApplicationController
  before_action :set_all_secrets_friend, only: %i[ show edit update destroy ]

  # GET /all_secrets_friends or /all_secrets_friends.json
  def index
    @all_secrets_friends = AllSecretsFriend.all
  end

  # GET /all_secrets_friends/1 or /all_secrets_friends/1.json
  def show
  end

  # GET /all_secrets_friends/new
  def new
    @all_secrets_friend = AllSecretsFriend.new
  end

  # GET /all_secrets_friends/1/edit
  def edit
  end

  # POST /all_secrets_friends or /all_secrets_friends.json
  def create
    @all_secrets_friend = AllSecretsFriend.new(
      name: params[:name],
      email: params[:email],
      draw_create: params[:draw_create],
    )
    # @all_secrets_friend = AllSecretsFriend.new(all_secrets_friend_params)

    # respond_to do |format|
      if @all_secrets_friend.save
        render json: @all_secrets_friend, status: :created
        # format.html { redirect_to all_secrets_friend_url(@all_secrets_friend), notice: "All secrets friend was successfully created." }
        # format.json { render :show, status: :created, location: @all_secrets_friend }
      else
        puts @all_secrets_friend.errors.full_messages
        render json: @all_secrets_friend.errors, status: :unprocessable_entity
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @all_secrets_friend.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /all_secrets_friends/1 or /all_secrets_friends/1.json
  def update
    respond_to do |format|
      if @all_secrets_friend.update(all_secrets_friend_params)
        format.html { redirect_to all_secrets_friend_url(@all_secrets_friend), notice: "All secrets friend was successfully updated." }
        format.json { render :show, status: :ok, location: @all_secrets_friend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @all_secrets_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_secrets_friends/1 or /all_secrets_friends/1.json
  def destroy
    @all_secrets_friend.destroy!

    respond_to do |format|
      format.html { redirect_to all_secrets_friends_url, notice: "All secrets friend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_secrets_friend
      @all_secrets_friend = AllSecretsFriend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def all_secrets_friend_params
      params.require(:all_secrets_friend).permit(:name, :email, :draw_create, :draw_id)
    end
end
