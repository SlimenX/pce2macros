# What is “pce2macros”?
It is a tool designed to convert hexadecimal numbers to decimal values for the volume section of the PC Engine, which can be used to recreate game instruments from this console. 
It can be used with both Deflemask and Furnace Tracker
## How to Use
1. Open the [Geargrafx](https://github.com/drhelius/geargrafx) emulator and select the game
2. Once the game is open, go to the “Debug” section and click “Enable” to activate debug mode
<img width="658" height="564" alt="image" src="https://github.com/user-attachments/assets/b3d79ffc-1d02-4acb-a1e4-d76cecb1de42" />

3. Once you've done that, you need to display the Disassembler and the PSG windows
<img width="846" height="601" alt="image" src="https://github.com/user-attachments/assets/10078956-46bb-41e5-b699-deae0f97283f" />

Note: When the disassembler is displayed the game pauses so you can resume it

<img width="231" height="219" alt="image" src="https://github.com/user-attachments/assets/e1892a9b-6d70-4f99-a25a-ac1ff5de9371" />

4. To explain this part i'm going to try to recreate the ```Stage 1 - Bomberman``` bass

<img width="486" height="437" alt="image" src="https://github.com/user-attachments/assets/391e8325-3165-40c8-882b-f36bb0be0c2d" />

<img width="452" height="241" alt="image" src="https://github.com/user-attachments/assets/1a4110fe-44da-4c87-a70d-324e60a2069c" />

   To recreate the instrument you need to be at the part of the game where the song plays and somewhere where you won't die easily. You can use save states or passwords to help you. You need to select the channel where the instrument you’re going to recreate is located and write down the hexadecimal numbers that appear in the “Control” section. Using the “Step Frame” button you can advance frame by frame to get a better look to these numbers, I usually write them down in Notepad

5. Once you've written down the numbers that make up the instrument you'll need to open the ```pce2macros``` tool, paste the numbers in the "Input" field and press Enter to translate it, Then you can copy the numbers
   
<img width="748" height="424" alt="image" src="https://github.com/user-attachments/assets/2bc0b5b6-96f3-45c7-af5b-6b19b415a7ea" />

6. That's when you go to the tracker you'll be using, in this case Furnace, create a new instrument and paste the numbers provided by the tool into the “Volume” field

<img width="409" height="408" alt="image" src="https://github.com/user-attachments/assets/06ac42bb-e848-4e6c-b05d-cfe4c8709a7e" />

And thats it! I hope this will be a great tool for people who want to create high-quality rips or for those who want to create content in the style of a specific game ^^

## Future plans
In the future a pitch-to-macro converter will be added. I was recently trying to create a table to identify each note by its hexadecimal number; this will be very useful for recreating drum kits
