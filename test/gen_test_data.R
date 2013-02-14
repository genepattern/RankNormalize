
source("normalize.R")


MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/defaults/valid_pset_1_test/all_aml_test.NORM.gct"
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.res",
   output.ds           = "../test_out/defaults/valid_pset_2_test/all_aml_test.NORM.res"
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_3_test/all_aml_test.NORM.gct",
scale=1000
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_1_test/all_aml_test.NORM.gct",
scale=10000
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_4_test/all_aml_test.NORM.gct",
thres=0.00001
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_2_test/all_aml_test.NORM.gct",
scale=10000,
thres=0.00001
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_5_test/all_aml_test.NORM.gct",
thres=100
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_3_test/all_aml_test.NORM.gct",
scale=10000,
thres=100
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_6_test/all_aml_test.NORM.gct",
ceil=25000
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_4_test/all_aml_test.NORM.gct",
scale=10000,
ceil=25000
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_7_test/all_aml_test.NORM.gct",
ceil=1000
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_5_test/all_aml_test.NORM.gct",
scale=10000,
ceil=1000
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_8_test/all_aml_test.NORM.gct",
shift=10000
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_1/valid_pset_9_test/all_aml_test.NORM.gct",
shift=10
   #normalization       = 2
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_6_test/all_aml_test.NORM.gct",
scale=10000,
shift=1000
   #normalization       = 6
   )

MSIG.Preprocess.Dataset(
   input.ds            = "../all_aml_test.gct",
   output.ds           = "../test_out/optional_2/valid_pset_7_test/all_aml_test.NORM.gct",
scale=10000,
shift=-1000
   #normalization       = 6
   )
