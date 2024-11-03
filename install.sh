#!/bin/bash

#Check if Git is installed
if ! git --version &> /dev/null; then
	echo "Git is not installed! Install Git firstly."
	exit 1
fi

# Read alias files 
for alias_file in ./aliases/*.sh; do
	# Read each line in alias file
	while IFS='=' read -r alias comand; do
		# Skip empty lines and lines which starts with #
		[[ -z "$alias" || "$alias" == \#* ]] && continue
		
		git config --global alias."$alias" "$command"
	done < "$alias_file"
done

echo "Alias instalation complete!"
