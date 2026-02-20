# 2026-02-19T00:15:27.894251100
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

