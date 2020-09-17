class Api::V1::QuotesController < ApiController

    def index
        @quotes = Quote.all
        render json: @quotes, status: :ok
    end

    def show
        set_quote
        render json: @quote, status: :ok
    end

    def create 
        @quote = Quote.new(quote_params)
        @quote.save
        render json: @quote, status: :created
    end

    def update
        set_quote
        @quote.update_attributes(quote_params)
        @quote.save
        render json: @quote, status: :ok        
    end

    def destroy
        set_quote
        if @quote.destroy
            render json: @quote, status: :ok
            head :ok
        else
            head :unprocessable_entity
        end
    end

    private 
    def quote_params
        params.require(:quote).permit(:author, :sentence)
    end


    def set_quote
        @quote = Quote.find(params[:id])
    end
end
