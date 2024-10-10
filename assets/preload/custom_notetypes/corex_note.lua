function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'corex_note' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_prerigo');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
end
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'corex_note' then
setProperty('health', -666);
end
end