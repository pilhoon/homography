all: libhomographytest.so Jtest.class

Jtest.class: Jtest.java
	javac Jtest.java

libhomographytest.so : Jtest.cpp Jtest.h 
	gcc -fPIC -shared -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_nonfree -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab \
		-I /usr/java/jdk1.7.0_07/include/ -I /usr/java/jdk1.7.0_07/include/linux \
	-o libhomographytest.so \
	Jtest.cpp

clean:
	rm -f libhomographytest.so

run: Jtest.class libhomographytest.so
	java -Djava.library.path=. Jtest ${ARGS}
