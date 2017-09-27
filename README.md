# Twin-Peaks-The-Return

This is my second attempt at a REPL game based on the TV Series by the same name Twin Peaks. 

It has been a dream of mine to create a game based on the Twin Peaks unvierse ever since I was
20 years old. 

I really want to thank a few amazing people who made this possible. I think this game is absolutely 
awesome and I plan to continue growing it and developing it further. But none of this would have happened 
if I hadnt had the amazing support I recieved as a student in Wyncode.

So first of all Thank you Wyncode. What an amazing place filled with absolutely wonderful people. 
I want to personally thank Ed Toro (a.k.a David Cross) who is probably one of the most brilliant
people I have ever met. Thank for the foudnation you built in me. I also want to thank Don Morehouse 
who's kindness and patience has been an absolute blessing in my life. I really realy want to thank 
Israel Martinez who labored patiently with me in getting this code to look so beautiful and work 
so perfectly. Also Angel and Alex who encouraged me and gave me support and enthusiasm for continuing 
to develop this. Also a very important shout out to Keith Tang (your fucking brilliant!!) for helping 
me get sound working on this using an awesome command that very few people knew even existed!! 
Our teacher Auston...you have no idea how excited I am to be in your class. You are an amazing instructor. 
I have learned so much from  you. Last but not least. PK your the best!!! You are like a mentor to me. 
Thank you for investing in me and challenging me to be the best that I can!!

Ok here is what you gotta do to get this thing working with sound. Follow these easy steps:

In order to get the sound working in Ubuntu you need to install the Sox Audio Player:

In Ubuntu

1. Open a terminal and run "sudo apt install sox"

(And for playing special formats like mp3 you must install its libraries):

2. Run "sudo apt install libsox-fmt-mp3"

(If you want to use it with full libraries, you must install libsox-fmt-all package):

3. Run "sudo apt install libsox-fmt-all"

In a Mac

1. Press Command+Space and type Terminal and press enter/return key.

2. Run in Terminal app: ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

3. Run brew install sox.

Thats all. Hope you enjoy this fun little journey into an interactive REPL game.

