class Api::PetitionsController < ApplicationController

  before_action :doorkeeper_authorize!

  def index
    @petitions = Petition.all

    # add pagination with kaminari
    # add date filtering
    # add sorting by date
  end

  def show
    @petition = Petition.find_by id: params[:id]
  end

  def create
    @petition = Petition.create(petition_params)
    if @petition.save
      render :show
    else
      render json: @petition.errors, status: 422
    end
  end

  def update
    @petition = Petition.find_by id: params[:id]
    if @petition.update(petition_params)
      render :show
    else
      render json: @petition.errors, status: 422
    end
  end

  def delete
    @petition = Petition.find_by id: params[:id]
    @petition.destroy
    head :ok
  end

  private
  def petition_params
    params.require(:petition).permit(:legal_name, :dob, :ssn, :dl, :address, :city, :state, :county, :zip, :sex, :race, :offense_date, :offense_county, :arresting_agency, :arrest_date, :a_address, :a_city, :a_state, :a_county, :a_zip, :charged, :charge_date, :charged_offenses, :charge_cause_number, :county_court_at_law, :county_court_at_law_number, :municipal_court, :municipal_court_name, :district_court, :district_court_name, :acquittal, :acquittal_date, :dismissal, :dismissal_date, :convicted, :conviction_date, :pardon, :pardon_date, :overturned, :overturned_date, :probation, :deferred_adjudication, :user_id)
end
end
