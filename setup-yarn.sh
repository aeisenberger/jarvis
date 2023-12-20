read -p "Do you want to start the yarn setup? (yes/no): " start_setup

if [[ $start_setup == "yes" ]] || [[ $start_setup == "y" ]]; then
    npm install --global yarn
else
    echo "yarn setup skipped."
fi
