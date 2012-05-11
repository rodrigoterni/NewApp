class FundsController < ApplicationController

  before_filter :get_fund, :only => [:show,:edit,:update,:destroy]

  def get_fund
    @fund = Fund.find(params[:id])
  end

  def index
    @funds = Fund.order(:name)
  end

  def show

  end

  def new
    @fund = Fund.new
  end


  def edit
    
  end


  def create
    @fund = Fund.new(params[:fund])

    if @fund.save
      flash[:notice] = "Fundo #{@fund.name} salvo"
      redirect_to @fund
    else
      render :new
    end
  end


  def update

    if @fund.update_attributes(params[:post])
      flash[:notice] = "Fundo #{@fund.name} atualizado com sucesso"
      redirect_to @fund
    else
      render :edit
    end

  end

  def destroy
    @fund.destroy
    flash[:notice] = "Fundo #{@fund.name} removido com sucesso"
    redirect_to funds_path
  end
end
