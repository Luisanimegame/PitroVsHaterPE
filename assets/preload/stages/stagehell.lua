function onCreate()
bfGroupx = getProperty('boyfriendGroup.x')
gfGroupx = getProperty('gfGroup.x')
gfGroupy = getProperty('gfGroup.y')
dadGroupx = getProperty('dadGroup.x')

setProperty('boyfriendGroup.x', bfGroupx+280);
setProperty('gfGroup.x', gfGroupx+360);
setProperty('gfGroup.y', gfGroupy-50);
setProperty('dadGroup.x', dadGroupx-40);

makeLuaSprite('bg', 'stages/HATER/stagebackhell', -1200, -800);
setScrollFactor('bg', 0.7, 0.7);
addLuaSprite('bg', false);
	
makeLuaSprite('stageFront', 'stages/HATER/stagefronthell', -520, -210);
setScrollFactor('stageFront', 0.9, 0.9);
addLuaSprite('stageFront', false);

setGraphicSize('stageFront', math.floor(getProperty('stageFront.width') * 1.1))
end