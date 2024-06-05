if [ "$#" -ne 2 ]; then
    echo "Please enter the input directory where to find wav files as well as the output file."
    echo "Example usage:"
    echo "./cat.sh /path/to/my_dataset my_dataset.s16"
    exit
fi


train_dir=$1
output_file=$2
for i in $(find ${train_dir} -name "*.wav"); do
    sox $i -r 16000 -c 1 -t sw -
done > ${output_file}
