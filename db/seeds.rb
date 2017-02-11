# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'nokogiri'
require 'open-uri'

class Parser
  attr_reader :translations

  ORIGINAL_XPATH   = '//table//td[2]'.freeze
  TRANSLATED_XPATH = '//table//td[3]'.freeze
  LINKS_XPATH      = '//div[@class="jsn-article-content"]//ul//a/@href'.freeze

  def initialize
    @base = 'http://www.languagedaily.com'
    @translations = []
  end

  def start_parse(link)
    page = Nokogiri::HTML(open(link))
    add_translations page
    links = page.xpath(LINKS_XPATH)

    links.each do |l|
      parse_page l
    end
  end

  private

  def parse_page(link)
    page = Nokogiri::HTML(open(@base + link))
    add_translations page
  end

  def add_translations(page)
    original = page.xpath(ORIGINAL_XPATH)
    translated = page.xpath(TRANSLATED_XPATH)

    for i in 1...original.size
      @translations.push(original: original[i].text, translated: translated[i].text) if translated[i].text.gsub(/[[:space:]]/, '') != ''
    end
  end
end

parser = Parser.new
parser.start_parse 'http://www.languagedaily.com/learn-german/vocabulary/common-german-words'

parser.translations.each do |a|
  Card.create(original: a[:original], translated: a[:translated])
end
