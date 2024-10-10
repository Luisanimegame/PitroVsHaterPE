function onCreate()
bfGroupx = getProperty('boyfriendGroup.x')
bfGroupy = getProperty('boyfriendGroup.y')
gfGroupx = getProperty('gfGroup.x')
gfGroupy = getProperty('gfGroup.y')
dadGroupx = getProperty('dadGroup.x')
dadGroupy = getProperty('dadGroup.y')

setProperty('boyfriendGroup.x', bfGroupx+280);
setProperty('gfGroup.x', gfGroupx-20);
setProperty('dadGroup.x', dadGroupx-40);

setScrollFactor('boyfriendGroup', 0.9, 0.9);
setScrollFactor('dadGroup', 0.9, 0.9);
setScrollFactor('gfGroup', 0.9, 0.9);

makeLuaSprite('bg', 'stages/HATER/stageback', -80, 0);
setScrollFactor('bg', 0.2, 0.2);
addLuaSprite('bg', false);
	
makeLuaSprite('stageFront', 'stages/HATER/stagefront', -520, -280);
setScrollFactor('stageFront', 0.9, 0.9);
addLuaSprite('stageFront', false);

setGraphicSize('stageFront', math.floor(getProperty('stageFront.width') * 1.1))
end