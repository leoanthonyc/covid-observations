class ObservationsController < ApplicationController
  def confirmed
    observation_date = params[:observation_date]
    rows = if observation_date.present?
             CovidObservation.select('SUM(confirmed) as confirmed, SUM(deaths) as deaths, SUM(recovered) as recovered, observation_date, country')
               .where(observation_date: observation_date)
               .group('country, observation_date')
               .order('SUM(confirmed) desc')
           else
             CovidObservation.select('SUM(confirmed) as confirmed, SUM(deaths) as deaths, SUM(recovered) as recovered, country')
               .group('country')
               .order('SUM(confirmed) desc')
           end

    limit = params[:max_results]
    rows = rows.limit(limit) if limit.present?

    @result = { 
      observation_date: observation_date,
      countries: rows.map(&:as_json)
    }

    respond_to do |format|
      format.html
      format.json { render json: @result }
    end
  end
end
