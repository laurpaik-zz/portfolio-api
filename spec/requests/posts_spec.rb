# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts API' do
  def post_params
    {
      title: 'blah',
      body: 'blahblah',
      date_posted: '2017-06-12'
    }
  end

  def posts
    Post.all
  end

  def post
    Post.first
  end

  before(:all) do
    Post.create!(post_params)
  end

  after(:all) do
    Post.delete_all
  end

  describe 'GET /posts' do
    it 'lists all posts' do
      get '/posts'
      expect(response).to be_success
      posts_response = JSON.parse(response.body)['posts']
      expect(posts_response.length).to eq(posts.count)
      expect(posts_response.first['title']).to eq(post.title)
    end
  end

  describe 'GET /posts/:id' do
    it 'shows one post' do
      get "/posts/#{post.id}"
      expect(response).to be_success
      post_response = JSON.parse(response.body)['post']
      expect(post_response['id']).to eq(post.id)
      expect(post_response['title']).to eq(post.title)
    end
  end
end
