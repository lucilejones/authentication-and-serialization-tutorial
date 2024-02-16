# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
    identifier :id

    # association :posts, blueprint: PostBlueprint, view: :normal
    association :posts, blueprint: PostBlueprint, view: :normal do |user|
        user.posts.first
      end

    # fields :username
    view :normal do
        fields :username
      end
    
      view :extended do
        fields :username, :created_at, :updated_at
      end
end
