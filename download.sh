#!/usr/bin/env bash
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <URL> <DESTINATION>"
  echo "   eg: $0 352581 ./output"
  echo "   define API_KEY in .env"
  echo "   export \$(cat .env | xargs) && ./download.sh 352581 ./output/ "
  exit 1
fi

URL=${1}
DESTINATION=${2}
API_TOKEN="Authorization: Bearer ${API_KEY}"
echo ${API_KEY}
CONTENT_TYPE="Content-Type: application/json"
USER_AGENT_STRING="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"



echo "Downloading model from ${URL}, please wait..."

cd ${DESTINATION}


response=$(curl https://civitai.com/api/v1/models/${URL} -H "Content-Type: application/json" -X GET | jq '.modelVersions[0].id')

echo "download from model number: ${response}"

if ! curl -LOJH "${API_TOKEN}" "https://civitai.com/api/download/models/"${response}; then
  echo "ERROR: curl command failed. Unable to download the file."
  exit 1
fi

echo "Model downloaded successfully!"
# curl -L -H "Content-Type: application/json" -H "Authorization: Bearer ${API_KEY}" https://civitai.com/api/download/models/128078 -o aetherver
