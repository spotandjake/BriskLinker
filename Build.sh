# Build File To Run The Project
while getopts c: flag
do
    case "${flag}" in
        c) check=${OPTARG};; 
    esac
done
clear
bash ./clean.sh
rm ./LinkerTest/Linker_Linked.br.wasm
grain index.gr
if [ "$check" == "true" ]; then
  wasm2wat ./LinkerTest/Linker_Linked.br.wasm -o ./LinkerTest/Linker_Linked.br.wat --verbose
else
  wasm2wat ./LinkerTest/Linker_Linked.br.wasm -o ./LinkerTest/Linker_Linked.br.wat --verbose --no-check
fi
# Log The Size
filesize=$(stat -f%z index.gr.wasm)
filesize=$(bc <<< "scale=3; $filesize / 1024")
echo "$filesize"kb >> oldSize.txt
# Try and run
wasmtime ./LinkerTest/Linker_Linked.br.wasm