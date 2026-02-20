# 2026-02-17T16:58:06.282046200
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cnn_platform")
domain = platform.get_domain(name="zynq_fsbl")

status = domain.regenerate()

comp = client.get_component(name="cnn")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

client.delete_component(name="cnn_platform")

client.delete_component(name="cnn_platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cnn_platform",hw_design = "$COMPONENT_LOCATION/../../ECT110/project_7/cnn_controler_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

status = domain.set_lib(lib_name="lwip220", path="C:\Xilinx\2025.1\Vitis\data\embeddedsw\ThirdParty\sw_services\lwip220_v1_2")

vitis.dispose()

