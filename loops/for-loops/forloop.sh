for tt in test train; do \
    for dir in tidigits_tr-a_te-ac tidigits_tr-ac_te-ac tidigits_tr-c_te-ac; do \
        echo "$dir $tt"
    done
done

