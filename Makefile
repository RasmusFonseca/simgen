main  : main.cpp potter.o driver.o params.o models.o viewer.o shaker.o keeper.o linker.o bumper.o sorter.o fixers.o util.o cell.o data.o geom.o util.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
# looker, minder, helper and setter have empty shells in driver.cpp
	c++ -O3 main.cpp -o simgen potter.o driver.o  params.o models.o viewer.o shaker.o keeper.o linker.o bumper.o sorter.o fixers.o util.o cell.o data.o geom.o -lGL -lGLU -lglut -lpthread -lm


potter.o : potter.cpp util.hpp data.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 potter.cpp

driver.o : driver.cpp util.hpp data.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 driver.cpp

params.o : params.cpp util.hpp data.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 params.cpp

models.o : models.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 models.cpp

viewer.o : viewer.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 viewer.cpp

shaker.o : shaker.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 shaker.cpp

keeper.o : keeper.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 keeper.cpp

linker.o : linker.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 linker.cpp

bumper.o : bumper.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 bumper.cpp

sorter.o : sorter.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 sorter.cpp

fixers.o : fixers.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 fixers.cpp

cell.o : cell.cpp util.hpp data.hpp cell.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 cell.cpp

data.o : data.cpp util.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 data.cpp

geom.o : geom.cpp util.hpp geom.hpp Vec.hpp Mat.hpp
	c++ -c -O3 geom.cpp

util.o : util.cpp util.hpp
	c++ -c -O3 util.cpp