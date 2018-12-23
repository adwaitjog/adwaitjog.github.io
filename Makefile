CC=jemdoc

teach:
	$(CC) *.jemdoc; $(CC) -c mysite.conf index.jemdoc

all:
	$(CC) *.jemdoc; cd teach; $(CC) *.jemdoc; cd -; $(CC) -c mysite.conf index.jemdoc
