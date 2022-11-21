module ApplicationHelper
  def sidebar_item_style
    'flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-red-700'
  end

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

  def varnacular_name_formatter(specie)
    if specie['vernacularNames'].empty?
      'Vernacular Name: N/A'
    else
      "Vernacular Name: #{specie['vernacularNames'].first['vernacularName']}"
    end
  end
end
