# 2025-11-26T15:03:45.945513900
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cordic")
status = platform.build()

comp = client.get_component(name="cordicbeta")
comp.build()

client.delete_component(name="cordic")

client.delete_component(name="cordic")

client.delete_component(name="cordicbeta")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordic",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = domain.set_lib(lib_name="xilrsa", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilrsa_v1_8")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilffs", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

status = platform.build()

comp = client.create_app_component(name="cordicbeta",platform = "$COMPONENT_LOCATION/../cordic/export/cordic/cordic.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

client.delete_component(name="cordicbeta")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

comp = client.create_app_component(name="cordicb",platform = "$COMPONENT_LOCATION/../cordic/export/cordic/cordic.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordicb")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

