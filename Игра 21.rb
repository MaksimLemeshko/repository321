
def hod1    #Метод, отвечающий за наш ход Игрока №1
 kart=1+rand(9)
  if kart==1
   @score1=@score1+6
   puts "Выпало шесть" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==2
   @score1=@score1+7
   puts "Выпало семь" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==3
   @score1=@score1+8
   puts "Выпало восемь" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==4
   @score1=@score1+9
   puts "Выпало девять" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==5
   @score1=@score1+10
   puts "Выпало десять" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==6
   @score1=@score1+8
   puts "Выпал Валет" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==7
   @score1=@score1+9
   puts "Выпала Дама" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==8
   @score1=@score1+10
   puts "Выпал Король" 
   puts "Ваш счёт: #{@score1}"
  elsif kart==9
   @score1=@score1+11
   puts "Выпал ТУЗ" 
   puts "Ваш счёт: #{@score1}"
 end
   puts ""
end

def hod2    #Метод, отвечающий за наш ход Игрока №2
 kart=1+rand(9)
  if kart==1
   @score2=@score2+6
   puts "Выпало шесть" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==2
   @score2=@score2+7
   puts "Выпало семь" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==3
   @score2=@score2+8
   puts "Выпало восемь" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==4
   @score2=@score2+9
   puts "Выпало девять" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==5
   @score2=@score2+10
   puts "Выпало десять" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==6
   @score2=@score2+8
   puts "Выпал Валет" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==7
   @score2=@score2+9
   puts "Выпала Дама" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==8
   @score2=@score2+10
   puts "Выпал Король" 
   puts "Ваш счёт: #{@score2}"
  elsif kart==9
   @score2=@score2+11
   puts "Выпал ТУЗ" 
   puts "Ваш счёт: #{@score2}"
  end
  puts ""
end

def chek    #Метод, проверяющий победу игроков
 if @score1==21
  puts "Игрок 1 победил!"
  @win=1
 elsif @score2==21
  puts "Игрок 2 победил!"
  @win=1
 elsif @score1>@score2 and @score1<21 and @h1==0 and @h2==0
  puts "Игрок 1 победил!"
  @win=1
 elsif @score2>@score1 and @score2<21 and @h1==0 and @h2==0
  puts "Игрок 1 победил!"
  @win=1
 elsif @score1>21 and @score2<21
  puts "Игрок 2 победил!"
  @win=1
 elsif @score2>21 and @score1<21
  puts "Игрок 1 победил!"
  @win=1
 elsif @score2>21 and @score1>21
  puts "Ничья!"
  @win=1 
 elsif @h1==0 and @h2==0
  puts "Ничья!"
  @win=1
 end
end

puts "Игра очко"  #Начало самой программы 
@win=0
@h1=1
@h2=1
@score1=0
@score2=0
 while @win==0 do
 puts ""
 puts ""
  puts "Ход Игрока №1"
   if @h1==1 
     puts "Будете брать карту? (1-Да/0-Пас)"
     a1=gets
     a1=a1.to_i
     if a1==1
      hod1
     elsif a1==0
      @h1==0
   end
  end 
  puts "Ход Игрока №2"
   if @h2==1 
     puts "Будете брать карту? (1-Да/0-Пас)"
     a2=gets
     a2=a2.to_i
     if a2==1
      hod2
     elsif a2==0
      @h2==0
  end  
  end
  chek
  end

