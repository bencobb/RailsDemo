module PostsHelper
  def author_first_last(post)
    "#{post.author_first} #{post.author_last}"
  end

  def should_show?(post)
    post.status == "published"
  end
end
