# 2025-11-29T13:31:13.027046500
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cordicalpha")
status = platform.build()

comp = client.get_component(name="cordicalpha_app")
comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordictheta",hw_design = "$COMPONENT_LOCATION/../../ECT110/cordicshiftfinal/cordic.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="cordictheta")
status = platform.build()

comp = client.create_app_component(name="cordictheta_app",platform = "$COMPONENT_LOCATION/../cordictheta/export/cordictheta/cordictheta.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="cordictheta_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

