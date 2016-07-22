class UsersController < ApplicationController
  get '/update/:username/:new_username/?' do |username, new_username|
    user = User.find_by username: username

    if user
      user.username = new_username
      user.save
      "User #{username} was changed to #{user.username}"
    else
      "No user to update"
    end
  end

  get '/delete/:username/?' do |username|
    user = User.find_by username: username

    if user
      user.destroy
      "Just destroyed a user."
    else
      "Can't destroy a thing that doesn't exist"
    end
  end

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

  get '/:username/?' do |username|
    user = User.find_by username: username

    if user
      "Your username was #{user.username}"
    else
      'No user by that name found'
    end
  end
end
