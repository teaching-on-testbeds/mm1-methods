all: start_fabric.ipynb

clean:
	rm start_fabric.ipynb

FABSNIP := fabric-snippets/fab-config.md fabric-snippets/reserve-resources.md fabric-snippets/configure-resources.md fabric-snippets/offload-off.md fabric-snippets/draw-topo-detailed-labels.md fabric-snippets/log-in.md fabric-snippets/delete-slice.md
start_fabric.ipynb: $(FABSNIP) fabric-custom/exp-define.md
	pandoc --wrap=none \
                -i fabric-snippets/fab-config.md \
                fabric-custom/exp-define.md \
                fabric-snippets/reserve-resources.md fabric-snippets/configure-resources.md \
		fabric-snippets/draw-topo-detailed-labels.md fabric-snippets/log-in.md \
		fabric-snippets/delete-slice.md \
                -o start_fabric.ipynb  
