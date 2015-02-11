require 'test_helper'

class CommitsByLanguageTest < ActiveSupport::TestCase
  let(:start_date) do
    (Date.today - 6.years).beginning_of_month
  end

  let(:user) do
    account = accounts(:user)
    account.best_vita.vita_fact.destroy
    create(:vita_fact_with_cbl_and_cbp, vita_id: account.best_vita_id)
    account
  end

  let(:admin) { create(:admin) }

  let(:cbl_decorator) do
    user.stubs(:first_commit_date).returns(start_date)
    CommitsByLanguage.new(user, context: { scope: 'full' })
  end

  describe 'language_experience' do
    it 'should return languages with most commits sorted first for seven year range' do
      le = cbl_decorator.language_experience
      le[:object_array].size.must_equal 5
      le[:object_array].first.name.must_equal 'csharp'
    end

    it 'should all required data for each language' do
      le = cbl_decorator.language_experience
      language = le[:object_array].first

      language.language_id.must_equal '17'
      language.name.must_equal 'csharp'
      language.nice_name.must_equal 'C#'
      language.color_code.must_equal '4096EE'
      language.commits.must_equal [0] * 12 + [24, 37, 27, 16, 1, 8, 26, 9] + [0] * 64
      language.category.must_equal '0'
    end

    it 'should get seven years of commits for each language' do
      le = cbl_decorator.language_experience
      le[:object_array].size.must_equal 5
      le[:object_array].first.commits.size.must_equal 7 * 12
    end

    it 'should get seven years of months for date values' do
      le = cbl_decorator.language_experience
      le[:date_array].size.must_equal 7 * 12
    end

    it 'should return empty array for user with no positions' do
      cbl_decorator = CommitsByLanguage.new admin, context: { scope: 'full' }
      le = cbl_decorator.language_experience
      le[:object_array].must_equal []
      le[:date_array].size.must_equal 7 * 12
    end

    it 'should try to fetch data from first_commit_date if it is more than seven years' do
      admin.stubs(:first_commit_date).returns(start_date - 5.years)
      cbl_decorator = CommitsByLanguage.new admin, context: { scope: 'full' }
      le = cbl_decorator.language_experience
      le[:object_array].must_equal []
      le[:date_array].size.must_equal 11 * 12
    end
  end
end