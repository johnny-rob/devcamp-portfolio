class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout "portfolio"
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  # GET /Portfolios/new
  def new
    @portfolio_items = Portfolio.new
    3.times { @portfolio_items.technologies.build }
  end

  def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_items }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    #This performs lookup


    #redirect
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully destroyed.' }
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                    )
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

end
