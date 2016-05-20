require 'nokogiri'
require 'open-uri'

class ScrapingsController < ApplicationController
  def index
    @doc = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/List_of_cat_breeds'))
    byebug
    @length =  @doc.css('.wikitable tr td:first-child').count
    # @doc.css('.wikitable tr').slice(1..@length).each do |link|
      # byebug
    #   @doc.css('.wikitable tr a').each do |link|
    #     @cat = "https://en.wikipedia.org#{link['href']}"
    #    @doc2 = Nokogiri::HTML(open(@cat))
    #    @doc2.css("#mw-content-text p").each do |link|
    #      link.content
    #    end
    #  end
  #  end
  end
end
