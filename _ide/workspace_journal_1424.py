# 2026-02-17T17:44:25.753813200
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cnn_platform")
domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

status = domain.set_lib(lib_name="xilffs", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilrsa", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilrsa_v1_8")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = domain.regenerate()

status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

vitis.dispose()

