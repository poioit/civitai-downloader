# Bash script to download models from CivitAI using curl

## Installation

```bash
git clone https://github.com/poioit/civitai-downloader.git
chmod +x ./download.sh
create a .env file put API_KEY in it
API_KEY=xxxxxxxxxxx
```
## Usage

```bash
./download.sh [URL] [DESTINATION]
```

eg:

```bash
export $(cat .env | xargs) && ./download.sh 352581 ./output
```

Appreciate my work?
https://buymeacoffee.com/poioit
