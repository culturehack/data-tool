xml.instruct! :xml, :version => '1.1'
xml.dataset(:id => @source['id'], :path => @source['path']) do
  xml.title @source['title']  
  xml.publisher @source['publisher'] if @source['publisher']
  xml.first_published_at @source['first_published_at'] if @source['first_published_at']

  xml.update_frequency @source['update_frequency'] if @source['update_frequency']
  xml.media @source['media'] if @source['media']

  xml.score @source['score'] if @source['score']
  
  xml.categories do
    @source['categories'].each do |category|
      xml.category do
        xml.name category
      end
    end 
  end

  if @source['size']   
    xml.size(:code => size_abbreviation(@source['size'])) do 
      xml.name @source['size']
    end
  end  

  if @source['size_description']
    xml.size_description @source['size_description']
  end

  xml.licences do 
    @source['licences'].each do |licence|
      xml.licence(:code => licence) do
        xml.name(licence_full_name(licence))
      end
    end
  end

  if @source['licence_description']
    xml.licence_description @source['licence_description']
  end


  xml.formats do 
    @source['formats'].each do |format|
      xml.format do
        xml.name format
      end
    end
  end

  xml.content do
    xml.cdata! @source['content']
  end

end