# 2025-11-26T21:49:34.377249
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.get_component(name="cordicb")
status = comp.clean()

platform = client.get_component(name="cordic")
status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordic2",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordic2")
status = platform.build()

comp = client.create_app_component(name="cordicb2",platform = "$COMPONENT_LOCATION/../cordic2/export/cordic2/cordic2.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordicb2")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

