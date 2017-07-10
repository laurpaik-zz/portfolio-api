# frozen_string_literal: true
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :posts, :projects, :technologies

  def posts
    object.posts.pluck(:id)
  end

  def projects
    object.projects.pluck(:id)
  end

  def technologies
    object.technologies.pluck(:id)
  end
end
