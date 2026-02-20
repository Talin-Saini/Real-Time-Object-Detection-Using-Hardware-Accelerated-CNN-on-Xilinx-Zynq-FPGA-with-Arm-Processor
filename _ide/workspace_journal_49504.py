# 2025-11-25T13:26:32.650172900
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

vitis.dispose()

client.delete_component(name="cordicneo")

client.delete_component(name="componentName")

client.delete_component(name="cordicbeta")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="cordic")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="cordictest")

client.delete_component(name="cordictest")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicneo",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordicneo")
status = platform.build()

client.delete_component(name="cordicneo")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordic",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordic")
domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.regenerate()

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilffs", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

status = domain.set_lib(lib_name="xilrsa", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilrsa_v1_8")

status = platform.build()

comp = client.create_app_component(name="cordic_neo",platform = "$COMPONENT_LOCATION/../cordic/export/cordic/cordic.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordic_neo")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="cordic_neo")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

comp = client.create_app_component(name="cordicbeta",platform = "$COMPONENT_LOCATION/../cordic/export/cordic/cordic.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordicbeta")
comp.build()

status = platform.build()

vitis.dispose()

