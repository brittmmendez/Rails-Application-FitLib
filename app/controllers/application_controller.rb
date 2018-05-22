class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index, :home]

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || home_path
  end

  def index
<<<<<<< HEAD
=======
<<<<<<< HEAD

>>>>>>> 6a95653631706531f2df11bbecea9212467c4674
  end

  def home
    @newest_users=User.newest_users
    @top_views=Workout.top_views
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
=======
    if current_user
      redirect_to home_path
    end
  end

  def home
    @newest_users=User.newest_users
    @top_views=Workout.top_views
    @shortest=Workout.shortest
    @longest=Workout.longest

>>>>>>> dc6ebca811141ac2a8db0b9465ff221c31a421b9
>>>>>>> 866392e3f384109da93c3d74c1acbffcb731e69a
>>>>>>> 6a95653631706531f2df11bbecea9212467c4674
  end

end
