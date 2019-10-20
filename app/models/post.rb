class Post < ApplicationRecord
	has_rich_text :summary
	has_rich_text :body

	def self.search input
		@posts = where("title LIKE ?", "%#{input}%")
		@posts += Post.joins("INNER JOIN action_text_rich_texts ON action_text_rich_texts.record_id = posts.id").where("action_text_rich_texts.body LIKE ?", "%#{input}%")
	end

end
