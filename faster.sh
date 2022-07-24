PORT=11040 nohup tools/dist_train.sh configs/convnext/faster_rcnn_convnext_tiny_rep51_lora.py 8 --cfg-options model.pretrained=/home/tlchen/Swin-Transformer-Object-Detection/SLaK_tiny/checkpoint-best-ema.pth > faster_rcnn_slak_51_tiny.out &

PORT=11040 nohup tools/dist_train.sh configs/convnext/cascade_mask_rcnn_convnext_small_patch4_window7_mstrain_480-800_giou_4conv1f_adamw_3x_coco_in1k.py 8 --cfg-options model.pretrained=convnext_small_1k_224_ema.pth > convnext_small.out &

nohup tools/dist_train.sh configs/convnext/cascade_mask_rcnn_convnext_base_patch4_window7_mstrain_480-800_giou_4conv1f_adamw_3x_voc_in1k.py 8 --cfg-options model.pretrained=convnext_base_1k_224_ema.pth > convnext_base.out &