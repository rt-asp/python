genexecutable:
	cp main.py rtasp
	sed  -i '1i #!/usr/bin/python\n' rtasp

install: genexecutable
	sudo cp rtasp /usr/bin/
	sudo chmod +x /usr/bin/rtasp
	rm rtasp