def janken
    count = 0  

    puts "何本勝負？(press 1 or 3 or 5)"
    count = gets.chomp.to_i
    puts "#{count}本勝負を選びました"

    #回数と勝ち負けの数
    c = 0
    w = 0
    l = 0

    until count == c do  
        puts "#{c+1}本目"
        puts "じゃんけん・・・(press g or c or p)"
        puts "[g]グー\n[c]チョキ\n[p]パー"

        you = gets.chomp
        cpu = rand(3)

        #数字に変換
        if you == "g"
            you = 0
        elsif you == "c"
            you = 1 
        elsif you == "p"
            you = 2
        end
   
        jankens = ["グー", "チョキ","パー"]
        puts "あなた:#{jankens[you]}, CPU:#{jankens[cpu]}"

        if you == cpu
            puts "あいこで"
            
        elsif(you == 0 && cpu == 1)||(you == 1 && cpu == 2)||(you == 2 && cpu == 0)
            puts "勝ち!"
            c += 1
            w += 1
            puts "#{w}勝#{l}敗"
        else
            puts "負け!"
            c += 1
            l += 1
            puts "#{w}勝#{l}敗"
        end

        if count == c
            puts "結果"
            if w > l
                puts "#{w}勝#{l}敗であなたの勝ち"
            else
                puts "#{w}勝#{l}敗であなたの負け"
            end
        end
    end
end

janken

