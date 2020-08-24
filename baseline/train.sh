onmt_train -config config/pn.yaml \
	   -save_model models/rep/rep \
           -data rep/processed/rep \
           -keep_checkpoint 3 \
	   --exp pn_rep
