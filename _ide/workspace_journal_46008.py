# 2025-11-24T16:58:23.616638300
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicneo",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="cordicneop",platform = "$COMPONENT_LOCATION/../cordicneo/export/cordicneo/cordicneo.xpfm",domain = "standalone_ps7_cortexa9_0")

client.delete_component(name="cordicneop")

comp = client.create_app_component(name="cordicneo_p",platform = "$COMPONENT_LOCATION/../cordicneo/export/cordicneo/cordicneo.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cordicneo")
status = platform.build()

client.delete_component(name="cordicneo_p")

comp = client.create_app_component(name="cordicneo_p",platform = "$COMPONENT_LOCATION/../cordicneo/export/cordicneo/cordicneo.xpfm",domain = "standalone_ps7_cortexa9_0")

domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = platform.build()

component = client.get_component(name="cordicneo_p")

lscript = component.get_ld_script(path="C:\Users\ishan\ECT_110_vitis\cordicneo_p\src\lscript.ld")

lscript.regenerate()

client.delete_component(name="cordicneo_p")

client.delete_component(name="componentName")

status = platform.build()

comp = client.create_app_component(name="cordic",platform = "$COMPONENT_LOCATION/../cordicneo/export/cordicneo/cordicneo.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordic")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

