# 2026-02-12T00:49:17.217347
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.get_component(name="cnn")
comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

client.delete_component(name="matrix_accelerator")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

status = client.export_projects(components = ["cnn"], system_projects = [], include_build_dir = True, dest = "C:\Users\ishan\ECT_110_vitis\archive.zip")

comp.run(operation="PACKAGE")

