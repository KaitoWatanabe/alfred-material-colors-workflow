q = ARGV[0]
colors =[
  {name: 'red', hex: '#F44336'},
  {name: 'pink', hex: '#E91E63'},
  {name: 'purple', hex: '#9C27B0'},
  {name: 'deep purple', hex: '#673AB7'},
  {name: 'indigo blue', hex: '#3F51B5'},
  {name: 'blue', hex: '#2196F3'},
  {name: 'light blue', hex: '#03A9F4'},
  {name: 'cyan blue green', hex: '#00BCD4'},
  {name: 'teal green', hex: '#009688'},
  {name: 'green', hex: '#4CAF50'},
  {name: 'light green', hex: '#8BC34A'},
  {name: 'lime green yellow', hex: '#CDDC39'},
  {name: 'yellow', hex: '#FFEB3B'},
  {name: 'amber yellow orange', hex: '#FFC107'},
  {name: 'orange', hex: '#FF9800'},
  {name: 'deep orange red', hex: '#FF5722'},
  {name: 'brown', hex: '#795548'},
  {name: 'gray', hex: '#9E9E9E'},
  {name: 'blue gray', hex: '#607D8B'},
]
results = []
xml = ''
colors.each do |c|
    results.push(c) if c[:name].include?(q)
end
results.each do |r|
    xml += "<item uid='#{r[:name]}' arg='#{r[:hex]}' valid='YES'><title>#{r[:name]}</title><subtitle>#{r[:hex]}</subtitle><icon>icons/#{r[:name]}.png</icon></item>"
end
puts '<?xml version="1.0"?><items>' + xml + '</items>'
