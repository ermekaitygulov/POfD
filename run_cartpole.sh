
REWARD_COEFFS="0.8 1.0"
SEEDS="0"
for REWARD_COEFF in $REWARD_COEFFS
do
    for SEED in $SEEDS
    do
	    python3 run_mujoco.py --env $1 --seed $SEED --num_epochs 50 --reward_coeff $REWARD_COEFF --expert_path $2 --log_dir train/
    done
done