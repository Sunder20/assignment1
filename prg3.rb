
$a=Array.new

def add
   puts "Give mail id"
   t=gets
   $a << t
end

def disp
   $a.each do |x|
      puts x
   end
end

def disp_edu
   str=".edu\n"
   n=$a.length()
   for i in 0..n-1 do
      if $a[i].end_with? str
        puts $a[i]
      end
   end
end

def search(str)
    n=$a.length()
    flag=0
   for i in 0..n-1 do
      if $a[i].include? str
        puts "value in #{i+1}"
        puts $a[i]
        flag=1
      end
   end
   if flag==0
      puts "Not Found"
   end 
end  

def del_val(str)
   flag=0
   $a.each do |i|
      if i==str
        puts "'#{i.chomp}' is deleted" 
        $a.delete(i)
        flag=1
      end
   end
   if flag==0
      puts "Email Id not Found"
   end 
end

def count(str)
   c=0
   $a.each do |i|
      if i.end_with? str
         c=c+1
      end
   end
   puts "Count is : #{c}"
end

def disp_dom
  dom=[]
  $a.each do |i|
   b=i.split('.')
   d=b[-1]  
   dom << d 
  end
  dom=dom.uniq
  puts dom,"\n"
end

#main
while(true)
    if $a.empty?
        puts "Array Empty...Please insert Values"
    end
    puts"Enter 1.Add ,2:Display,3:Display edu mail ids,4:Search,5:Delete mail id by value,6:Display unique domains od all mail ids,7:count mail ids in given domain,8:exit"
    x=gets.to_i
    
    case x
     when 1
          add()	
     when 2
          disp()
     when 3
          disp_edu()
     when 4 
          puts "Enter id"
          no=gets.chomp
          search(no)
     when 5
        puts "Enter value"
        no=gets
        del_val(no)
     when 6
        disp_dom()
     when 7
        puts "Enter domain"
        no=gets
        count(no)     
     when 8
       exit()
     else
       puts "invalid"
     end
 end


   
