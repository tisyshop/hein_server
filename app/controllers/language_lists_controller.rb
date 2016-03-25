class LanguageListsController < ApplicationController
  before_action :set_language_list, only: [:show, :edit, :update, :destroy]

  # GET /language_lists
  # GET /language_lists.json
  def index
    @language_lists = LanguageList.all
  end

  # GET /language_lists/1
  # GET /language_lists/1.json
  def show
  end

  # GET /language_lists/new
  def new
    @language_list = LanguageList.new
  end

  # GET /language_lists/1/edit
  def edit
  end

  # POST /language_lists
  # POST /language_lists.json
  def create
    @language_list = LanguageList.new(language_list_params)

    respond_to do |format|
      if @language_list.save
        format.html { redirect_to @language_list, notice: 'Language list was successfully created.' }
        format.json { render :show, status: :created, location: @language_list }
      else
        format.html { render :new }
        format.json { render json: @language_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_lists/1
  # PATCH/PUT /language_lists/1.json
  def update
    respond_to do |format|
      if @language_list.update(language_list_params)
        format.html { redirect_to @language_list, notice: 'Language list was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_list }
      else
        format.html { render :edit }
        format.json { render json: @language_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_lists/1
  # DELETE /language_lists/1.json
  def destroy
    @language_list.destroy
    respond_to do |format|
      format.html { redirect_to language_lists_url, notice: 'Language list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_list
      @language_list = LanguageList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_list_params
      params.require(:language_list).permit(:code, :name, :flag, :mothertongue, :learnedLanguage, :created_at, :updated_at)
    end
end
