#encoding: utf-8
require 'mechanize'
require 'hpricot'
require 'uri'

module SiteUtil
  module ClassMethods
    
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end

  def self.get_icon(url)
    begin
      unless (ico = get_favicon(url)).nil?
        return ico
      end
      
      uri = URI(url)
      $agent ||= Mechanize.new
      page = $agent.get(url)
      doc = Hpricot(page.body)
      imgs = doc.search("//img")

      best_img = choose_best_icon(imgs, uri, ['name', 'domain', 'width'])
      src = best_img['src'] unless best_img.nil?
      if src
        if src =~ /^http/i
          return src
        elsif src =~ /^\//i
          return "#{url.sub(/\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk).*$/, '.\1')}#{src}"
        # else
        #   return "#{url}#{src}"
        end
      end
      return src
    rescue => ex
      puts ex.message
      return nil
    end
    #^(((ht|f)tp(s?))\://)?(www.|[a-zA-Z].)[a-zA-Z0-9\-\.]+\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk)(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\;\?\'\\\+&amp;%\$#\=~_\-]+))*$
    # puts imgs.size
    # #case1: the name is logo|icon
    # matched_imgs = imgs.select { |img| img.attributes['src'] =~ /logo|icon/  }
    # return matched_imgs.first.attributes['src'] if matched_imgs.any?

    # #case2: alt is domain name
    # if uri
    #   matched_imgs = imgs.select { |img| img.attributes['alt'] == uri.host  }
    #   return matched_imgs.first.attributes['src'] if matched_imgs.any?
    # end

    # #case3: width/height in range [50..300]
    # matched_imgs = imgs.select { |img| (50..250).include?(img.attributes['width'].to_i) }
    # return matched_imgs.first.attributes['src'] if matched_imgs.any?

    # return matched_imgs.first.attributes['src']
  end

  def self.choose_best_icon(imgs, uri, cases = ['name', 'domain', 'width'])
    return imgs.first if cases.empty?
    
    flag = nil
    #case1: the name is logo|icon
    if cases.include?('name') 
      matched_imgs = imgs.select { |img| img.attributes['src'] =~ /logo|icon/  }
      matched_imgs = imgs.select { |img| (50..250).include?(img.attributes['width'].to_i) } if matched_imgs.size > 1
      flag = 'name'
    elsif cases.include?('domain') && uri
      matched_imgs = imgs.select { |img| img.attributes['alt'] == uri.host  }
      matched_imgs = imgs.select { |img| (50..250).include?(img.attributes['width'].to_i) } if matched_imgs.size > 1
      flag = 'domain'
    elsif cases.include?('width')
      matched_imgs = imgs.select { |img| (50..250).include?(img.attributes['width'].to_i) }
      matched_imgs = imgs.select { |img| img.attributes['src'] =~ /log|logo|icon/  } if matched_imgs.size > 1
      matched_imgs = imgs.select { |img| img.attributes['alt'] == uri.host  } if matched_imgs.size > 1
      flag = 'width'
    else
      imgs
    end

    case matched_imgs.size
    when 1
      return matched_imgs.first
    else
      choose_best_icon(imgs, uri, cases - [flag])
    end
  end

  def self.get_favicon(url)
    doc = Nokogiri::HTML(open(url))
    icon = doc.search("link[@rel='shortcut icon']") | doc.search("link[@rel='icon']")
    icon_urls = icon.map {|i| i.attributes["href"].value()}.first
  end
end

if $0 == __FILE__
  puts SiteUtil.get_icon("http://www.mesbo.com.cn/ffe.html")
end

# url = "http://www.wedding.com/"
# def get_imgs(url)
#  agent = Mechanize.new
#     page = agent.get(url)
#     doc = Hpricot(page.body)
#     doc.search("//img")
# end