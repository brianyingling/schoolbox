class CreateKlassesPostsTable < ActiveRecord::Migration
  def change
    create_table :klasses_posts, :id=>false do |t|
      t.integer   :klass_id
      t.integer   :post_id
    end
  end
end
