def task objective
	puts "Дан целочисленный массив. " + objective # вывод условия задачи
end
def bar
	puts "------------------"
 end

task "Найти все четные элементы."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select {|e| e.even?}
bar

task "Найти все нечетные элементы."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select {|e| e.odd?}
bar

task "Вывести вначале все его четные элементы, 
а затем - нечетные."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select {|e| e.even?}
puts a.select {|e| e.odd?}
bar

task "Вывести вначале все его нечетные элементы, 
а затем - четные."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select {|e| e.odd?}
puts a.select {|e| e.even?}
bar

task "Необходимо вывести вначале его элементы с 
четными индексами, а затем - с нечетными."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
a.each_with_index {|e,i| puts e if i%2 == 0}
a.each_with_index {|e,i| puts e if i%2 != 0}
bar

task "Необходимо вывести вначале его элементы с 
нечетными индексами, а затем - четными."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
a.each_with_index {|e,i| puts e if i%2 != 0}
a.each_with_index {|e,i| puts e if i%2 == 0}
bar

task "Найти количество четных элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.count {|e| e.even?}
bar

task "Найти количество нечетных элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.count {|e| e.odd?}
bar

task "Найти среднее арифметическое его элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.sum.fdiv(a.size)
bar

task "Найти среднее арифметическое квадратов его элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.map {|e| e ** 2}.sum.fdiv(a.size)
bar

task "Упорядочить его по возрастанию."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.sort
bar

task "Упорядочить его по убыванию."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.sort.reverse
bar

task "Найти индекс минимального элемента."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.index(a.min)
bar

task "Найти индекс максимального элемента."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.index(a.max)
bar

task "Осуществить циклический сдвиг элементов 
массива влево на одну позицию."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a<<a.shift
bar

task "Осуществить циклический сдвиг элементов 
массива вправо на одну позицию."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.unshift(a.pop)
bar

task "Найти количество минимальных элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.count(a.min)
bar

task "Найти количество максимальных элементов."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.count(a.max)
bar

task "Найти минимальный четный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.find_all {|e| e.even?}.min
bar

task "Найти минимальный нечетный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.find_all {|e| e.odd?}.min
bar

task "Найти максимальный четный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.find_all {|e| e.even?}.max
bar

task "Найти максимальный нечетный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.find_all {|e| e.odd?}.max
bar

task "Найти минимальный положительный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select{|e| e>0}.min
bar

task "Найти максимальный отрицательный элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.select{|e| e<0}.max
bar

task "Найти два наибольших элемента."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.sort.uniq.last 2
bar

task "Найти два наименьших элемента."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.sort.uniq.first 2
bar

task "Найти количество элементов, расположенных 
перед первым минимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[0...a.index(a.min)].count
bar

task "Найти количество элементов, расположенных 
перед первым максимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[0...a.index(a.max)].count
bar

task "Найти количество элементов, расположенных 
после первого максимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[a.index(a.max)...-1].count
bar

task "Найти количество элементов, расположенных 
после первого минимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[a.index(a.min)...-1].count
bar

task "Найти количество элементов, расположенных 
перед последним максимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[0...a.rindex(a.max)].count
bar

task "Найти количество элементов, расположенных 
перед последним минимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[0...a.rindex(a.min)].count
bar

task "Найти количество элементов, расположенных 
после последнего максимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[a.rindex(a.max)...-1].count
bar

task "Найти количество элементов, расположенных 
после последнего минимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a[a.rindex(a.min)...-1].count
bar

task "Найти количество элементов, между первым
 и последним минимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
fmin = a.index(a.min)
lmin = a.rindex(a.min)
puts a[fmin+1 ... lmin].count
bar

task "Найти количество элементов, между первым
 и последним максимальным."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
fmax = a.index(a.max)
lmax = a.rindex(a.max)
puts a[fmax+1 ... lmax].count
bar

task "Заменить все положительные элементы
 на значение минимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.map {|e| e > 0 ? a.min : e}
bar

task "Заменить все положительные элементы
 на значение максимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.map {|e| e > 0 ? a.max : e}
bar

task "Заменить все отрицательные элементы
 на значение минимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.map {|e| e < 0 ? a.min : e}
bar

task "Заменить все отрицательные элементы
 на значение максимального."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.map {|e| e < 0 ? a.max : e}
bar

task "Преобразовать его, вставив перед каждым
 положительным элементом нулевой."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.flat_map {|e| e>0? [a[0], e] : e}
bar

task "Преобразовать его, вставив перед каждым
 отрицательным элементом нулевой."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.flat_map {|e| e<0? [a[0], e] : e}
bar

task "Преобразовать его, вставив после каждого 
положительного элемента нулевой элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.flat_map {|e| e>0? [e, a[0]] : e}
bar

task "Преобразовать его, вставив после каждого 
отрицательного элемента нулевой элемент."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts a.flat_map {|e| e<0? [e, a[0]] : e}
bar

task "И число К. Если существует элемент, меньший К, 
то вывести true; в противном случае вывести false."
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10)
print a
puts ''
puts "k = " + k.to_s
puts a.any? {|e| e<k}
bar

task "И число К. Если существует элемент, больший К, 
то вывести true; в противном случае вывести false."
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10)
print a
puts ''
puts "k = " + k.to_s
puts a.any? {|e| e>k}
bar

task "И число К. Если все элементы массива меньше К, 
то вывести true; в противном случае вывести false."
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10)
print a
puts ''
puts "k = " + k.to_s
puts a.all? {|e| e<k}
bar

task "И число К. Если все элементы массива больше К, 
то вывести true; в противном случае вывести false."
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10)
print a
puts ''
puts "k = " + k.to_s
puts a.all? {|e| e>k}
bar

task "И число К. Вывести количество элементов, меньших К."
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10)
print a
puts ''
puts "k = " + k.to_s
puts a.select {|e| e<k}.count
bar

task "Вывести индексы массива в том порядке, в котором соответствующие 
им элементы образуют убывающую последовательность."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts (0...a.size).sort_by{|i| a[i]}.reverse
bar

task "Вывести индексы массива в том порядке, в котором соответствующие 
им элементы образуют возрастающую последовательность."
a = Array.new(5){rand(-10..10)} #создаем массив
print a
puts ''
puts (0...a.size).sort_by{|i| a[i]}
bar