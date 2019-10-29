## Count the files in this directory first
num_files=$(ls | wc -l)


### Write the function
function guessnum {

if [[ $1 -gt $num_files ]]
then
    echo "Oops! Too high! :O "
    echo "Try again!"

elif [[ $1 -lt $num_files ]]
then
    echo "Oh~ Too low... :( "
    echo "Try again, please."

else
    echo "You're right."
    echo "Congratulations!!!"
    echo "Bye! :)"
fi
}


### Invoke the function in the while loop
#source guessnum   #don't need in this case!

response=""
while [[ $response -ne $num_files ]]
do
  echo "How many files are in the current directory?"
  read response
  guessnum $response
  let response=$response
done

echo "===  the end of this program ==="

