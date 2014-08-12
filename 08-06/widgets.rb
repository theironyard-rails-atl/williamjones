require "yaml"
widgets = YAML::load(File.open("widgets.yml"))

# * The most and least expensive widget
puts "The most expensive widget: "
puts widgets.max_by { |w| w[:price] }
puts
puts "The least expensive widget: "
puts widgets.min_by { |w| w[:price] }
puts

# * The total revenue and profit from all widgets sold
puts "Total revenue of all widgets sold: "
# tr = price * sold
# profit = tr - cost_to_make * sold


# * The top 10 best selling widgets
puts "Top 10 best selling widgets: "
puts widgets.sort_by { |w| w[:price] }.reverse!.first(10)
puts

# * The number of widgets sold in each department
