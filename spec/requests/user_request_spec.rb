require 'rails_helper'

RSpec.describe 'Users', type: :request do
  RSpec.shared_context 'with multiple companies' do
    let!(:company_1) { create(:company) }
    let!(:company_2) { create(:company) }

    before do
      5.times do
        create(:user, company: company_1)
      end
      5.times do
        create(:user, company: company_2)
      end
    end
  end

  describe '#index' do
    let(:result) { JSON.parse(response.body) }

    context 'when fetching users by company' do
      include_context 'with multiple companies'

      it 'returns only the users for the specified company' do
        get company_users_path(company_1)

        expect(result.size).to eq(company_1.users.size)
        expect(result.map { |element| element['id'] }).to eq(company_1.users.ids)
      end
    end

    context 'when fetching all users' do
      include_context 'with multiple companies'

      it 'returns all the users' do
      end
    end

    context 'quando ha filtragem por usuarios' do
      context 'quando existe match pacial com 2 parametros' do
        let!(:user1) { create(:user, username: 'user1') }
        let!(:user2) { create(:user, username: 'user2') }
        let!(:user3) { create(:user, username: 'papaleguas3') }

        before do
          get users_path(username: 'us')
        end

        it 'deveria retornar dois usernames chamados userx' do
          expect(result.count).to eq(2)
        end
      end
    end
  end
end
