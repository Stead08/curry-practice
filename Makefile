install:
	sh curry2go.sh cypm install
build: 
	cd src && sh ../curry2go.sh curry2goc --compile Main  

run:
	cd src && sh ../curry2go.sh curry2goc --run Main
