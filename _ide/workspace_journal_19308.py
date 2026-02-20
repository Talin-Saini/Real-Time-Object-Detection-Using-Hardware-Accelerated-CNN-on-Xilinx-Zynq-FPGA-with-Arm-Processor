# 2026-02-20T21:39:33.317249100
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.get_component(name="cnn")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

vitis.dispose()

