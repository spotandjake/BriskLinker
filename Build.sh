# Build File To Run The Project
while getopts d:c:r:o: flag
do
    case "${flag}" in
        c) check=${OPTARG};; 
        d) detail=${OPTARG};;
        r) run=${OPTARG};;
        o) optimize=${OPTARG};;
    esac
done
clear
bash ./clean.sh
rm ./LinkerTest/Linker_Linked.br.wasm
touch ./LinkerTest/Linker_Linked.br.wasm
if [ "$optimize" == "true" ]; then
  grain index.gr --release --dir . -- "./LinkerTest/index.br.wasm" "./LinkerTest/Linker_Linked.br.wasm"
else
  grain index.gr --dir . -- "./LinkerTest/index.br.wasm" "./LinkerTest/Linker_Linked.br.wasm"
fi
if [ "$detail" == "true" ]; then
  if [ "$check" == "true" ]; then
    wasm2wat ./LinkerTest/Linker_Linked.br.wasm -o ./LinkerTest/Linker_Linked.br.wat --verbose
  else
    wasm2wat ./LinkerTest/Linker_Linked.br.wasm -o ./LinkerTest/Linker_Linked.br.wat --verbose --no-check
  fi
else
  wasm2wat ./LinkerTest/Linker_Linked.br.wasm -o ./LinkerTest/Linker_Linked.br.wat --no-check
fi
# Log The Size
filesize=$(stat -f%z index.gr.wasm)
filesize=$(bc <<< "scale=3; $filesize / 1024")
echo "$filesize"kb >> oldSize.txt
echo "$filesize"kb
# Try and run
if [ "$run" == "true" ]; then
  wasmtime ./LinkerTest/Linker_Linked.br.wasm
fi