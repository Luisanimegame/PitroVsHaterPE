function onCreate()
bfGroupx = getProperty('boyfriendGroup.x')
bfGroupy = getProperty('boyfriendGroup.y')
gfGroupx = getProperty('gfGroup.x')
gfGroupy = getProperty('gfGroup.y')
dadGroupx = getProperty('dadGroup.x')
dadGroupy = getProperty('dadGroup.y')

setProperty('boyfriendGroup.x', bfGroupx-20);
setProperty('boyfriendGroup.y', bfGroupy-110);
setProperty('gfGroup.x', gfGroupx-40);
setProperty('gfGroup.y', gfGroupy+40000);
setProperty('dadGroup.x', dadGroupx+20);
setProperty('dadGroup.y', dadGroupy-220);

setScrollFactor('gfGroup', 1, 1);

makeLuaSprite('stageFront', 'stages/casaantiga', -1000, -620);
setScrollFactor('stageFront', 1, 1);
addLuaSprite('stageFront', false);

setGraphicSize('stageFront', math.floor(getProperty('stageFront.width') * 1.1))
end