model_item=wave_equation-wave_1d_causal_bs1_fp32_DP_dynamic.sh
bs_item=1
fp_item=fp32
run_mode=DP
device_num=N1C1
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
# prepare
bash prepare.sh
# run
\cp test_tipc/wave_equation-wave_1d_causal/benchmark_common/prepare.sh ./
\cp test_tipc/wave_equation-wave_1d_causal/benchmark_common/run_benchmark.sh ./
\cp test_tipc/wave_equation-wave_1d_causal/N1C1/wave_equation-wave_1d_causal_bs1_fp32_DP_dynamic.sh ./
\cp test_tipc/wave_equation-wave_1d_causal/benchmark_common/analysis_log.py ./
jit=0 prim=0 cinn=0 bash run_benchmark.sh ${model_item} ${bs_item} ${fp_item} ${run_mode} ${device_num} 2>&1;
sleep 10;