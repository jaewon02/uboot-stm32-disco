time sudo openocd \
	-f ./stm32f429discovery.cfg  \
        -c "init" \
        -c "reset init" \
        -c "flash probe 0" \
        -c "flash info 0" \
        -c "flash write_image erase ./stm32429-disco/u-boot.bin 0x08000000" \
        -c "reset run" \
        -c "shutdown"

