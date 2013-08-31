JFLAGS = -g
CLASSPATH = -classpath lib/pircbot-1.5.0/pircbot.jar:.
SOURCEPATH = -sourcepath src/*.java
TARGET = src/*.java
DSTFOLDER = -d bytecode/
all: JavaBot
JavaBot: src/*.java
	@echo "Compiling JavaBot..."
	@javac $(JFLAGS) $(SOURCEPATH) $(CLASSPATH) $(TARGET) $(DSTFOLDER)
	@echo "Done!"
clean:
	$(RM) bytecode/*  

