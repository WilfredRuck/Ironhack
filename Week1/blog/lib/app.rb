require_relative(lib/blog.rb)
require_relative(lib/post.rb)

blog = Blog.new
blog.add_post(Post.new("Happy",16,"Welcome to Wonderland"))
blog.add_post(Post.new("Sad",21,"Goodbye I hate everyone"))
blog.add_post(Post.new("Ironhack",28,"Let's"))
blog.add_post(Post.new("Typical",29,"Build"))
blog.add_post(Post.new("Random",30,"Miami"))
blog.add_post(Post.new("Stuff",22,"Here"))
blog.add_post(Post.new("Ironhack",23,"We"))
blog.add_post(Post.new("Ironhack",24,"Are"))

blog.publish_front_page