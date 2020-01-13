class Student
    attr_accessor :rno, :sname, :state ,:branch, :cgpa

    def details
        puts "Enter student name :"
        @sname=gets
        puts "Enter student rollno :"
        @rno=gets
        puts "Enter state :"
        @state=gets
        puts "Enter branch :"
        @branch=gets
        puts "Enter student cgpa :"
        @cgpa=gets
    end

    def display
        puts "Student Name   : #{@sname}"
        puts "Student RollNo : #{@rno}"
        puts "Student State  : #{@state}"
        puts "Student Branch : #{@branch}"
        puts "Student CGPA   : #{@cgpa}"
    end 
end 

$a=[]

def append
    x=Student.new
    x.details
    $a << x  
  end

def disp_all()
    c=1
    n=$a.length()
    for i in 0..n do 
        puts "Displaying Student #{c} \n"
        $a[i].display
        c=c+1
    end
end

def by_branch(br)
    flag=0
    $a.each do |i|
        if (i.branch==br)
            i.display
            flag=1
        end
    end
    if flag==0
        puts "Invalid Branch"
    end
end

def by_state(st)
    flag=0
    $a.each do |i|
        if i.state==st
            i.display
            flag=1
        end
    end
    if flag==0
        puts "Invalid State"
    end
end

def search_r(no)
   
    n=$a.length()
    flag=0
   for i in 0..n-1 do
      if $a[i].rno==no
        puts "value in #{i+1}"
        $a[i].display
        flag=1
        break
      end
   end
   if flag==0
    puts "Given Roll no. not found"
   end
end

def search_n(str)
    flag=0
    n=$a.length()
   for i in 0..n-1 do
      if $a[i].sname.include? str
        puts "value in #{i+1}"
        $a[i].display
        flag=1
      end
   end
   if flag==0
    puts "Given Student name not found"
   end
end

def del_rno(no)
    flag=0
    n=$a.length()
    for i in 0..n-1 do
       if $a[i].rno==no
         puts "Deleted #{$a[i].sname}"
         $a.delete_at(i)
         flag=1
         break
       end
    end
    if flag==0
        puts "Given Roll No. not found"
    end
 end 

def count_st(st)
    c=0
    $a.each do |i|
        if i.state==st
            c=c+1
        end
    end
    puts "No. of Students in state #{st} : #{c}"
end

def count_br(br)
    c=0
    $a.each do |i|
        if i.branch==br
            c=c+1
        end
    end
    puts "No. of Students in state #{br} : #{c}"
end

#main
while(true)
    if $a.empty?
        puts "Array Empty...Please insert Values"
    end
    puts"Enter 1.Add New Student ,2:Display All Students,3:Dispaly by Branch,4:Display by State,5: Search by rollno ,6:Search by name ,7:Delete by rollno ,8:Count Students by State,9:Count Students by Branch,10:exit"
    x=gets.to_i
    
    case x
     when 1
          append()	
     when 2
          disp_all()
     when 3
         puts"Enter Branch"
         br=gets
         by_branch(br)
     when 4 
        puts"Enter State"
        st=gets
        by_state(st)
     when 5
        puts "Enter rollno to search"
        no=gets
        search_r(no)
     when 6
        puts "Enter name to search"
        str=gets.chomp
        search_n(str)
     when 7
        if $a.empty?
            puts "Array Empty...Please insert Values"
            next
        end  
        puts "Enter Rollno to delete"
        no=gets
        del_rno(no)
     when 8
       if $a.empty?
         puts "Array Empty...Please insert Values"
         next
       end  
       puts"Enter State"
       st=gets
       count_st(st)
     when 9
       if $a.empty?
         puts "Array Empty...Please insert Values"
         next
       end    
       puts"Enter Branch"
        br=gets
       count_br(br)
     when 10
       exit()
     else
       puts "invalid"
     end
    end

