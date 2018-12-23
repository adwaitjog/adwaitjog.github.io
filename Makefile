CC=jemdoc

teach:
	$(CC) teach/*.jemdoc; $(CC) -c mysite.conf index.jemdoc
index:
	$(CC) *.jemdoc; $(CC) -c mysite.conf index.jemdoc
all:
	$(CC) *.jemdoc; $(CC) teach/*.jemdoc; $(CC) -c mysite.conf index.jemdoc
