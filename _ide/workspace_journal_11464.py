# 2025-11-27T11:25:13.716372500
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordic3",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordicneo_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordic3")
status = platform.build()

comp = client.create_app_component(name="cordicb3",platform = "$COMPONENT_LOCATION/../cordic3/export/cordic3/cordic3.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordicb3")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="cordicb3")

client.delete_component(name="componentName")

comp = client.create_app_component(name="cordicb3",platform = "$COMPONENT_LOCATION/../cordic3/export/cordic3/cordic3.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

comp.build()

status = comp.clean()

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

vitis.dispose()

