local defaultNotePos = {};

function onSongStart()
for i = 0,7 do       
y = getPropertyFromGroup('strumLineNotes', i, 'y')
table.insert(defaultNotePos, {x,y})
end
end

function onUpdate(elapsed)
songPos = getPropertyFromClass('Conductor', 'songPosition');
currentBeat = (songPos / 1000) * (bpm / 60)

if curStep > 128 and curStep < 1408 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 8 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
	
if curStep > 1409 and curStep < 1663 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 0 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
	
if curStep > 1663 and curStep < 1933 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 12 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
	
if curStep > 1933 and curStep < 1982 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 0 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
	
if curStep > 1982 and curStep < 3009 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 16 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
	
if curStep > 3009 then
for i=0,7 do
setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 0 * math.cos((currentBeat + i*0.25) * math.pi))
end
end
end