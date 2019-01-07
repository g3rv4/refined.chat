def processCards(cards, document, site)
  cardTitle = document.data["card_title"] || document.data["title"]
  cardContent = document.data["card_content"]
  if cardContent
    path = document.path.gsub('_', '').sub(site.source + '/', '').sub(document.extname, '') + '.png'
    document.data["card_url"] = File.join("assets/cards/", path)
    cards << { "Title" => cardTitle, "Content" => cardContent, "DestinationPath" => File.join(site.dest, document.data["card_url"]) }
  end

end

Jekyll::Hooks.register :site, :post_read do |site|
  cards = []
  for post in site.collections["posts"].docs
    processCards(cards, post, site)
  end
  for page in site.pages
    processCards(cards, page, site)
  end
  File.open(File.join(site.source, "_data/cards.json"), 'w') { |file| file.write(cards.to_json) }
end
