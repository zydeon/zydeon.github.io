module Jekyll
  module Obfuscate
    def obfuscate(text)
      text.gsub(/\./, ". . .").sub(/@/, ": : :")
    end    
  end
end

Liquid::Template.register_filter(Jekyll::Obfuscate)