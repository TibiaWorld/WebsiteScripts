if [[ -z "${TIBIAWORLD_ACCESS_TOKEN}" ]]; then
  echo "TIBIAWORLD_ACCESS_TOKEN has not been set."
  exit 1
fi

(export GITHUB_API_TOKEN=$TIBIAWORLD_ACCESS_TOKEN && ./gh-get.sh TibiaWorld WebsiteBuilds latest build.zip)
echo "Unzipping build folder."
unzip -o build.zip -d build