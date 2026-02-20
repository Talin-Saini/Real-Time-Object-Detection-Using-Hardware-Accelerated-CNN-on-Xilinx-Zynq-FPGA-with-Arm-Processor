# 2025-11-29T11:41:08.787755900
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicalpha",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordicshift/project_14/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="cordicalpha_app",platform = "$COMPONENT_LOCATION/../cordicalpha/export/cordicalpha/cordicalpha.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cordicalpha")
status = platform.build()

status = platform.build()

comp = client.get_component(name="cordicalpha_app")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="cordicalpha_app")

client.delete_component(name="cordicalpha")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicalpha",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordicshift/project_14/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

status = platform.build()

status = platform.build()

client.delete_component(name="cordicalpha")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicalpha",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordicshift/project_14/cordic.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

client.delete_component(name="cordicalpha")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordicalpha",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordicshiftfinal/cordic_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

comp = client.create_app_component(name="cordicalpha_app",platform = "$COMPONENT_LOCATION/../cordicalpha/export/cordicalpha/cordicalpha.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

platform = client.get_component(name="cordicbeta")
status = platform.build()

comp = client.get_component(name="cordicbeta_app")
comp.build()

platform = client.get_component(name="cordicalpha")
status = platform.build()

comp = client.get_component(name="cordicalpha_app")
comp.build()

platform = client.get_component(name="cordicbeta")
status = platform.build()

comp = client.get_component(name="cordicbeta_app")
comp.build()

vitis.dispose()

