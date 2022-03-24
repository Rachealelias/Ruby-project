class CommentsController < ApplicationController

    # GET: /comments
  get "/comments" do
    Comment.all.to_json
  end


  # POST: /comments
  post "/comments" do
    @comment = Comment.create(params)
    if @comment.id
      serialized_comment
    else
      @comment.errors.full_messages.to_sentence
    end
  end

  # GET: /comments/5
  get "/comments/:id" do
    find_comment
    if @comment
      serialized_comment
    else
      {errors: "Record not found with id #{params['id']}"}.to_json
    end
  end

  # PATCH: /comments/5
  patch "/users/:id" do
    
  end

  # DELETE: /comments/5/delete
  delete "/comments/:id/delete" do
    find_comment
    if @comment&.destroy
      {messages: "Record successfully destroyed"}.to_json
    else
      {errors: "Record not found with id #{params['id']}"}.to_json
    end
  end

  private

  def find_comment
    @comment = Comment.find_by_id(params["id"])
  end

  def serialized_comment
    @comment.to_json(include: :game)
  end


end
