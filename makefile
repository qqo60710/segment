VERIOG = iverilog
TARGET = segment7.vcd
TEMP = segment7.vvp
$(TARGET) : segment7.vvp
	vvp segment7.vvp

$(TEMP): segment7_tb.v segment7.v
	$(VERIOG) -o segment7.vvp segment7_tb.v segment7.v
clean:
	-del $(TARGET)
	-del $(TEMP)