import wandb
import argparse


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--group', action='store', type=str)
    parser.add_argument('--avg', action='store', type=float)
    parser.add_argument('--eps', action='store', type=int)
    args = parser.parse_args()
    group = args.group + '_{:.0f}'.format(args.avg)
    wandb.init(anonymous='allow', project="FSRB", group=group, entity='ermekaitygulov')
    for e in range(args.eps):
        wandb.log({"reward": args.avg, "episode": e})
