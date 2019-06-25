# Решаем проблему с кодировкой на Windows.
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Версия программы.
version = "Программа \"Карта из колоды\". Версия 1.1"
puts version

# Создадаим массив с набором достоинств.
values = %w[2 3 4 5 6 7 8 9 10 J Q K A]

# Создадим массив с набором мастей.
# Буби, черви, крести, пики.
suits = %w[♦ ♥ ♣ ♠]

# Выведем произвольную карты, выбрав по одному элементу из массивов
puts values.sample + suits.sample

puts "test"
