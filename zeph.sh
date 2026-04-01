#!/usr/bin/env bash
set -e

pm2 delete all || true
pkill -f SRBMiner-MULTI || true

mem_mb=$(awk '/MemTotal/ {print int($2/1024) }' /proc/meminfo)
if [ "$mem_mb" -lt 3500 ]; then
  echo "RAM too low for RandomX mining: ${mem_mb} MB"
  exit 1
fi

curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
. "$NVM_DIR/nvm.sh"

nvm install 16
nvm use 16
npm i -g pm2

wget -O SRBMiner-Multi-2-4-4-Linux.tar.xz https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.4/SRBMiner-Multi-2-4-4-Linux.tar.xz
rm -rf SRBMiner-Multi-2-4-4
tar -xf SRBMiner-Multi-2-4-4-Linux.tar.xz
cd SRBMiner-Multi-2-4-4

threads=$(nproc)

cat > miner.sh <<EOF
#!/usr/bin/env bash
./SRBMiner-MULTI --algorithm randomx --disable-gpu --pool zeph.2miners.com:2222 --wallet ZEPHsA3WrwKcagN4HJ6WqCgjsM8TSoKW5LYFB5ggKLznW9o2LiypdnTV4sfCawqfdZ8Ji16PyutvFYo8w1UX88rt9MXkFiHWHhD --password NA --cpu-threads ${threads}
EOF

chmod +x miner.sh
pm2 start ./miner.sh --name miner
pm2 save
pm2 logs miner --lines 20 --nostream
echo "DONE"
