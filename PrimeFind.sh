Primes=()

read -p "입력받을 숫자 : " number

if [[ ! "$number" =~ ^[0-9]+$ ]]
then
    echo "숫자만 입력해주세요"

elif ((number == 1))
then
    echo "1은 소수가 아닙니다"

elif ((number == 2))
then
    echo "2는 소수입니다"

elif ((number > 10000))
then
    echo "숫자가 너무 큽니다"
elif ((number < 1))
then 
    echo "숫자가 너무 작습니다"
else
    for ((n=2; n<=number; n++))
    do
        IsDecimal=true

        for ((i=2; i*i<=n; i++))
        do
            if (( n % i == 0 ))
            then
                IsDecimal=false
                break
            fi
        done

        if [[ "$IsDecimal" == true ]]
        then
            Primes+=("$n")
        fi
    done

    echo "2와 $number 사이에 있는 소수 :"
    echo "${Primes[@]}"
    echo "2와 $number 사이에 있는 소수의 개수는 ${#Primes[@]}개 입니다"
fi