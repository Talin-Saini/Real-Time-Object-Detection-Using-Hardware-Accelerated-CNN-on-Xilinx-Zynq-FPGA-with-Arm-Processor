# 2026-02-12T09:48:24.624220
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.get_component(name="cnn")
comp.run(operation="PACKAGE")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cnn_platform",hw_design = "$COMPONENT_LOCATION/../../ECT110/project_7/cnn_controler_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="cnn_app",platform = "$COMPONENT_LOCATION/../cnn_platform/export/cnn_platform/cnn_platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp = client.get_component(name="cnn_app")
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

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

