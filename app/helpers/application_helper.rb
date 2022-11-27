module ApplicationHelper
  def classification_formatter(*args)
    message = 'Taxonomic Rank: '
    list = args.compact
    list.each do |c|
      message += if c == list.last
                   c
                 else
                   "#{c} > "
                 end
    end
    message
  end

  def varnacular_name_formatter(species)
    if species['vernacularNames'].empty?
      species['scientificName']
    else
      "Common Name: #{species['vernacularNames'].first['vernacularName']}"
    end
  end
end
