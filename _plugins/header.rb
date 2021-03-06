module Jekyll
  class RenderHeaderTag < Liquid::Tag
    include Jekyll::LiquidExtensions

    Variable = /\{\{\s*([\w]+\.?[\w]*)\s*\}\}/i

    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.split("|")

      @element = @markup[0].strip!
      @text = @markup[1]
      @url = @markup[2]
    end

    def interpolate(markup, context)
      markup.scan Variable do |variable|
        markup = markup.gsub(Variable, lookup_variable(context, variable.first))
      end
      markup
    end

    def render(context)
      if @text.match(Variable)
        processedText = interpolate(@text, context)
      else
        processedText = @text
      end

      if @url
        if @url.match(Variable)
          processedUrl = interpolate(@url, context)
        else
          processedUrl = @url
        end

        processedUrl.strip!
      end

      processedText.strip!

      textDowncase = processedText.downcase

      if processedText.match(/\s/)
          textNoSpace = textDowncase.gsub! /\s/, '-'
      else
          textNoSpace = textDowncase
      end
      slug = textNoSpace

      mainElement = "<span class=\"pe-auto\">#{processedText}</span>"
      link = "##{slug}"
      if processedUrl
        link = processedUrl
        mainElement = "<a class=\"pe-auto fc-black-900\" href=\"#{processedUrl}\">#{processedText}</a>"
      end

      "<div class=\"grid jc-space-between ai-end pe-none stacks-header\">
        <#{@element} class=\"grid--cell fl1 stacks-#{@element}\" id=\"#{slug}\" data-href=\"#{processedUrl}\">
          #{mainElement}
        </#{@element}>
        <a class=\"grid grid__center mbn6 s-btn s-btn__muted pe-auto js-anchor\" href=\"#{link}\">
          <svg aria-hidden=\"true\" class=\"svg-icon iconLink m0\" width=\"18\" height=\"18\" viewBox=\"0 0 18 18\"><path d=\"M2.9 9c0-1.16.94-2.1 2.1-2.1h3V5H5C2.79 5 1 6.79 1 9s1.79 4 4 4h3v-1.9H5A2.1 2.1 0 0 1 2.9 9zM13 5h-3v1.9h3a2.1 2.1 0 1 1 0 4.2h-3V13h3c2.21 0 4-1.79 4-4s-1.79-4-4-4zm-7 5h6V8H6v2z\"></path></svg>
        </a>
      </div>"

    end
  end
end

Liquid::Template.register_tag('header', Jekyll::RenderHeaderTag)
