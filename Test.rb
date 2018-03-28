require 'rubygems'
require 'nokogiri'
require 'open-uri'
url = 'https://en.wikipedia.org/wiki/Sharon_Stone_filmography'
html = Nokogiri::XML(open url)

out=[]





puts "     ***** Entering find_films_by_actor with #{@title}."
	test_table=html.search("//tr/th")
	titleposition=0
	flag=0
	test_table.each do |test_node|
		tr_test_child_nodes=test_node.children.select {|node| !(node.inner_text == "\n")}
			test_nodes1=tr_test_child_nodes.select {|newnode| puts newnode.inner_text 
		if (newnode.inner_text=="Title") 
			then flag=titleposition
			break
		end
		titleposition=titleposition+1
		}
	
	end
	puts "title is at position: "+titleposition.to_s
 	 all_tables = html.search("//tr/td[2]/i/a[@href]")
	 puts "printing all movies done by actor"
 	 all_tables.each do |tr_node|
		tr_childs_less_newline_nodes = tr_node.children.select {|node| !(node.inner_text == "\n")}
		starring_node=tr_childs_less_newline_nodes.select {|newnode| puts newnode.inner_text}
	 end
	  
	all_tables.each do |link|
 		link_info = link['href']
		out << link_info
	end
	
	out.uniq.collect {|link| link.strip_out_name}
	

 def strip_out_name
	 if self =~ /^http:\/\/en.wikipedia.org\/wiki\//
		 then name = self.gsub(/http:\/\/en.wikipedia.org\/wiki\//, "")
	 elsif self =~ /^en.wikipedia.org\/wiki\//
		 then name = self.gsub(/en.wikipedia.org\/wiki\//, "")
	 elsif self =~ /^\/wiki\//
		 then name = self.gsub(/\/wiki\//, "")
	 elsif !(self =~ URI::regexp)
		then print "URI looks bad; can't strip name: "; p "#{self}"; name = self
	 end
	name
  end
		
	  '''
  	out.uniq.collect {|link| link.strip_out_name}
	puts out
	'''
  

  

  
 

 	  

#p event.xpath('./title').text
#p event.xpath('./categories').text