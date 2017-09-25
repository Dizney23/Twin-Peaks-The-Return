def anim(string)
	string.each_char do |n|
		print n
		slt = rand(0.01..0.05)
		sleep(slt)
	end
end

def anim2(string)
	string.each_char do |n|
		print n
		slt = rand(0.01..0.10)
		sleep(slt)
	end
end


system "clear"

# def text_flasher(text)
#     puts "\e[5m#{text}\e[0m"
# end

# Thread.start{ `play -q intro.mp3`}

# sleep 3

puts "Welcome to Twin Peaks-The Return.".center(130)
Thread.start{ `play -q intro.mp3`}
puts""
puts""
puts""
sleep 3
puts "A video game based on the TV Show.".center(130)
sleep (5.2)
system "clear"

banner = File.read("twin.txt")
puts banner


anim("You wake up in a Red Room. A giant man is siiting across from you. He speaks a familar name, Agent Cooper.".center(130))
system "clear"
Thread.start{ `play -q Giant1.mp3`}

giant = File.read("twin1.txt")
giant2 = File.read("twin2.txt")

5.times do |i|
if i.odd?
    puts giant2
  else
    puts giant
  end
  i += 1
    sleep (0.7)
end


Thread.start{ `play -q redroom.mp3`}
sleep 3
system "clear" 
anim("You think that maybe you might be Agent Cooper but you cant be certain.".center(130))
sleep 2
anim("You start to remember who you are. It feels like your not supposed to be here.".center(140))
sleep 2
anim("You close your eyes and you can see something in your mind. It's a dancing dwarf?".center(130))
Thread.start{ `play -q dwarf.mp3`}
sleep 2
system "clear"

banner = File.read("dwarf.txt")
banner2 = File.read("dwarf2.txt")

dwarf_dance = [banner, banner2, banner, banner2, banner, banner2, banner, banner2, banner, banner2]

dwarf_dance.each do |x|
	puts x
	sleep 1
	system "clear"
end
i = 1


8.times do |i|
if i.odd?
    puts banner
  else
    puts banner2
  end
  i += 1
    sleep 1
    system "clear"
end

puts banner

anim("The dwarf looks at you and asks you a question.".center(130))

Thread.start{ `play -q future.mp3`}
sleep 1
anim2("Is it...................future?".center(140))
sleep (0.2)
anim("Or is it past?".center(128))
sleep 3
Thread.start{ `play -q redroom.mp3`}
system "clear"
 puts "Options:\n"
 puts " Look around the room (Look)."
 option = gets.chomp.downcase.strip

 system "clear"

 while option.empty? do
	 puts "What do you want to do?"
	 puts "Options: Look around the room...	type: Look"
	 option = gets.chomp.downcase.strip
 end

 case option
 when "Look around the room" , "look"
	 anim("Immediately you notice that the dwarf is gone.".center(125))
	 sleep 2
	 anim("As a matter of fact...everything is gone. You also notice that you are far away...".center(140))
	 Thread.start{ `play -q faraway.mp3`}
	 giant = File.read("giant1.txt")
	 giant2 = File.read("giant2.txt")
	 sleep 1

	 7.times do |i|
	 if i.odd?
     puts giant2
  	 else
     puts giant
  	 end
  	 i += 1
     sleep (0.5)

 end

	
	 sleep 5
	 system "clear"
	 puts "You start to hear a sound.".center(130)
	 Thread.start{ `play -q sound.mp3`}
	 sleep 4
	 anim("Suddenly a large tree appears in the room. It begins to shake and starts talking to you.".center(140))
	 sleep 2
	 system "clear"
	 tree = File.read("tree.txt")
	 puts tree
	 Thread.start{ `play -q thearm.mp3`}
	 anim2("............I am....................the...........arm.....................................and I....sound...........like this.........").center(130)
	 puts ""
	 sleep 3

	 anim("Do you understand? (Yes or No)".center(20))
	 arm = gets.chomp.downcase.strip


	 if arm == "no"
		 system "clear"
		 anim("The arm begins to shake again and asks you.......".center(130))
		 sleep 2
		 Thread.start{ `play -q littlegirl.mp3`}
		 anim2("......Is...........it...........the.............story..........of............the........little.........girl?".center(140))
		 sleep 4
		 system "clear"
		 sleep 4
		 anim2("The little girl. Laura!! You yell. Laura is the key but wait...who is she?....".center(130))
		 sleep 2
		 Thread.start{ `play -q ambient.mp3`}
		 anim2("Your vision fades to black....".center(140))
		 system "clear"
		 sleep 2
		 anim("...and you find yourself sitting in the red room again. Could it all be true...".center(130))
		 sleep 3
		 system "clear"


banner = File.read("dwarf.txt")
banner2 = File.read("dwarf2.txt")


i = 1

Thread.start{ `play -q dwarf.mp3`}

10.times do |i|
if i.odd?
    puts banner
  else
    puts banner2
  end
  i += 1
    sleep 1
    system "clear"
end

puts banner
puts""
puts""
anim("The dwarf is back and next to him is a girl. A blonde girl. Is it Laura??".center(140))
puts""
anim("The dwarf looks at you then at the girl and says...".center(140))
Thread.start{ `play -q sheismy.mp3`}
anim("She is my cousin but doesnt she look almost exactly like Laura Palmer?".center(130))
sleep 4
system "clear"
anim("Does she look like Laura Palmer? (Yes)".center(20))
	 she_look = gets.chomp.downcase.strip
	 Thread.start{ `play -q shelookslike.mp3`}
	 sleep 4
	 puts""
	 anim2("I feel like I know her.................................but sometimes..........................my arms bend back.".center(130))
	 sleep 2
	 puts""
	 anim2("She's filled with secrets.....Where we are from...........the birds sing.........a pretty song.".center(130))
	 sleep 4
	 Thread.start{ `play -q finalsong.mp3`}
	 system "clear"
	 anim2("Thank you for playing Twin Peaks.".center(130))
	 anim2("Twin Peaks was created by David Lynch and Mark Frost.".center(140))
	 puts ""
	 anim2("It has been a dream of mine since I was 20 years old to make a Twin Peaks Game.".center(130))
	 puts ""
	 anim2("I can't believe my dream finally came true. Dont ever stop dreaming.".center(130))
	 puts ""
	 anim2("And it's only the beginning. Thank you Wyncode!!!".center(130))
	else


	 if arm == "yes"
	 	 sleep 1
		 Thread.start{ `play -q understand.mp3`}
		 sleep 2
		 Thread.start{ `play -q ambient.mp3`}
		 anim("The arm looks at you and a foreboding feeling overcomes you.".center(130))
		 anim("You suddenly feel dizzy and the room begins to spin out of control.".center(140))
		 system "clear"
		 
		 wall1 = File.read("wall1.txt")
		 wall2 = File.read("wall2.txt")
		 wall3 = File.read("wall3.txt")
		 wall4 = File.read("wall4.txt")
		 
		 time_warp = [wall1, wall2, wall3, wall4, wall3, wall2, wall1, wall2, wall3, wall4, wall3, wall2, wall1, wall2, wall3, wall4, wall3, wall2, wall1]

		 time_warp.each do |x|
		 puts x
		 sleep (0.2)
		 system "clear"
		 end
		 Thread.start{ `play -q ambient.mp3`}

		 system "clear"
	 	 tree = File.read("tree.txt")
	 	 puts tree
	 	 Thread.start{ `play -q therealarm.mp3`}
	 	 anim2("Do you know who I am?".center(140))
		 anim("I am the arm....".center(130))
		 anim("And I sound like this...".center(140))
		 sleep 4
		 system "clear"
		 puts"Options:\n"
		 anim("Where am I? (type: Where)".center(20))
		 where = gets.chomp.downcase.strip
		 puts ""
		 sleep 1
		 Thread.start{ `play -q whereami.mp3`}
		 system "clear"
		 sleep 3
		 anim("The arm asks you a question.".center(130))
		 Thread.start{ `play -q futurepast.mp3`}
		 sleep 4
		 puts "Option:\n".center(20)
		 anim("Is it future or is it past? (type: Future or Past)".center(20))
		 sleep 5
		 system "clear"
		 puts 7.chr
		 sleep 1
		 puts "...and you find yourself sitting in a red room. You are dead...".center(110)
		 sleep 3
		 system "clear"
		 " Should have talked to Lucy.".center(110)
		 system "clear"
		end
	end
end




	




#  when "Walk over to Lucy and respond", "yes"
# 	 sleep 1
# 	 system "clear"

# 	 puts "You walk over to Lucy.".center (110)
# 	 sleep 2
# 	 puts "Lucy says to you...Sherrif Truman isnt' here but he wanted me to give you this message.".center(110)
# 	 sleep 5
# 	 puts "She reaches into an office drawer and hands you a piece of paper. You open the paper and read it".center(110)
# 	 sleep 6
# 	 system "clear"
# 	 puts "\n"
# 	 puts "\n"
# 	 puts "The paper says...".center(110)
# 	 puts "\n"
# 	 puts "\n"
# 	 puts "\n"
# 	 puts "There is a strange man named Mike in the Lobby. Didnt you see him when you came in?".center(110)
# 	 sleep 5
# 	 puts "You need to talk to him!!".center(110)
# 	 sleep 6
# 	 puts 7.chr
# 	 system "clear"
# 	 puts "Agent Cooper you should know that a good detective always examines his surroundings.".center(110)
# 	 sleep 5
# 	 puts "Try again.".center(110)
# 	 sleep 5
# end
