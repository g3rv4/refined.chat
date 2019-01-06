Jekyll::Hooks.register :posts, :post_init do |post|
  config = post.site.config['blogpost_url']
  if config and config['permalink']
    post.data["permalink"] = config['permalink']
  end
end
