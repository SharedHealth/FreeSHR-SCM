#!/bin/bash
if [[ ! -e /playbooks ]]; then
	mkdir /playbooks
fi
#Ensure that git can handle large files
git config --global http.postBuffer 524288000
(cd /playbooks && git clone https://github.com/SharedHealth/FreeSHR-Playbooks.git)
