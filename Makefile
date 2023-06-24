install: ${HOME}/.local/share/applications/com.unrealengine.UE5Editor.desktop /usr/local/bin/UnrealEngine
	ls -alh "${HOME}/.local/share/applications/com.unrealengine.UE5Editor.desktop"
	ls -alh /usr/local/bin/UnrealEngine

${HOME}/.local/share/applications/com.unrealengine.UE5Editor.desktop:
	cp -v com.unrealengine.UE5Editor.desktop "${HOME}/.local/share/applications/com.unrealengine.UE5Editor.desktop"

/usr/local/bin/UnrealEngine:
	sudo install -v -m555 ./UnrealEngine /usr/local/bin/UnrealEngine

clean:
	-rm -v "${HOME}/.local/share/applications/com.unrealengine.UE5Editor.desktop"
	-sudo rm -v /usr/local/bin/UnrealEngine
