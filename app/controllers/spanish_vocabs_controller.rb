class SpanishVocabsController < ApplicationController
  # GET /spanish_vocabs
  # GET /spanish_vocabs.json
  def index
    @spanish_vocabs = SpanishVocab.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spanish_vocabs }
    end
  end

  # GET /spanish_vocabs/1
  # GET /spanish_vocabs/1.json
  def show
    @spanish_vocab = SpanishVocab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spanish_vocab }
    end
  end

  # GET /spanish_vocabs/new
  # GET /spanish_vocabs/new.json
  def new
    @spanish_vocab = SpanishVocab.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spanish_vocab }
    end
  end

  # GET /spanish_vocabs/1/edit
  def edit
    @spanish_vocab = SpanishVocab.find(params[:id])
  end

  # POST /spanish_vocabs
  # POST /spanish_vocabs.json
  def create
    @spanish_vocab = SpanishVocab.new(params[:spanish_vocab])

    respond_to do |format|
      if @spanish_vocab.save
        format.html { redirect_to @spanish_vocab, notice: 'Spanish vocab was successfully created.' }
        format.json { render json: @spanish_vocab, status: :created, location: @spanish_vocab }
      else
        format.html { render action: "new" }
        format.json { render json: @spanish_vocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spanish_vocabs/1
  # PUT /spanish_vocabs/1.json
  def update
    @spanish_vocab = SpanishVocab.find(params[:id])

    respond_to do |format|
      if @spanish_vocab.update_attributes(params[:spanish_vocab])
        format.html { redirect_to @spanish_vocab, notice: 'Spanish vocab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spanish_vocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spanish_vocabs/1
  # DELETE /spanish_vocabs/1.json
  def destroy
    @spanish_vocab = SpanishVocab.find(params[:id])
    @spanish_vocab.destroy

    respond_to do |format|
      format.html { redirect_to spanish_vocabs_url }
      format.json { head :no_content }
    end
  end
end
