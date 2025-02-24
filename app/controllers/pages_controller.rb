class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["heba", "olha", "fiona", "george"]

    raise

    if params[:member].present?
      @members = @members.select { |member| member.start_with?(params[:member].downcase)}
    end
  end

  def home
  end
end
