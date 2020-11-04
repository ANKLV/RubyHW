# функция вывода условия задачи
def task objective
	puts "Дан целочисленный массив. " + objective 
end
# функция вывода разделительной строки
def bar
	puts "------------------" 
 end

 # задачи выполнены не по порядку, нумерация для подсчета

task "Найти все четные элементы." # 1
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts '' # пустая строка для разделения
puts a.select {|e| e.even?} # решение задачи
bar

task "Найти все нечетные элементы." # 2
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.select {|e| e.odd?} # решение задачи
bar

task "Вывести вначале все его четные элементы, 
а затем - нечетные." # 3
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.select {|e| e.even?} # решение задачи
puts a.select {|e| e.odd?}
bar

task "Вывести вначале все его нечетные элементы, 
а затем - четные." # 4 
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.select {|e| e.odd?} # решение задачи
puts a.select {|e| e.even?}
bar

task "Необходимо вывести вначале его элементы с 
четными индексами, а затем - с нечетными." # 5
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
a.each_with_index {|e,i| puts e if i%2 == 0} # решение задачи
a.each_with_index {|e,i| puts e if i%2 != 0}
bar

task "Необходимо вывести вначале его элементы с 
нечетными индексами, а затем - четными." # 6
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
a.each_with_index {|e,i| puts e if i%2 != 0} # решение задачи
a.each_with_index {|e,i| puts e if i%2 == 0}
bar

task "Найти количество четных элементов." # 7
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.count {|e| e.even?} # решение задачи
bar

task "Найти количество нечетных элементов." # 8
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.count {|e| e.odd?} # решение задачи
bar

task "Найти среднее арифметическое его элементов." # 9
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.sum.fdiv(a.size) # решение задачи
bar

task "Найти среднее арифметическое квадратов его элементов." # 10
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.map {|e| e ** 2}.sum.fdiv(a.size) # решение задачи
bar

task "Упорядочить его по возрастанию." # 11
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.sort # решение задачи
bar

task "Упорядочить его по убыванию." # 12
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.sort.reverse # решение задачи
bar

task "Найти индекс минимального элемента." # 13
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.index(a.min) # решение задачи
bar

task "Найти индекс максимального элемента." # 14
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.index(a.max) # решение задачи
bar

task "Осуществить циклический сдвиг элементов 
массива влево на одну позицию." # 15
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a<<a.shift # решение задачи
bar

task "Осуществить циклический сдвиг элементов 
массива вправо на одну позицию." # 16
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.unshift(a.pop) # решение задачи
bar

task "Найти количество минимальных элементов." # 17
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.count(a.min) # решение задачи
bar

task "Найти количество максимальных элементов." # 18
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.count(a.max) # решение задачи
bar

task "Найти минимальный четный элемент." # 19
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.find_all {|e| e.even?}.min # решение задачи
bar

task "Найти минимальный нечетный элемент." # 20
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.find_all {|e| e.odd?}.min # решение задачи
bar

task "Найти максимальный четный элемент." # 21
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.find_all {|e| e.even?}.max # решение задачи
bar

task "Найти максимальный нечетный элемент." # 22
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.find_all {|e| e.odd?}.max # решение задачи
bar

task "Найти минимальный положительный элемент." # 23
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.select{|e| e>0}.min # решение задачи
bar

task "Найти максимальный отрицательный элемент." # 24
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.select{|e| e<0}.max # решение задачи
bar

task "Найти два наибольших элемента." # 25
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.sort.uniq.last 2 # решение задачи
bar

task "Найти два наименьших элемента." # 26
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.sort.uniq.first 2 # решение задачи
bar

task "Найти количество элементов, расположенных 
перед первым минимальным." # 27
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[0...a.index(a.min)].count # решение задачи
bar

task "Найти количество элементов, расположенных 
перед первым максимальным." # 28
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[0...a.index(a.max)].count # решение задачи
bar

task "Найти количество элементов, расположенных 
после первого максимального." # 29
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[a.index(a.max)...-1].count # решение задачи
bar

task "Найти количество элементов, расположенных 
после первого минимального." # 30
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[a.index(a.min)...-1].count # решение задачи
bar

task "Найти количество элементов, расположенных 
перед последним максимальным." # 31
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[0...a.rindex(a.max)].count # решение задачи
bar

task "Найти количество элементов, расположенных 
перед последним минимальным." # 32
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[0...a.rindex(a.min)].count # решение задачи
bar

task "Найти количество элементов, расположенных 
после последнего максимального." # 33
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[a.rindex(a.max)...-1].count # решение задачи
bar

task "Найти количество элементов, расположенных 
после последнего минимального." # 34
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a[a.rindex(a.min)...-1].count # решение задачи
bar

task "Найти количество элементов, между первым
 и последним минимальным." # 35
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
fmin = a.index(a.min)
lmin = a.rindex(a.min)        # решение задачи
puts a[fmin+1 ... lmin].count
bar

task "Найти количество элементов, между первым
 и последним максимальным." # 36
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
fmax = a.index(a.max)
lmax = a.rindex(a.max)        # решение задачи
puts a[fmax+1 ... lmax].count
bar

task "Заменить все положительные элементы
 на значение минимального." # 37
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.map {|e| e > 0 ? a.min : e} # решение задачи
bar

task "Заменить все положительные элементы
 на значение максимального." # 38
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.map {|e| e > 0 ? a.max : e} # решение задачи
bar

task "Заменить все отрицательные элементы
 на значение минимального." # 39
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.map {|e| e < 0 ? a.min : e} # решение задачи
bar

task "Заменить все отрицательные элементы
 на значение максимального." # 40
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.map {|e| e < 0 ? a.max : e} # решение задачи
bar

task "Преобразовать его, вставив перед каждым
 положительным элементом нулевой." # 41
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.flat_map {|e| e>0? [a[0], e] : e} # решение задачи
bar

task "Преобразовать его, вставив перед каждым
 отрицательным элементом нулевой." # 42
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.flat_map {|e| e<0? [a[0], e] : e} # решение задачи
bar

task "Преобразовать его, вставив после каждого 
положительного элемента нулевой элемент." # 43
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.flat_map {|e| e>0? [e, a[0]] : e} # решение задачи
bar

task "Преобразовать его, вставив после каждого 
отрицательного элемента нулевой элемент." # 44
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts a.flat_map {|e| e<0? [e, a[0]] : e} # решение задачи
bar

task "И число К. Если существует элемент, меньший К, 
то вывести true; в противном случае вывести false." # 45
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10) # создаем число К
print a # вывод исходных данных
puts ''
puts "k = " + k.to_s # вывод исходных данных
puts a.any? {|e| e<k} # решение задачи
bar

task "И число К. Если существует элемент, больший К, 
то вывести true; в противном случае вывести false." # 46
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10) # создаем число К
print a # вывод исходных данных
puts ''
puts "k = " + k.to_s # вывод исходных данных
puts a.any? {|e| e>k} # решение задачи
bar

task "И число К. Если все элементы массива меньше К, 
то вывести true; в противном случае вывести false." # 47
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10) # создаем число К
print a # вывод исходных данных
puts ''
puts "k = " + k.to_s # вывод исходных данных
puts a.all? {|e| e<k} # решение задачи
bar

task "И число К. Если все элементы массива больше К, 
то вывести true; в противном случае вывести false." # 48
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10) # создаем число К
print a # вывод исходных данных
puts ''
puts "k = " + k.to_s # вывод исходных данных
puts a.all? {|e| e>k} # решение задачи
bar

task "И число К. Вывести количество элементов, меньших К." # 49
a = Array.new(5){rand(-10..10)} #создаем массив
k = rand(-10..10) # создаем число К
print a # вывод исходных данных
puts ''
puts "k = " + k.to_s # вывод исходных данных
puts a.select {|e| e<k}.count # решение задачи
bar

task "Вывести индексы массива в том порядке, в котором 
соответствующие им элементы образуют убывающую последовательность." # 50
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts (0...a.size).sort_by{|i| a[i]}.reverse # решение задачи
bar

task "Вывести индексы массива в том порядке, в котором 
соответствующие им элементы образуют возрастающую последовательность." # 51
a = Array.new(5){rand(-10..10)} #создаем массив
print a # вывод исходных данных
puts ''
puts (0...a.size).sort_by{|i| a[i]} # решение задачи
bar