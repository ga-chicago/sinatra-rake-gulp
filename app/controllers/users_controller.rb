class UsersController < ApplicationController
  get '/:username/:password/?' do |username, password|
    User.create username: username, password: password

    'We made a user'
  end
end
