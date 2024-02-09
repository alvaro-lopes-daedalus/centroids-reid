test:
	python train_ctl_model.py \
	--config_file="./configs/256_resnet50.yml" \
	GPU_IDS [0] \
	DATASETS.NAMES 'dukemtmcreid' \
	DATASETS.ROOT_DIR './data/' \
	SOLVER.IMS_PER_BATCH 16 \
	TEST.IMS_PER_BATCH 128 \
	SOLVER.BASE_LR 0.00035 \
	SOLVER.DIST_BACKEND 'cuda' \
	OUTPUT_DIR './logs/dukemtmcreid/256_resnet50/' \
	SOLVER.EVAL_PERIOD 40 \
	TEST.ONLY_TEST True \
	MODEL.PRETRAIN_PATH "./models/dukemtmcreid_resnet50_256_128_epoch_120.ckpt"
