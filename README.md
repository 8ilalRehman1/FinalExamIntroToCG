# FinalExamIntroToCG
 The first thing that was done was the scrolling background. It was done through a shader technique known as scrolling tecture. First I took a screen shot of the background of the game, At first i took a screen shot of the whole screen but the ground isnt moving so that doesnt make sense. so i cropped it to the background only. Thats the texture i will be using for the scroll. within in the shader I have put a scroll property that can be manipulated by the user if they please. I take that property and add it to the images coordinates which causes it to move, Next i set up a plane for the scoll to act as the background of the game. This way you can see that the background is moving but the ground isnt. 
 The next thing I added was the colour correction. I got a fbx of a goomma from https://sketchfab.com/3d-models/goomba-d682adfe7978494cafc9c68507dc98cf#download The reason why I added this to the scene was to add more depth to the scene. the picture i used for the background has a goomba in it but it is flat and since its part of the image makes it very difficult to apply a shader to it, this is why i have imported a fbx of the goomba from https://sketchfab.com/3d-models/goomba-d682adfe7978494cafc9c68507dc98cf#download The original fbx has no colour so i thought that this was the perfect oppourtunity to use colour correction, after all thats the use of colour correction, to correct the colour. The colour correction shader uses a base tint and applies it to the albedo of the object. since the goomba was white this made perfect sense. 
 The next shader I have done was the hologram shader. I have placed the hologram shader onto the players cross hair. I have done this to give the players cross hair a pop to it. And in the game the cross hair in my opinion is very basic and adding a hologram to it makes it better as you can see through it making where you aim and shoot even more clear. And many games like valorant has a option for seethough on the cross hair so i thought adding one one my own would work well. The hologram shader takes the cameras view point and adds a glow effect on it using rim colour and rim power. And the hologram has the alpha data to fade which stops the center if the object from being seen which makes it great for a cross hair.
 The final shader i have implemented is the toon shader on the goomba. I have gotten the same goomba from https://sketchfab.com/3d-models/goomba-d682adfe7978494cafc9c68507dc98cf#download and the reason why i added another goomba is the same reason as the for the colour correcttion. Having a stand alone object makes implementing shaders so much easier and the object is affected by light where the images are not. I have chosen the toon shader as the game yoshis safari is not a realistic game at all. There is a lighthearted theme to the game and to encapsulate that theme i used toon shading. The entire game is cartoonish so it makes sense to add a toon shader, Now I used the toon shader on the other goomba because I wanted to show the different lighting for those two. Also having different effects on the goomba can idicate different things like goomba type and the distance from the player. Also having the toon shader makes the goomba aestectically pleasing so i have decided to implement it. Toon shader works by using a toon ramp to adjust lighting. rather then having a gradual colour change from the light, toon shading has a very steep colour change, making the object look like a cartoon. Now the ramp bands decide how the light will effect parts of the object. 
Diagrams:
Scolling Texture:
Get main texture > get coordinates of the texture > multiply coords by time > show on screen
Colour Correction:
Get colour tint > in rendering apply colour tint onto the pixels > show on screen
Hologram Shader:
Get rim colour and rim power > get view direction of camera > with reference to camera apply rim colour and rim power > Set Alpha to fade > show on screen
Toon Shader:
Get colour and ramp > get light direction > based off ramp assign shade and colour > show on screen
