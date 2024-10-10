function onBeatHit()
if downscroll then
setProperty('iconP1.y', 20.23)
setProperty('iconP2.y', 20.23)

setProperty('iconP1.y', 10)
setProperty('iconP2.y', 10)
end
setProperty('iconP1.scale.x', 1.23)
setProperty('iconP1.scale.y', 1.23)
setProperty('iconP2.scale.x', 1.23)
setProperty('iconP2.scale.y', 1.23)
runTimer('wait', '0.03', '0')
end

function onTimerCompleted(wait)
setProperty('iconP1.scale.x', 1)
setProperty('iconP2.scale.x', 1)
end

function onCreate()
makeLuaText('name', songName .. ' ' .. difficultyName .. ' - KE 1.5.1', 0, 0, 703);
setObjectCamera('name', 'camhud');
addLuaText('name');
end

function onUpdateScore()
setTextString('bro', 'Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: '..string.format("%.f%%",rating * 100).. ' | '..ratingFC)
end

function onUpdatePost(elapsed)
if downscroll then
setProperty('bro.y', 150)
end
setProperty('bro.borderSize', 1.50);
setProperty('name.borderSize', 1.50);
setProperty('songPosTxt.borderSize', 1.50);
end

function onEndSong()
setProperty('songPosTxt.visible', false);
end

function onCreatePost()
if rating == 0 then
makeLuaText('bro', 'Score: '..score..' | Combo Breaks: '..misses..' | Accuracy: 0% | N/A', 0, 403, 703);
setObjectCamera('bro', 'camhud');
addLuaText('bro');

setTimeBarColors('26FF5C', '797D86');

setProperty('timeBarBG.scale.x', 1.61);
setProperty('timeBar.scale.x', 1.62);
setProperty('timeTxt.visible', false);
setProperty('scoreTxt.visible', false);
setProperty('grpNoteSplashes.visible', false);

makeLuaText('songPosTxt', songName, 0, 0, getProperty('timeBarBG.y'));
screenCenter('songPosTxt', 'x');
setObjectOrder('songPosTxt', 10)
addLuaText('songPosTxt');
setProperty('songPosTxt.visible', false);
end
end

function onSongStart()
setProperty('songPosTxt.visible', true);
end