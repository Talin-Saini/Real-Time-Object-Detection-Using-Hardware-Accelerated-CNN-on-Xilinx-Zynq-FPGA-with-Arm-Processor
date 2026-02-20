# 2025-11-27T14:50:21.436986200
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicneo",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordicneo")
status = platform.build()

comp = client.create_app_component(name="cordicneo_app",platform = "$COMPONENT_LOCATION/../cordicneo/export/cordicneo/cordicneo.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordicneo_app")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicalpha",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordic2_new/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="cordicalpha_app",platform = "$COMPONENT_LOCATION/../cordicalpha/export/cordicalpha/cordicalpha.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cordicalpha")
status = platform.build()

status = platform.build()

comp = client.get_component(name="cordicalpha_app")
comp.build()

status = comp.clean()

client.delete_component(name="cordicneo")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicneo",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

comp.build()

platform = client.get_component(name="cordicneo")
status = platform.build()

comp = client.get_component(name="cordicneo_app")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

