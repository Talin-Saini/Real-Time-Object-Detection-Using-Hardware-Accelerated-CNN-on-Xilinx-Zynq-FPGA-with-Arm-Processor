# 2025-11-27T19:08:43.721227800
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

client.delete_component(name="cordicb3")

client.delete_component(name="componentName")

client.delete_component(name="cordicb2")

client.delete_component(name="componentName")

client.delete_component(name="cordicb")

client.delete_component(name="componentName")

client.delete_component(name="cordicalpha_app")

client.delete_component(name="componentName")

client.delete_component(name="cordicalpha")

client.delete_component(name="cordic3")

client.delete_component(name="cordic3")

client.delete_component(name="cordic2")

client.delete_component(name="componentName")

client.delete_component(name="cordic")

client.delete_component(name="cordic")

platform = client.get_component(name="cordicneo")
status = platform.build()

comp = client.get_component(name="cordicneo_app")
comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicbeta",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordic2_new/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="cordicbeta_app",platform = "$COMPONENT_LOCATION/../cordicbeta/export/cordicbeta/cordicbeta.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cordicbeta")
domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_lib(lib_name="xilskey", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilskey_v7_7")

status = domain.set_lib(lib_name="xilflash", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilflash_v4_12")

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

status = platform.build()

comp = client.get_component(name="cordicbeta_app")
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

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

