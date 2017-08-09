class RecommendRatingsController < ApplicationController
  def index
    @recommend_ratings = RecommendRating.all

    render("recommend_ratings/index.html.erb")
  end

  def show
    @recommend = Recommend.new
    @recommend_rating = RecommendRating.find(params[:id])

    render("recommend_ratings/show.html.erb")
  end

  def new
    @recommend_rating = RecommendRating.new

    render("recommend_ratings/new.html.erb")
  end

  def create
    @recommend_rating = RecommendRating.new

    @recommend_rating.rating_id = params[:rating_id]
    @recommend_rating.friend_id = params[:friend_id]

    save_status = @recommend_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/recommend_ratings/new", "/create_recommend_rating"
        redirect_to("/recommend_ratings")
      else
        redirect_back(:fallback_location => "/", :notice => "Recommend rating created successfully.")
      end
    else
      render("recommend_ratings/new.html.erb")
    end
  end

  def edit
    @recommend_rating = RecommendRating.find(params[:id])

    render("recommend_ratings/edit.html.erb")
  end

  def update
    @recommend_rating = RecommendRating.find(params[:id])

    @recommend_rating.rating_id = params[:rating_id]
    @recommend_rating.friend_id = params[:friend_id]

    save_status = @recommend_rating.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/recommend_ratings/#{@recommend_rating.id}/edit", "/update_recommend_rating"
        redirect_to("/recommend_ratings/#{@recommend_rating.id}", :notice => "Recommend rating updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Recommend rating updated successfully.")
      end
    else
      render("recommend_ratings/edit.html.erb")
    end
  end

  def destroy
    @recommend_rating = RecommendRating.find(params[:id])

    @recommend_rating.destroy

    if URI(request.referer).path == "/recommend_ratings/#{@recommend_rating.id}"
      redirect_to("/", :notice => "Recommend rating deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Recommend rating deleted.")
    end
  end
end
