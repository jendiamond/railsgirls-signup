require 'rails_helper'

describe "questions", type: :request do
  let!(:question) { FactoryGirl.create(:question) }
  let(:user) { FactoryGirl.create(:user) }
  let(:user_params) { { email: user.email } }

    describe 'reading questions' do
      it "should render questions index template" do
        get '/questions'
        expect(response).to have_http_status(200)
        expect(response).to render_template('index')
      end
    end

    describe 'GET /questions/new' do
      it "should render questions new template" do
        get '/questions/new'
        expect(response).to have_http_status(200)
        expect(response).to render_template('new')
      end
    end

    describe 'POST /questions' do
      it "should create a new question" do
        expect {
          post '/questions', question: { newbie: question.newbie } 
        }.to change(question, :count).by(1)
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(question_url(question.last.id))
      end
    end

    describe 'GET /questions/:id' do
      before do
        post '/questions', question: { newbie: question.newbie  }
      end

      it "should render question show template" do
        get "/questions/#{question.last.id}"
        expect(response).to have_http_status(200)
        expect(response).to render_template('show')
      end
    end

    describe 'GET /questions/:id/edit' do
      it "should render questions edit template" do
        get "/questions/#{question.id}/edit"
        expect(response).to have_http_status(200)
        expect(response).to render_template('edit')
      end
    end

    describe 'POST /questions/:id' do
      before do
        post '/questions', question: { newbie: question.newbie  }
      end

      it "should update a question" do
        expect {
          patch "/questions/#{question.id}", question: { newbie: question.newbie }
        }.to change(question, :count).by(0)
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(question_url(question))
      end
    end

    describe 'DELETE' do
      before do
        post '/questions', question: { newbie: question.newbie  }
      end

      it "should delete a question" do
        expect {
          delete "/questions/#{question.last.id}"
        }.to change(question, :count).by(-1)
        expect(response).to have_http_status(302)
      end
    end
end