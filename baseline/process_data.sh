mkdir -p rep/processed/
onmt_preprocess -train_src rep/train_rep_ft.txt -train_tgt rep/train_rep_h.txt -valid_src rep/val_rep_ft.txt -valid_tgt rep/val_rep_h.txt -save_data rep/processed/rep -src_seq_length 256 -tgt_seq_length 50 -src_seq_length_trunc 256 -tgt_seq_length_trunc 50 -dynamic_dict -src_vocab_size 100000 -tgt_vocab_size 10000 -share_vocab -shard_size 100000
