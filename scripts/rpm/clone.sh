#!/bin/bash
if [[ ! -e /playbooks ]]; then
	mkdir /playbooks
fi
(cd /playbooks && git clone https://github.com/SharedHealth/FreeSHR-Playbooks.git)