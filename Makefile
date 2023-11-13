all: start_fabric.ipynb index_fabric.md

clean:
	rm index_fabric.md start_fabric.ipynb

FABSNIP := fabric-snippets/fab-config.md fabric-snippets/reserve-resources.md fabric-snippets/configure-resources.md fabric-snippets/offload-off.md fabric-snippets/draw-topo-detailed-labels.md fabric-snippets/log-in.md fabric-snippets/delete-slice.md
FABCUST := fabric-custom/intro.md fabric-custom/background.md fabric-custom/exp-define.md fabric-custom/simulation.md
start_fabric.ipynb: $(FABSNIP) $(FABCUST)
	pandoc --resource-path=../ --embed-resources --standalone --wrap=none \
                -i fabric-custom/intro.md fabric-custom/background.md \
		fabric-snippets/fab-config.md \
                fabric-custom/exp-define.md \
                fabric-snippets/reserve-resources.md fabric-snippets/extend.md \
	       	fabric-snippets/configure-resources.md \
		fabric-snippets/draw-topo-detailed-labels.md fabric-snippets/log-in.md \
                fabric-custom/simulation.md \
		fabric-snippets/delete-slice.md \
                -o start_fabric.ipynb  
		sed -i 's/attachment://g' start_fabric.ipynb

index_fabric.md: $(FABSNIP) $(FABCUST)
	pandoc --resource-path=images/ --wrap=none \
                -i fabric-custom/intro.md fabric-custom/background.md \
                fabric-snippets/fab-config.md \
                fabric-custom/exp-define.md \
                fabric-snippets/reserve-resources.md fabric-snippets/extend.md \
                fabric-snippets/configure-resources.md \
                fabric-snippets/draw-topo-detailed-labels.md fabric-snippets/log-in.md \
                fabric-custom/simulation.md \
		fabric-snippets/delete-slice.md \
		--metadata title="M/M/1 queue result - FABRIC" -o index_fabric.tmp.md
	grep -v '^:::' index_fabric.tmp.md > index_fabric.md
	rm index_fabric.tmp.md

