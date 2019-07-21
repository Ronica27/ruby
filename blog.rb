class BlogPost
  attr_accessor :title, :content, :pubdate, :author

  @@blog_number = 0
  @@blog_hash = {}

  def initialize
	@@blog_number += 1
	@@blog_array = {}
  end

  def publish
  	@@blog_array.each do |blog|
  	puts "#{title} | #{pubdate} | #{author} | #{content}"
  end
end

class Blog < BlogPost



end





while (true)
	puts "Do you want to create a new blog post? [Y/N]"
	new_blog_answer = gets.chomp.downcase
	
	if (new_blog_answer == "y") 
		blog = BlogPost.new
		puts "What is the title?"
		blog.title = gets
		puts "what is the content?"
		blog.content = gets
		puts "what is the publication date?"
		blog.pubdate = gets
		puts "who is the author?"
		blog.author = gets

		blog_hash_new = {blog.pubdate.chomp => [title: blog.title.chomp, content: blog.content.chomp, author:blog.author.chomp]}
		blog_hash[:blog.pubdate.chomp] = blog_hash.merge(blog_hash_new)
	elsif (new_blog_answer =="n") 
		publish
		false
	end
end
end
