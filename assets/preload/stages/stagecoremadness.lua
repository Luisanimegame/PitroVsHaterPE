function onCreate()
bfGroupx = getProperty('boyfriendGroup.x')
bfGroupy = getProperty('boyfriendGroup.y')
gfGroupx = getProperty('gfGroup.x')
gfGroupy = getProperty('gfGroup.y')
dadGroupx = getProperty('dadGroup.x')
dadGroupy = getProperty('dadGroup.y')

setProperty('boyfriendGroup.x', bfGroupx+80);
setProperty('boyfriendGroup.y', bfGroupy-20);
setProperty('gfGroup.x', gfGroupx-40);
setProperty('gfGroup.y', gfGroupy+1);
setProperty('dadGroup.x', dadGroupx+20);
setProperty('dadGroup.y', dadGroupy-220);

setScrollFactor('gfGroup', 1, 1);

makeLuaSprite('stageFront', 'stages/CORE/corebgmadness', -1120, -620);
setScrollFactor('stageFront', 1, 1);
addLuaSprite('stageFront', false);

makeAnimatedLuaSprite('amanddica', 'stages/CORE/w2/AMANDDICA_M', 0 -280, 0 +400)
addAnimationByPrefix('amanddica', 'bop', 'BOP', 24, false)
setScrollFactor('amanddica', 1, 1);
addLuaSprite('amanddica', false);

makeLuaSprite('screencore', 'stages/CORE/corebgSCREENMADNESS', 0, 0);
setObjectCamera('screencore', 'camhud');
addLuaSprite('screencore', false);

setGraphicSize('stageFront', math.floor(getProperty('stageFront.width') * 1.1))
end

function onBeatHit()
if curBeat % 2 == 0 then
playAnim('amanddica', 'bop', true)
end
end