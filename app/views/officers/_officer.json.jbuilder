# frozen_string_literal: true

json.extract! officer, :id, :officer_uin, :name, :email, :amountOwed, :created_at, :updated_at
json.url officer_url(officer, format: :json)
