# 2025-11-22T22:03:09.420650400
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

# 2025-11-22T22:03:09.419249
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "cordictest",hw_design = "$COMPONENT_LOCATION/../../ECT110/testcordic/design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = client.add_platform_repos(platform=["c:\Users\ishan\ECT_110_vitis\cordictest"])

proj = client.create_sys_project(name="cordic_project", platform="$COMPONENT_LOCATION/../cordictest/export/cordictest/cordictest.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

proj = client.get_sys_project(name="cordic_project")

proj.build(build_comps = False)

status = client.delete_sys_project(name="cordic_project")

comp = client.create_app_component(name="cordicbeta",platform = "$COMPONENT_LOCATION/../cordictest/export/cordictest/cordictest.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="cordictest")
status = platform.build()

comp = client.get_component(name="cordicbeta")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

