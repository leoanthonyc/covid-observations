class ObservationsController < ApplicationController
  def confirmed
    rows = CovidObservation.order(confirmed: :desc)

    limit = params[:max_results]
    rows = rows.limit(limit) if limit.present?

    observation_date = params[:observation_date]
    rows = rows.where(observation_date: observation_date) if observation_date.present?

    @result = { 
      observation_date: observation_date,
      countries: rows.map { |row| row.as_json(only: %i(country confirmed deaths recovered)) }
    }

    respond_to do |format|
      format.html
      format.json { render json: @result }
    end
  end
end
