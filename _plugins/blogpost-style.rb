module Jekyll
  module FixStyles
    def fixstyles(content)
        content.gsub! '<p>', '<p class="stacks-copy">'
        content
    end
  end
end
Liquid::Template.register_filter(Jekyll::FixStyles)
