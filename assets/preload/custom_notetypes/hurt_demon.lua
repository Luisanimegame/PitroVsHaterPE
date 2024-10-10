function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'hurt_demon' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_hurt');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
end
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'hurt_demon' then
health = getProperty('health')
if getProperty('health') > 0.1 then
setProperty('health', health- 0.15);
end
end
end