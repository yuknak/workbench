#!/bin/bash

old_domain="wb.local"

read -p "Input new domain (example: wb.domain.com):" new_domain 

files=(
    "compose/app.yaml"
    "compose/backend.yaml"
    "compose/cryptonodes.yaml"
    "compose/proxy.yaml"
    "config/barong.env.erb"
    "config/peatio.env.erb"
    "config/toolbox.yaml.erb"
    "config/trading-ui.env"
    "config/integration/fixtures/barong.json"
    "config/integration/fixtures/peatio.json"
    "config/barong/seeds.yml"
)

for file in ${files[@]}; do
    sed -i "s/${old_domain}/${new_domain}/g" ${file}
done

