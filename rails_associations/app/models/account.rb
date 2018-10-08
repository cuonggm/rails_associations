class Account < ApplicationRecord
    has_one :account_detail, dependent: :destroy
end
