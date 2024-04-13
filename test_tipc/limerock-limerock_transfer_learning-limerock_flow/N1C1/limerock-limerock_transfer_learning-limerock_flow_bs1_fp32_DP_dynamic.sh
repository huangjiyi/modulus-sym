model_item=limerock-limerock_transfer_learning-limerock_flow_bs1_fp32_DP_dynamic.sh
bs_item=1
fp_item=fp32
run_mode=DP
device_num=N1C1
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
# prepare
bash prepare.sh
# run
\cp test_tipc/limerock-limerock_transfer_learning-limerock_flow/benchmark_common/prepare.sh ./
\cp test_tipc/limerock-limerock_transfer_learning-limerock_flow/benchmark_common/run_benchmark.sh ./
\cp test_tipc/limerock-limerock_transfer_learning-limerock_flow/N1C1/limerock-limerock_transfer_learning-limerock_flow_bs1_fp32_DP_dynamic.sh ./
\cp test_tipc/limerock-limerock_transfer_learning-limerock_flow/benchmark_common/analysis_log.py ./
jit=0 prim=0 cinn=0 bash run_benchmark.sh ${model_item} ${bs_item} ${fp_item} ${run_mode} ${device_num} 2>&1;
sleep 10;