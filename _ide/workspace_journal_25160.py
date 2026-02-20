# 2025-11-22T16:15:28.975009400
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

client.delete_component(name="cordicbeta")

vitis.dispose()

