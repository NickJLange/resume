.PHONY: render clean watch copy-to-root all

# Render CV and copy to site root
all: render copy-to-root

# Render CV from YAML
render:
	cd cv && rendercv render Nick_J._Lange_CV.yaml

# Copy rendered files to site root for local preview
copy-to-root:
	cp cv/rendercv_output/Nick_J_Lange_CV.pdf ./resume.pdf
	cp cv/rendercv_output/Nick_J_Lange_CV.html ./resume.html

# Watch for changes and auto-render
watch:
	cd cv && rendercv render Nick_J._Lange_CV.yaml --watch

# Clean rendered output
clean:
	rm -rf cv/rendercv_output
	rm -f resume.pdf resume.html

# Open the rendered PDF
open:
	open resume.pdf

# Serve site locally (requires python)
serve:
	python3 -m http.server 8000
