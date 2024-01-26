class AddTestArticle < ActiveRecord::Migration[7.0]
  def change
    Article.create(title: 'First Article', body: 'This is the first test article.')
  end
end
