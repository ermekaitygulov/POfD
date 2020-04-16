ENV_ID = $1
DATASET_PATH = $2
REWARD_COEFFS="0.0 0.2 0.4 0.6 0.8 1.0"
SEEDS="0 1 2 3 4"
for REWARD_COEFF in $REWARD_COEFFS
do
    for SEED in $SEEDS
    do
	    python3 baselines/gail/run_mujoco.py --env_id ENV_ID --seed $SEED --num_epochs 1000 --reward_coeff $REWARD_COEFF --expert_path DATASET_PATH
    done
done