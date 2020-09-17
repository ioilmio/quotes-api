class Api::V1::QuotesController < ApiController
    before_action :set_quote

    def index
        # @quotes = Quote.all
        render json: @quotes
    end

    def show
        # @quote = Quote.find(params[:id])
        render json: @quote
    end

    # def destroy
    #     @quote = Quote.find(params[:id])
    #     @quote.destroy
    # end

    private 
    
    def set_quote
        @quote = Quote.find(params[:id])
        @quotes = Quote.all
    end
end
