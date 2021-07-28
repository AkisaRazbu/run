install:
	git fetch
	sudo cp ./run.sh /usr/bin/run
	echo "Installation complete"
clean:
	sudo rm -rf /usr/bin/run
