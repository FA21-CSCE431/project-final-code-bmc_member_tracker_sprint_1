# frozen_string_literal: true

class Deposit < ApplicationRecord
  # # has_many :officers, foreign_key: "officer_uin"
  # # has_many :transaction_types, foreign_key: "category"
  # belongs_to :officers, primary_key: "officer_uin", foreign_key: "officer_uin"
  # belongs_to :transaction_type, primary_key: "category", foreign_key: "category"
  has_many :transaction_types, foreign_key: 'category'
  has_many :officers, foreign_key: 'officer_uin'
  validates :officer_uin, presence: true
  validates :category, presence: true
  validates :amount, presence: true
  validates :date, presence: true
  # has_many :transaction_types, foreign_key: "category"
  # has_many :officers, foreign_key: "officer_uin"
end