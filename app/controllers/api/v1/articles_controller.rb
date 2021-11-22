class Api::V1::ArticlesController < Api::V1::BaseApiController
  def index
    @article = Article.all.order(updated_at: "DESC")
    render json: @article, each_serializer: Api::V1::ArticlePreviewSerializer
  end
end
