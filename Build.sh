# Build File To Run The Project
while getopts c: flag
do
    case "${flag}" in
        c) check=${OPTARG};; 
    esac
done
clear
bash ./clean.sh
rm ./TestCases/Linker_Linked.br.wasm
grain index.gr
if [ "$check" == "true" ]; then
  wasm2wat ./TestCases/LinkerTest/Linker_Linked.br.wasm -o ./TestCases/LinkerTest/Linker_Linked.br.wat --verbose
else
  wasm2wat ./TestCases/LinkerTest/Linker_Linked.br.wasm -o ./TestCases/LinkerTest/Linker_Linked.br.wat --verbose --no-check
fi