# StarryDigitizerのlirary-build/distはgitignoreしているので、仮対応としてここでビルドする

cd node_modules/starry-digitizer
yarn
yarn lib-build
cd ../../
bun start