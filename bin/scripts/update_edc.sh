migrate=""
update_permissions=""
update_ubuntu=""
green=`tput setaf 2`
reset=`tput sgr0`

eval "$(conda shell.bash hook)"

while true; do
    read -p "Update this script? [y/n]" yn
    case $yn in
        [Yy]* ) update_script="y"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

if [ "${update_script}" = "y" ]; then
  echo "${green}Copying script ... ${reset}"
  cd ~/app \
  && git checkout docs/forms_reference.md \
  && git checkout master \
  && git pull \
  && cp bin/scripts/update_edc.sh ~/
  echo "${green}Done ... ${reset}"
  exit
fi

while true; do
    read -p "Update repo and env? [y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Run migrations? [y/n]" yn
    case $yn in
        [Yy]* ) migrate="y"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Update static files? [y/n]" yn
    case $yn in
        [Yy]* ) collect_static="y"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Update UBUNTU? [y/n]" yn
    case $yn in
        [Yy]* ) update_ubuntu="y"; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo "${green}Start ... ${reset}"

cd ~/app \
  && git checkout master \
  && git pull \
  && version=$(head -n 1 VERSION) \
  && echo "Version ${version}"

cd ~/app \
  && git checkout master \
  && git pull \
  && conda activate edc \
  && pip install -U pip \
  && pip install --no-cache-dir --upgrade-strategy eager --upgrade -r requirements/stable-v${version}.txt \
  && pip install -e . --no-cache-dir --upgrade-strategy eager --upgrade

if [ "${migrate}" = "y" ]; then
  echo "${green}Running migrations ... ${reset}"
  cd ~/app \
  && python manage.py migrate
fi

 if [ "${collect_static}" = "y" ]; then
  echo "${green}Updating static files ... ${reset}"
  cd ~/app \
  && python manage.py collectstatic
fi

if [ "${update_ubuntu}" = "y" ]; then
  echo "${green}Updating ubuntu ... ${reset}"
  sudo apt-get update \
  && sudo apt-get upgrade
fi

echo "${green}Restarting gunicorn / gunicorn-uat ... ${reset}"
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo systemctl restart gunicorn-uat

echo "${green}Done.${reset}"
