require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "add new account and new account detail" do
    @account = Account.new
    @account.name = 'gminhcuong'
    @account_detail = @account.build_account_detail
    @account_detail.detail = 'This is account for gminhcuong'

    @account.save
    @account_detail.save

    puts "No of account: #{Account.all.size}"
    puts "No of account detail: #{AccountDetail.all.size}"

    Account.where(name: 'gminhcuong').each do |account|
      puts "\n"
      puts "Account id: #{account.id}"
      puts "name: #{account.name}"
      puts "detail: #{account.account_detail.detail}"
    end
  end
end
