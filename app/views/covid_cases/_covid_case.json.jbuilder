json.extract! covid_case, :id, :amount, :death, :suspect, :cured, :state_id, :created_at, :updated_at
json.url covid_case_url(covid_case, format: :json)
