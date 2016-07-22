class UsersController < ApplicationController
  get '/:username/:password/?' do |username, password|
    if username != '' && password != ''
      user = User.create username: username, password: password
    end

    if user
      'User was created'
    else
      'There was an error creating a user'
    end
  end
end
