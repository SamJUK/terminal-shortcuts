#!/usr/bin/env zsh
function prompt_my_magento_version() {
  local dir="$(pwd)"
  local version;

  while [[ "$dir" != "" && -d "$dir" ]]; do
    # Magento 1
    if [[ -f "$dir/app/Mage.php" ]]; then
      version="$(cat "$dir/app/Mage.php" | grep "function getVersionInfo" -A6 | tail -n 4 | awk -F\' '{ if(length($4)) print $4 }' | tr "\n" "." | sed 's/\.*\r*$//')"
      stability="$(cat app/Mage.php | grep "function getVersionInfo" -A8 | tail -n2 | awk -F\' '{ if(length($4)) print $4 }' | tr -d "\n")"
      if [[ "$stability" ]]; then
        version="$version$stability"
      fi
    fi


    # Magento 2
    if [[ -f "$dir/composer.json" || -f "$dir/composer.lock" ]]; then
      version="$(grep -A1 "\"name\": \"magento/product-community-edition\"" "$dir/composer.lock" 2>/dev/null | /usr/bin/env tail -n1 | /usr/bin/env awk -F\" '{print $4}')"

      if [[ !"$version" ]]; then
        version="$(grep 'magento/product-community-edition' "$dir/composer.json" 2>/dev/null | /usr/bin/env awk -F\" '{print $4}')"
      fi
    fi

    if [[ "$version" ]]; then
      break;
    fi

    dir=${dir%/*}
  done

  if [[ "$version" ]]; then 
    p10k segment -f orangered1 -i '' -t "$version"
  fi
}
