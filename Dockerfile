FROM ghcr.io/openclaw/openclaw:latest

RUN sed -i 's/fs\.chmodSync(filePath, 384);/try { fs.chmodSync(filePath, 384); } catch(e) {}/g' /openclaw/dist/client-Diaenacj.js \
 && sed -i 's/fs\.chmodSync(pathname, 384);/try { fs.chmodSync(pathname, 384); } catch(e) {}/g' /openclaw/dist/github-copilot-token-RNgXBxZS.js \
 && sed -i "s/fs\\\$1\.chmodSync(credsPath, 384);/try { fs\$1.chmodSync(credsPath, 384); } catch(e) {}/g" /openclaw/dist/accounts-BdsaOk1K.js /openclaw/dist/accounts-BIx69xGF.js
