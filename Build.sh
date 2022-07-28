# Build File To Run The Project
clear
bash ./clean.sh
rm ./TestCases/Linker_Linked.br.wasm
grain index.gr
wasm2wat ./TestCases/Linker_Linked.br.wasm -o ./TestCases/Linker_Linked.br.wat --verbose