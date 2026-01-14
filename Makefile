FC      = gfortran
FFLAGS  = -Wall -Wextra -O2
TARGET  = main
SRC     = src/main.f90

all: $(TARGET)

$(TARGET): $(SRC)
	$(FC) $(FFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET) *.o *.mod
