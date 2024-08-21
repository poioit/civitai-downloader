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
<a href="https://www.buymeacoffee.com/poioit" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-violet.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
