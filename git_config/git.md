# Git Dokumentation

## Git installieren und einrichten

TODO

## Abläufe

### Alle Lokalen Änderungen auf Github/Gitlab pushen.
1. git st
2. git all
3. git cm "new commit"
4. git ps

## Git Befehle

### Befehle ohne Abkürzungen

git add -p
Die geänderten Zeilen können mit y (yes) und n (no) zur Staging-Umgebung hinzugefügt werden.

### Abkürzungen von Git Config

all (*add --all*)

Alle geänderten Files zur Staging-Umgebung hinzufügen.

---

coa (*checkout -- .*)

Alle lokalen Änderungen entfernen.

---

co (*checkout*)

Filename mitgeben um gezielt Änderungen zu entfernen.

---

com (*checkout master*)

Auf den Master Branch wechseln.

---

ct (*commit*)

Gestagte Änderungen commiten.

---

ca (*commit --amend*)

Gestagte Änderungen zum letzten Commit hinzufügen.

---

cm (*commit -m*)

Gestagte Änderungen committen und Message mitgeben.

---

cl (*clone*)

Git Repository klonen.

---

cp (*cherry-pick*)

Bestehender Commit anhand von Commit Hash in aktuellen Branch kopieren.

---

d (*diff*)

Lokale Änderungen anschauen.

---

f (*fetch*)

Alle neuen Remote Branches holen.

---

gp (*grep -p*)

In Projekt nach Wort suchen.

---

l (*log*)

Commit History anzeigen.

---

lg (*log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit*)

Detaillierte farbige Commit History anzeigen.

---

m (*merge*)

Angegebener Branch wird in lokalen Branch gemerged.

---

ps (*push*)

Lokaler Branch auf Github pushen.

---

psom (*push origin master*)

Lokaler Branch in Master Branch auf Github pushen.

---

pl (*pull*)

Änderungen von Branch auf Github holen.

---

plom (*pull origin master*)

Änderungen von Master Branch auf Github holen.

---

st (*status*)

Die geänderten Files anzeigen.

---

br (*branch*)

Die lokalen Branches und den aktuellen Branch anzeigen.

---

rebase, rb oder up (*pull --rebase*)

Die Commits des lokalen Branches auf den Stand eines Remote Branch setzen.
Rebase ist besser als Merging, da es eine klare Abfolge der Commits ergibt.

---

rbc (*rebase --continue*)

Wenn bei einem Rebase ein Konflikt aufgetreten ist und dieser behoben wurde,
kann der unterbrochene Vorgang mit diesem Befehl fortgeführt werden.

---

rbh (*!"f() { NUMBER=$1; git rebase -i HEAD~$NUMBER; }; f"*)

Den xten Commit der History umbennenen. Es öffnet sich ein Fenster mit den Commits.
Wenn pick in reword geändert wird, erscheint ein Popup in welchem der Name des Commits geändert werden kann.

---

rs (*reset*)

Die Änderungen in der Staging-Umgebung wieder unstagen.

---

reset-head (*reset HEAD^*)

Die Änderungen des letzten Commits in lokale Änderungen verwandeln.

---

reset-hard (*reset --hard*)

Die lokalen Änderungen löschen.

---

reset-commit (*reset HEAD^ --hard*)

Den letzten Commit löschen.

---
    
rv (*remote -v*)

Remote Repositories anzeigen, welche mit dem lokalen Repository verknüpft sind.

---

cb (*checkout -b*)

Lokal einen neuen Branch erstellen.

---

db (*branch -D*)

Lokal einen Branch löschen.

---

ignore (*update-index --skip-worktree*)

Ein oder mehrere Files ignorieren. Die Änderungen werden versteckt und können wieder hervorgerufen werden.

---

unignore (*update-index --no-skip-worktree*)

Die Änderungen der ignorierten Files wieder anzeigen.

---

ignored (*!git ls-files -v | grep \"^S\"*)

Alle ignorierten Files auflisten.
