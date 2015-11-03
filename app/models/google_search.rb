class GoogleSearch < ActiveRecord::Base
require 'stopwords'
  def filter_special
    filter_special=['http', 'us','new','info','facebook','phone','magazine']
  end


  def create_array(search_string)
    #Create new Agent  
    initial_hash = get_result(search_string)
    initial_hash.each do |key,value|
       sleep(1)
       puts key
       search_string_2 ='"' + search_string + '" ' + ' "' + key + '"'
       second_hash = get_result(search_string_2)
       puts second_hash
    end  
    
    
    return 
  end
  
  def dup_hash(ary)
    ary.inject(Hash.new(0)) { |h,e| h[e] += 1; h }.select { 
      |k,v| v > 1 }.inject({}) { |r, e| r[e.first] = e.last; r }
  end  
  
  def get_result(search_string)
    a = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }
    #get Search Result
    a.set_proxy '41.89.96.22', 3128
    a.get('http://google.com/') do |page|
      page = a.get('https://www.google.com/search?site=&source=hp&q=' + search_string )
    #Search Content
      page2 = page.search("span.st")
    #Get Result
      text_array = Array.new
      page2.each do|result|
        #snowball filter
        filter = Stopwords::Snowball::Filter.new "en"
        filter2 = Stopwords::Filter.new filter_special
        #create Array
        result_array =filter2.filter filter.filter result.text.downcase.gsub(/http:\/\/\w/,'').gsub(/[^a-z ]/i, '').split
        #add array
        text_array.concat(result_array)
      end
      text_array.delete_if{|x| x.length <= 3 }.reject { |c| c.empty? }
      final_hash = text_array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
      return final_hash
    end
  end
  
end
