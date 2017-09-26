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

def response_one(option)
	case option
	when "look"
		system "clear"
		anim("Immediately you notice that the dwarf is gone.")
		sleep 2
		puts "\n"
		anim("As a matter of fact...everything is gone. You also notice that you are far away...")
		sleep 1
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
			system "clear"
		end


		sleep 5
		system "clear"
		puts "You start to hear a sound."
		Thread.start{ `play -q sound.mp3`}
		sleep 4
		puts "\n"
		anim("Suddenly a large tree appears in the room. It begins to shake and starts talking to you.")
		sleep 2
		system "clear"
		tree = File.read("tree.txt")
		puts tree
		Thread.start{ `play -q thearm.mp3`}
		anim2("............I am....................the...........arm.....................................and I....sound...........like this.........").center(130)
		puts ""
		sleep 3
	end
	arm = ""

	until ["yes","no"].include? arm
		anim("Do you understand? (Yes or No)".center(20))
		arm = gets.chomp.downcase.strip
	end
	arm
end

def response_two(option)

 	system "clear"
	anim("The arm begins to shake again and asks you.......".center(110))
	sleep 2
	Thread.start{ `play -q littlegirl.mp3`}
	anim2("......Is...........it...........the.............story..........of............the........little.........girl?".center(140))
	sleep 4
	system "clear"
	sleep 4
	anim2("The little girl. Laura!! You yell. Laura is the key but wait...who is she?....")
	sleep 2
	Thread.start{ `play -q ambient.mp3`}
	anim2("Your vision fades to black....")
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

	sleep 2
	banner = File.read("redroom.txt")
	puts banner
	anim("...and you find yourself sitting in the red room again. Could it all be true...")
	sleep 3
	system "clear"


	dwarf = File.read("dwarf.txt")
	dwarf2 = File.read("dwarf2.txt")
	dwarf3 = File.read("dwarf3.txt")
	dwarf4 = File.read("dwarf4.txt")
	dwarf5 = File.read("dwarf5.txt")
	dwarf6 = File.read("dwarf6.txt")
	dwarf7 = File.read("dwarf7.txt")
	dwarf8 = File.read("dwarf8.txt")

	dwarf_dance = [dwarf, dwarf2, dwarf3, dwarf4, dwarf5, dwarf6, dwarf7, dwarf8]

	# i = 1

	Thread.start{ `play -q dwarf.mp3`}

	dwarf_dance.each do |x|
		puts x
		sleep 1
		system "clear"
	end
	# 10.times do |i|
	# 	if i.odd?
	#     puts banner
	#   else
	#     puts banner2
	#   end
	#   i += 1
	#     sleep 1
	#     system "clear"
	# end




	puts dwarf8
	puts""
	anim("The dwarf is back and next to him is a girl. A blonde girl. Is it Laura??".center(140))
	puts""
	anim("The dwarf looks at you then at the girl and says...".center(140))
	Thread.start{ `play -q sheismy.mp3`}
	anim("She is my cousin but doesnt she look almost exactly like Laura Palmer?".center(130))
	File.read("laura.txt")
	sleep 4
	system "clear"

		# --- Lines 225 - 244 introduces third question with only one option (yes) ----- # 

	
	anim("Does she look like Laura Palmer? (Yeah)".center(20))
	she_look = gets.chomp.downcase.strip
	while she_look != "yeah"
		puts "Wrong answer try again. Type: Yeah"
		she_look = gets.chomp.downcase.strip
	end
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
end



	# --- Lines 247 - 325 loads what happens if you answer (yes) 
	# --- to second question on line 166, with an if statment. -----#
def response_three(option) #this one takes yes

 	sleep 1
	Thread.start{ `play -q understand.mp3`}
	sleep 2
	Thread.start{ `play -q ambient.mp3`}
	anim("The arm looks at you and a foreboding feeling overcomes you.".center(130))
	puts "\n"
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
  tree1 = File.read("tree1.txt")
  tree_flash = [tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1, tree, tree1]
  tree_flash.each do |x|
  	puts x
  	sleep (0.1)
  	system "clear"
  end
  puts tree
  Thread.start{ `play -q therealarm.mp3`}
  anim2("Do you know who I am?".center(140))
	anim("I am the arm....".center(130))
	anim("And I sound like this...".center(140))
	sleep 4
	system "clear"
	tree_flash.each do |x|
  	puts x
  	sleep (0.1)
  	system "clear"
  end
  	# insert loop here....
	puts"Options:\n"
	anim("Where am I? type: Where\n".center(20))
	where = gets.chomp.downcase.strip
	puts ""
	sleep 2
	Thread.start{ `play -q whereami.mp3`}
	system "clear"
	sleep 3
	anim("The arm asks you a question.".center(110))
	Thread.start{ `play -q futurepast.mp3`}
	sleep 4
	puts "\n"
	puts "Option:\n"
	anim("Is it future or is it past? type: Future or Past\n")
	future_past = gets.chomp.downcase.strip
	sleep 5
	system "clear"
	puts 7.chr
	sleep 1
	anim("The dwarf is back and next to him is a girl. A blonde girl. Is it Laura??")
	puts""
	anim2("The dwarf looks at you then at the girl and says...")
	Thread.start{ `play -q sheismy.mp3`}
	anim2("She is my cousin but doesnt she look almost exactly like Laura Palmer?")
	sleep 5
	system "clear"
	she_look=""
	until ["yeah"].include? she_look
		anim("Does she look like Laura Palmer? type: Yeah\n".center(20))
		she_look = gets.chomp.downcase.strip
	end
	she_look
end

		
def response_four(option)
	case option
	when "yeah"

		Thread.start{ `play -q shelookslike.mp3`}
		sleep 4
		puts""

		anim2("I feel like I know her.................................but sometimes..........................my arms bend back.")
		sleep 2
		puts""
		anim2("She's filled with secrets.....Where we are from...........the birds sing.........a pretty song.")
		sleep 4
		Thread.start{ `play -q finalsong.mp3`}
		system "clear"
		anim2("Thank you for playing Twin Peaks.".center(120))
		anim2("Twin Peaks was created by David Lynch and Mark Frost.".center(120))
		puts ""
		anim2("It has been a dream of mine since I was 20 years old to make a Twin Peaks Game.".center(110))
		puts ""
		anim2("I can't believe my dream finally came true. Dont ever stop dreaming.".center(120))
		puts ""
		anim2("And it's only the beginning. Thank you Wyncode!!!".center(130))
	end
end

# ---Begin game by clearing screen ----- #

system "clear"

# ---Begin game by playing intro sound ----- #

Thread.start{ `play -q intro.mp3`}

sleep 3

# --- Title screen begins here. ----- #

puts "Welcome to Twin Peaks-The Return.".center(120)
Thread.start{ `play -q intro.mp3`}
puts""
puts""
puts""
sleep 3
puts "A video game based on the TV Show.".center(120)
sleep (5.2)
system "clear"

# --- Lines 43 - 63 loads up talking Giant section ----- #

# banner = File.read("redroom.txt")
# puts banner

red = File.read("redroom.txt")
red1 = File.read("redroom2.txt")
red2 = File.read("redroom3.txt")
red3 = File.read("redroom4.txt")
red4 = File.read("redroom5.txt")

red_move = [red, red2, red3, red4, red, red2, red3, red4]

red_move.each do |x|
	puts x
	sleep (0.4)
	system "clear"
end		
puts red4
puts "\n"
puts "\n"
anim("You wake up in a Red Room. A giant man is sitting across from you. He speaks a familar name, Agent Cooper.")
sleep 2
system "clear"
system "clear"
puts "\n"
puts "\n"
puts "\n"
puts "\n"
puts "\n"
Thread.start{ `play -q Giant1.mp3`}

giant = File.read("twin1.txt")
giant2 = File.read("twin2.txt")

11.times do |i|
	if i.odd?
    puts giant2
  else
    puts giant
  end
  i += 1
    sleep (0.7)
    system "clear"
end

	# --- Lines 66 - 133 Loads the Dancing Dwarf section. ----- #

sleep 1
Thread.start{ `play -q redroom.mp3`}
sleep 2
system "clear" 
anim("You think that maybe you might be Agent Cooper but you cant be certain.")
sleep 2
puts ""
anim("You start to remember who you are. It feels like your not supposed to be here.")
sleep 2
puts ""
anim("You close your eyes and you can see something in your mind. It's a dancing dwarf?")
Thread.start{ `play -q dwarf.mp3`}
sleep 2
system "clear"

		dwarf = File.read("dwarf.txt")
		dwarf2 = File.read("dwarf2.txt")
		dwarf3 = File.read("dwarf3.txt")
		dwarf4 = File.read("dwarf4.txt")
		dwarf5 = File.read("dwarf5.txt")
		dwarf6 = File.read("dwarf6.txt")
		dwarf7 = File.read("dwarf7.txt")
		dwarf8 = File.read("dwarf8.txt")

		dwarf_dance = [dwarf, dwarf2, dwarf3, dwarf4, dwarf5, dwarf6, dwarf7, dwarf8]

dwarf_dance.each do |x|
	puts x
	sleep 1
	system "clear"
end
# i = 1


# 8.times do |i|
# 	if i.odd?
#     puts banner
#   else
#     puts banner2
#   end
#   i += 1
#     sleep 1
#     system "clear"
# end

# puts banner
puts dwarf8
puts"\n"
anim("The dwarf looks at you and asks you a question.")

Thread.start{ `play -q future.mp3`}
sleep 1
puts "\n"
puts ""
anim2("Is it...................future?".center(140))
sleep (0.2)
anim("Or...........is.....it....past?".center(128))
sleep 3

# --- Lines 118 - 121 Prompts the user to make the (first choice). ----- #

Thread.start{ `play -q redroom.mp3`}
anim("Options.\n".center(18))
puts "\n"
anim("Look around the room...	type: Look")
puts "\n"
option = gets.chomp.downcase.strip
Thread.start{ `play -q redroom.mp3`}
while option != "look"
	puts "Wrong answer try again."
	option = gets.chomp.downcase.strip
end


# option here is the response from Look around the room and is always "look"
option = response_one(option)
if option == "yes"
	option = response_three(option)
else
	option = response_two(option)
end
response_four(option)

# --- Lines 123 - 166 Introduces the first respone method with a case/when 
# --- to our (first choice). ----- # 
# --- Introduces second question with a (yes or no) option. ----- #


	# --- Lines 171 - 900 loads what happens if you answer (no) 
	# --- to the second question on line 166, with an if statment. ----- #



# answer = true
# # system "clear"

# while answer
# 	option = gets.chomp.downcase
# 	if option == "look"
# 		response_one(option)
# 	elsif option == "yes"
# 		respose_three(option)
# 	else
# 		puts "Wrong answer try again."
# 	# puts "Options: Look around the room...	type: Look"
# 	# option = gets.chomp.downcase.strip
# 	end
# end