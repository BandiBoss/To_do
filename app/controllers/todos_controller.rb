class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(todo_params)

    if todo_params['title'].length < 3
      redirect_to "/todos/new"
      flash[:danger] = 'incorrect'
      
 else

  respond_to do |format|
    if @todo.save
      flash[:success] = 'Todo was successfully created.'

      format.html { redirect_to }
      format.json { render :show, status: :created, location: @todo }
    else
      flash[:danger] = 'There was a problem creating the Todo.'
      format.html { render :new }
      format.json { render json: @todo.errors, status: :unprocessable_entity }
    end
  end
end
end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        flash[:success] = 'Todo was successfully updated.'
        format.html { redirect_to @todo }
        format.json { render :show, status: :ok, location: @todo }
      else
        flash[:danger] = 'There was a problem updating the Todo.'
        format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1

  def destroy
    @todo.destroy
    respond_to do |format|
      flash[:success] = 'Todo was successfully destroyed.'
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
  end

  private

    def set_todo
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title, :notes)
    end
end
