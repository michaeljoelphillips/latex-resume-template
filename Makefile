resume.pdf: resume.tex resume.cls
	docker run --rm -it -v `pwd`:/app -w /app dxjoke/tectonic-docker tectonic ./resume.tex
