$a=Array[]
def append
  puts "give value"
  t=gets.to_i
  $a << t  
end

def min
  b=$a.sort()
  puts "Minimum is: #{b.first}"
end

def max
  b=$a.sort()
  puts "Maximum is: #{b.last}"
end

def sum
  s=0
  $a.each do |i|
    s=s+i
  end
  puts "Sum is: #{s}"
end

def avg
  s=0
  $a.each do |i|
    s=s+i
  end
  s=s.to_f
  puts "Average is: #{(s/$a.length())}"
end
  
def search(x)
   flag=0
   n=$a.length()
   for i in 0..n do
      if $a[i]==x
        puts "value in #{i+1}"
	flag=1
      end
   end
   if flag==0
	puts "Number not found"
end

def del_i(x)
   puts "The value present in the index is #{$a[x]} and it is deleted"
   $a.delete_at(x)  
   puts "Resultant array : #{$a}"
end

def del_v(x)
  n=$a.length()
   for i in 0..n do
      if $a[i]==x
        break
      end
   end    
    puts "#{x} is present in the index #{i+1} and it is deleted "
   $a.delete(x)
   puts "Resultant array : #{$a}"
end

#main
while(true)
puts"Enter 1.Add,2:Min,3:Max,4:Sum,5:Avg,6:Search,7:Display,8:Delete by index,9:Delete value,10:exit"
x=gets.to_i

case x
 when 1
 	 append()	
 when 2
 	 min()
 when 3
	 max()
 when 4 
   sum()
 when 5
   avg()
 when 6
   puts "Give the value to be searched:"
   b=gets.to_i
   search(b)
 when 7
   puts "#{$a}"
 when 8
   if $a.empty?
     puts "Array Empty...Please insert Values"
     next
   end  
   puts "Give the index to be deleted:"
   b=gets.to_i
   del_i(b)
 when 9
   if $a.empty?
     puts "Array Empty...Please insert Values"
     next
   end    
   puts "Give the value to be deleted:"
   b=gets.to_i
   del_v(b)
 when 10
   exit()
 else
   puts "invalid"
 end
end


