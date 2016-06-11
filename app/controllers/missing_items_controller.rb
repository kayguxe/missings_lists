class MissingItemsController < ApplicationController
    before_action :set_missing_list
	before_action :set_missing_item, except: [:create]

    def create
        @missing_item = @missing_list.missing_items.create(params[:missing_item].permit(:content))
        redirect_to @missing_list

    end
    	def destroy
		if @missing_item.destroy
			flash[:success] = "missing List item was deleted."
		else
			flash[:error] = "missing List item could not be deleted."
		end
		redirect_to @missing_list
	end
		def complete
		@missing_item.update_attribute(:completed_at, Time.now)
		redirect_to @missing_list, notice: "missing item found!"
	         end
    	private

	def set_missing_list
		@missing_list = MissingList.find(params[:missing_list_id])
	end

	def set_missing_item
		@missing_item = @missing_list.missing_items.find(params[:id])
	end

	def missing_item_params
		params[:missing_item].permit(:content)
	end
end
