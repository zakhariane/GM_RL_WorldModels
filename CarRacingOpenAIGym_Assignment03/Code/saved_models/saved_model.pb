??
?)?)
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.11.02
b'unknown'??
v
ConstConst*
dtype0*
_output_shapes

:*9
value0B."                                 
x
Const_1Const*9
value0B."                                 *
dtype0*
_output_shapes

:
O

Train_modePlaceholder*
dtype0
*
_output_shapes
:*
shape:
?
Network_InputPlaceholder*
dtype0*/
_output_shapes
:?????????``*$
shape:?????????``
v
Conv_Layer/PadPadNetwork_InputConst*
	Tpaddings0*/
_output_shapes
:?????????``*
T0
w
Conv_Layer/random_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
b
Conv_Layer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
Conv_Layer/random_normal/stddevConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
-Conv_Layer/random_normal/RandomStandardNormalRandomStandardNormalConv_Layer/random_normal/shape*
dtype0*
seed2 *&
_output_shapes
:*

seed *
T0
?
Conv_Layer/random_normal/mulMul-Conv_Layer/random_normal/RandomStandardNormalConv_Layer/random_normal/stddev*&
_output_shapes
:*
T0
?
Conv_Layer/random_normalAddConv_Layer/random_normal/mulConv_Layer/random_normal/mean*
T0*&
_output_shapes
:
?
Conv_Layer/Conv_weights
VariableV2*
shared_name *
dtype0*
	container *&
_output_shapes
:*
shape:
?
Conv_Layer/Conv_weights/AssignAssignConv_Layer/Conv_weightsConv_Layer/random_normal*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights*
validate_shape(*&
_output_shapes
:
?
Conv_Layer/Conv_weights/readIdentityConv_Layer/Conv_weights*&
_output_shapes
:*
T0**
_class 
loc:@Conv_Layer/Conv_weights
j
 Conv_Layer/random_normal_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
d
Conv_Layer/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!Conv_Layer/random_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
/Conv_Layer/random_normal_1/RandomStandardNormalRandomStandardNormal Conv_Layer/random_normal_1/shape*
T0*
dtype0*
seed2 *
_output_shapes
:*

seed 
?
Conv_Layer/random_normal_1/mulMul/Conv_Layer/random_normal_1/RandomStandardNormal!Conv_Layer/random_normal_1/stddev*
_output_shapes
:*
T0
?
Conv_Layer/random_normal_1AddConv_Layer/random_normal_1/mulConv_Layer/random_normal_1/mean*
T0*
_output_shapes
:
?
Conv_Layer/Conv_biases
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
?
Conv_Layer/Conv_biases/AssignAssignConv_Layer/Conv_biasesConv_Layer/random_normal_1*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
validate_shape(*
_output_shapes
:
?
Conv_Layer/Conv_biases/readIdentityConv_Layer/Conv_biases*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
_output_shapes
:
?
Conv_Layer/Conv2DConv2DConv_Layer/PadConv_Layer/Conv_weights/read*/
_output_shapes
:?????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
Conv_Layer/Conv_outputAddConv_Layer/Conv2DConv_Layer/Conv_biases/read*/
_output_shapes
:?????????*
T0
^
ReluReluConv_Layer/Conv_output*
T0*/
_output_shapes
:?????????
\
Dropout_cond/SwitchSwitch
Train_mode
Train_mode*
_output_shapes

::*
T0

[
Dropout_cond/switch_tIdentityDropout_cond/Switch:1*
_output_shapes
:*
T0

Y
Dropout_cond/switch_fIdentityDropout_cond/Switch*
_output_shapes
:*
T0

O
Dropout_cond/pred_idIdentity
Train_mode*
T0
*
_output_shapes
:
{
Dropout_cond/dropout/keep_probConst^Dropout_cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *   ?
}
Dropout_cond/dropout/ShapeShape#Dropout_cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
?
!Dropout_cond/dropout/Shape/SwitchSwitchReluDropout_cond/pred_id*
T0*
_class
	loc:@Relu*J
_output_shapes8
6:?????????:?????????
?
'Dropout_cond/dropout/random_uniform/minConst^Dropout_cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
?
'Dropout_cond/dropout/random_uniform/maxConst^Dropout_cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1Dropout_cond/dropout/random_uniform/RandomUniformRandomUniformDropout_cond/dropout/Shape*
T0*
dtype0*
seed2 */
_output_shapes
:?????????*

seed 
?
'Dropout_cond/dropout/random_uniform/subSub'Dropout_cond/dropout/random_uniform/max'Dropout_cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
'Dropout_cond/dropout/random_uniform/mulMul1Dropout_cond/dropout/random_uniform/RandomUniform'Dropout_cond/dropout/random_uniform/sub*/
_output_shapes
:?????????*
T0
?
#Dropout_cond/dropout/random_uniformAdd'Dropout_cond/dropout/random_uniform/mul'Dropout_cond/dropout/random_uniform/min*/
_output_shapes
:?????????*
T0
?
Dropout_cond/dropout/addAddDropout_cond/dropout/keep_prob#Dropout_cond/dropout/random_uniform*/
_output_shapes
:?????????*
T0
w
Dropout_cond/dropout/FloorFloorDropout_cond/dropout/add*
T0*/
_output_shapes
:?????????
?
Dropout_cond/dropout/divRealDiv#Dropout_cond/dropout/Shape/Switch:1Dropout_cond/dropout/keep_prob*/
_output_shapes
:?????????*
T0
?
Dropout_cond/dropout/mulMulDropout_cond/dropout/divDropout_cond/dropout/Floor*/
_output_shapes
:?????????*
T0
?
Dropout_cond/Switch_1SwitchReluDropout_cond/pred_id*J
_output_shapes8
6:?????????:?????????*
T0*
_class
	loc:@Relu
?
Dropout_cond/MergeMergeDropout_cond/Switch_1Dropout_cond/dropout/mul*
T0*
N*1
_output_shapes
:?????????: 

Conv_Layer_1/PadPadDropout_cond/MergeConst_1*
T0*
	Tpaddings0*/
_output_shapes
:?????????
y
 Conv_Layer_1/random_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
d
Conv_Layer_1/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!Conv_Layer_1/random_normal/stddevConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
/Conv_Layer_1/random_normal/RandomStandardNormalRandomStandardNormal Conv_Layer_1/random_normal/shape*
T0*
dtype0*
seed2 *&
_output_shapes
: *

seed 
?
Conv_Layer_1/random_normal/mulMul/Conv_Layer_1/random_normal/RandomStandardNormal!Conv_Layer_1/random_normal/stddev*&
_output_shapes
: *
T0
?
Conv_Layer_1/random_normalAddConv_Layer_1/random_normal/mulConv_Layer_1/random_normal/mean*&
_output_shapes
: *
T0
?
Conv_Layer_1/Conv_weights
VariableV2*
shared_name *
dtype0*
	container *&
_output_shapes
: *
shape: 
?
 Conv_Layer_1/Conv_weights/AssignAssignConv_Layer_1/Conv_weightsConv_Layer_1/random_normal*
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*
validate_shape(*&
_output_shapes
: 
?
Conv_Layer_1/Conv_weights/readIdentityConv_Layer_1/Conv_weights*&
_output_shapes
: *
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights
l
"Conv_Layer_1/random_normal_1/shapeConst*
dtype0*
_output_shapes
:*
valueB: 
f
!Conv_Layer_1/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#Conv_Layer_1/random_normal_1/stddevConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
1Conv_Layer_1/random_normal_1/RandomStandardNormalRandomStandardNormal"Conv_Layer_1/random_normal_1/shape*
T0*
dtype0*
seed2 *
_output_shapes
: *

seed 
?
 Conv_Layer_1/random_normal_1/mulMul1Conv_Layer_1/random_normal_1/RandomStandardNormal#Conv_Layer_1/random_normal_1/stddev*
T0*
_output_shapes
: 
?
Conv_Layer_1/random_normal_1Add Conv_Layer_1/random_normal_1/mul!Conv_Layer_1/random_normal_1/mean*
_output_shapes
: *
T0
?
Conv_Layer_1/Conv_biases
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
?
Conv_Layer_1/Conv_biases/AssignAssignConv_Layer_1/Conv_biasesConv_Layer_1/random_normal_1*
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases*
validate_shape(*
_output_shapes
: 
?
Conv_Layer_1/Conv_biases/readIdentityConv_Layer_1/Conv_biases*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases*
_output_shapes
: 
?
Conv_Layer_1/Conv2DConv2DConv_Layer_1/PadConv_Layer_1/Conv_weights/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:????????? 
?
Conv_Layer_1/Conv_outputAddConv_Layer_1/Conv2DConv_Layer_1/Conv_biases/read*
T0*/
_output_shapes
:????????? 
b
Relu_1ReluConv_Layer_1/Conv_output*/
_output_shapes
:????????? *
T0
^
Dropout_cond_1/SwitchSwitch
Train_mode
Train_mode*
_output_shapes

::*
T0

_
Dropout_cond_1/switch_tIdentityDropout_cond_1/Switch:1*
T0
*
_output_shapes
:
]
Dropout_cond_1/switch_fIdentityDropout_cond_1/Switch*
T0
*
_output_shapes
:
Q
Dropout_cond_1/pred_idIdentity
Train_mode*
_output_shapes
:*
T0


 Dropout_cond_1/dropout/keep_probConst^Dropout_cond_1/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
Dropout_cond_1/dropout/ShapeShape%Dropout_cond_1/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
?
#Dropout_cond_1/dropout/Shape/SwitchSwitchRelu_1Dropout_cond_1/pred_id*
T0*
_class
loc:@Relu_1*J
_output_shapes8
6:????????? :????????? 
?
)Dropout_cond_1/dropout/random_uniform/minConst^Dropout_cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
?
)Dropout_cond_1/dropout/random_uniform/maxConst^Dropout_cond_1/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3Dropout_cond_1/dropout/random_uniform/RandomUniformRandomUniformDropout_cond_1/dropout/Shape*
T0*
dtype0*
seed2 */
_output_shapes
:????????? *

seed 
?
)Dropout_cond_1/dropout/random_uniform/subSub)Dropout_cond_1/dropout/random_uniform/max)Dropout_cond_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)Dropout_cond_1/dropout/random_uniform/mulMul3Dropout_cond_1/dropout/random_uniform/RandomUniform)Dropout_cond_1/dropout/random_uniform/sub*/
_output_shapes
:????????? *
T0
?
%Dropout_cond_1/dropout/random_uniformAdd)Dropout_cond_1/dropout/random_uniform/mul)Dropout_cond_1/dropout/random_uniform/min*
T0*/
_output_shapes
:????????? 
?
Dropout_cond_1/dropout/addAdd Dropout_cond_1/dropout/keep_prob%Dropout_cond_1/dropout/random_uniform*/
_output_shapes
:????????? *
T0
{
Dropout_cond_1/dropout/FloorFloorDropout_cond_1/dropout/add*
T0*/
_output_shapes
:????????? 
?
Dropout_cond_1/dropout/divRealDiv%Dropout_cond_1/dropout/Shape/Switch:1 Dropout_cond_1/dropout/keep_prob*/
_output_shapes
:????????? *
T0
?
Dropout_cond_1/dropout/mulMulDropout_cond_1/dropout/divDropout_cond_1/dropout/Floor*/
_output_shapes
:????????? *
T0
?
Dropout_cond_1/Switch_1SwitchRelu_1Dropout_cond_1/pred_id*
T0*
_class
loc:@Relu_1*J
_output_shapes8
6:????????? :????????? 
?
Dropout_cond_1/MergeMergeDropout_cond_1/Switch_1Dropout_cond_1/dropout/mul*
T0*
N*1
_output_shapes
:????????? : 
^
Flatten/shapeConst*
valueB"????   *
dtype0*
_output_shapes
:
x
FlattenReshapeDropout_cond_1/MergeFlatten/shape*(
_output_shapes
:??????????$*
T0*
Tshape0
q
 Linear_Layer/random_normal/shapeConst*
valueB"   ?   *
dtype0*
_output_shapes
:
d
Linear_Layer/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
f
!Linear_Layer/random_normal/stddevConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
/Linear_Layer/random_normal/RandomStandardNormalRandomStandardNormal Linear_Layer/random_normal/shape*
T0*
dtype0*
seed2 * 
_output_shapes
:
?$?*

seed 
?
Linear_Layer/random_normal/mulMul/Linear_Layer/random_normal/RandomStandardNormal!Linear_Layer/random_normal/stddev*
T0* 
_output_shapes
:
?$?
?
Linear_Layer/random_normalAddLinear_Layer/random_normal/mulLinear_Layer/random_normal/mean* 
_output_shapes
:
?$?*
T0
?
Linear_Layer/Linear_weights
VariableV2*
shared_name *
dtype0*
	container * 
_output_shapes
:
?$?*
shape:
?$?
?
"Linear_Layer/Linear_weights/AssignAssignLinear_Layer/Linear_weightsLinear_Layer/random_normal*
validate_shape(* 
_output_shapes
:
?$?*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
 Linear_Layer/Linear_weights/readIdentityLinear_Layer/Linear_weights* 
_output_shapes
:
?$?*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
m
"Linear_Layer/random_normal_1/shapeConst*
valueB:?*
dtype0*
_output_shapes
:
f
!Linear_Layer/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#Linear_Layer/random_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
1Linear_Layer/random_normal_1/RandomStandardNormalRandomStandardNormal"Linear_Layer/random_normal_1/shape*
T0*
dtype0*
seed2 *
_output_shapes	
:?*

seed 
?
 Linear_Layer/random_normal_1/mulMul1Linear_Layer/random_normal_1/RandomStandardNormal#Linear_Layer/random_normal_1/stddev*
_output_shapes	
:?*
T0
?
Linear_Layer/random_normal_1Add Linear_Layer/random_normal_1/mul!Linear_Layer/random_normal_1/mean*
_output_shapes	
:?*
T0
?
Linear_Layer/Linear_biases
VariableV2*
dtype0*
	container *
_output_shapes	
:?*
shape:?*
shared_name 
?
!Linear_Layer/Linear_biases/AssignAssignLinear_Layer/Linear_biasesLinear_Layer/random_normal_1*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases*
validate_shape(*
_output_shapes	
:?
?
Linear_Layer/Linear_biases/readIdentityLinear_Layer/Linear_biases*
_output_shapes	
:?*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
Linear_Layer/MatMulMatMulFlatten Linear_Layer/Linear_weights/read*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( 
?
Linear_Layer/Linear_outputAddLinear_Layer/MatMulLinear_Layer/Linear_biases/read*(
_output_shapes
:??????????*
T0
s
"Linear_Layer_1/random_normal/shapeConst*
valueB"?      *
dtype0*
_output_shapes
:
f
!Linear_Layer_1/random_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
#Linear_Layer_1/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
1Linear_Layer_1/random_normal/RandomStandardNormalRandomStandardNormal"Linear_Layer_1/random_normal/shape*
T0*
dtype0*
seed2 *
_output_shapes
:	?*

seed 
?
 Linear_Layer_1/random_normal/mulMul1Linear_Layer_1/random_normal/RandomStandardNormal#Linear_Layer_1/random_normal/stddev*
_output_shapes
:	?*
T0
?
Linear_Layer_1/random_normalAdd Linear_Layer_1/random_normal/mul!Linear_Layer_1/random_normal/mean*
T0*
_output_shapes
:	?
?
Linear_Layer_1/Linear_weights
VariableV2*
dtype0*
	container *
_output_shapes
:	?*
shape:	?*
shared_name 
?
$Linear_Layer_1/Linear_weights/AssignAssignLinear_Layer_1/Linear_weightsLinear_Layer_1/random_normal*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
"Linear_Layer_1/Linear_weights/readIdentityLinear_Layer_1/Linear_weights*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
_output_shapes
:	?
n
$Linear_Layer_1/random_normal_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
#Linear_Layer_1/random_normal_1/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
j
%Linear_Layer_1/random_normal_1/stddevConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3Linear_Layer_1/random_normal_1/RandomStandardNormalRandomStandardNormal$Linear_Layer_1/random_normal_1/shape*
T0*
dtype0*
seed2 *
_output_shapes
:*

seed 
?
"Linear_Layer_1/random_normal_1/mulMul3Linear_Layer_1/random_normal_1/RandomStandardNormal%Linear_Layer_1/random_normal_1/stddev*
T0*
_output_shapes
:
?
Linear_Layer_1/random_normal_1Add"Linear_Layer_1/random_normal_1/mul#Linear_Layer_1/random_normal_1/mean*
_output_shapes
:*
T0
?
Linear_Layer_1/Linear_biases
VariableV2*
dtype0*
	container *
_output_shapes
:*
shape:*
shared_name 
?
#Linear_Layer_1/Linear_biases/AssignAssignLinear_Layer_1/Linear_biasesLinear_Layer_1/random_normal_1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
!Linear_Layer_1/Linear_biases/readIdentityLinear_Layer_1/Linear_biases*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases*
_output_shapes
:
?
Linear_Layer_1/MatMulMatMulLinear_Layer/Linear_output"Linear_Layer_1/Linear_weights/read*
transpose_a( *'
_output_shapes
:?????????*
transpose_b( *
T0
?
Linear_Layer_1/Linear_outputAddLinear_Layer_1/MatMul!Linear_Layer_1/Linear_biases/read*'
_output_shapes
:?????????*
T0
i
LabelsPlaceholder*
dtype0*'
_output_shapes
:?????????*
shape:?????????
b
 Training_loss/Cross_entropy/RankConst*
dtype0*
_output_shapes
: *
value	B :
}
!Training_loss/Cross_entropy/ShapeShapeLinear_Layer_1/Linear_output*
T0*
out_type0*
_output_shapes
:
d
"Training_loss/Cross_entropy/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 

#Training_loss/Cross_entropy/Shape_1ShapeLinear_Layer_1/Linear_output*
_output_shapes
:*
T0*
out_type0
c
!Training_loss/Cross_entropy/Sub/yConst*
dtype0*
_output_shapes
: *
value	B :
?
Training_loss/Cross_entropy/SubSub"Training_loss/Cross_entropy/Rank_1!Training_loss/Cross_entropy/Sub/y*
_output_shapes
: *
T0
?
'Training_loss/Cross_entropy/Slice/beginPackTraining_loss/Cross_entropy/Sub*
N*
_output_shapes
:*
T0*

axis 
p
&Training_loss/Cross_entropy/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
?
!Training_loss/Cross_entropy/SliceSlice#Training_loss/Cross_entropy/Shape_1'Training_loss/Cross_entropy/Slice/begin&Training_loss/Cross_entropy/Slice/size*
T0*
Index0*
_output_shapes
:
~
+Training_loss/Cross_entropy/concat/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
i
'Training_loss/Cross_entropy/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
"Training_loss/Cross_entropy/concatConcatV2+Training_loss/Cross_entropy/concat/values_0!Training_loss/Cross_entropy/Slice'Training_loss/Cross_entropy/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
#Training_loss/Cross_entropy/ReshapeReshapeLinear_Layer_1/Linear_output"Training_loss/Cross_entropy/concat*0
_output_shapes
:??????????????????*
T0*
Tshape0
d
"Training_loss/Cross_entropy/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
i
#Training_loss/Cross_entropy/Shape_2ShapeLabels*
_output_shapes
:*
T0*
out_type0
e
#Training_loss/Cross_entropy/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
!Training_loss/Cross_entropy/Sub_1Sub"Training_loss/Cross_entropy/Rank_2#Training_loss/Cross_entropy/Sub_1/y*
_output_shapes
: *
T0
?
)Training_loss/Cross_entropy/Slice_1/beginPack!Training_loss/Cross_entropy/Sub_1*
N*
_output_shapes
:*
T0*

axis 
r
(Training_loss/Cross_entropy/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
?
#Training_loss/Cross_entropy/Slice_1Slice#Training_loss/Cross_entropy/Shape_2)Training_loss/Cross_entropy/Slice_1/begin(Training_loss/Cross_entropy/Slice_1/size*
_output_shapes
:*
T0*
Index0
?
-Training_loss/Cross_entropy/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
k
)Training_loss/Cross_entropy/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
$Training_loss/Cross_entropy/concat_1ConcatV2-Training_loss/Cross_entropy/concat_1/values_0#Training_loss/Cross_entropy/Slice_1)Training_loss/Cross_entropy/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
%Training_loss/Cross_entropy/Reshape_1ReshapeLabels$Training_loss/Cross_entropy/concat_1*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Training_loss/Cross_entropySoftmaxCrossEntropyWithLogits#Training_loss/Cross_entropy/Reshape%Training_loss/Cross_entropy/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
e
#Training_loss/Cross_entropy/Sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
?
!Training_loss/Cross_entropy/Sub_2Sub Training_loss/Cross_entropy/Rank#Training_loss/Cross_entropy/Sub_2/y*
T0*
_output_shapes
: 
s
)Training_loss/Cross_entropy/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB: 
?
(Training_loss/Cross_entropy/Slice_2/sizePack!Training_loss/Cross_entropy/Sub_2*
T0*

axis *
N*
_output_shapes
:
?
#Training_loss/Cross_entropy/Slice_2Slice!Training_loss/Cross_entropy/Shape)Training_loss/Cross_entropy/Slice_2/begin(Training_loss/Cross_entropy/Slice_2/size*
_output_shapes
:*
T0*
Index0
?
%Training_loss/Cross_entropy/Reshape_2ReshapeTraining_loss/Cross_entropy#Training_loss/Cross_entropy/Slice_2*
T0*
Tshape0*#
_output_shapes
:?????????
]
Training_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
Training_loss/Loss_functionMean%Training_loss/Cross_entropy/Reshape_2Training_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
Evaluation/Prediction/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
Evaluation/PredictionArgMaxLinear_Layer_1/Linear_outputEvaluation/Prediction/dimension*
output_type0	*#
_output_shapes
:?????????*

Tidx0*
T0
]
Evaluation/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
Evaluation/ArgMaxArgMaxLabelsEvaluation/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:?????????*

Tidx0
q
Evaluation/ScoreEqualEvaluation/PredictionEvaluation/ArgMax*#
_output_shapes
:?????????*
T0	
v
Evaluation/CastCastEvaluation/Score*
Truncate( *

DstT0*#
_output_shapes
:?????????*

SrcT0

Z
Evaluation/ConstConst*
valueB: *
dtype0*
_output_shapes
:
|
Evaluation/AccuracyMeanEvaluation/CastEvaluation/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
N
	Loss/tagsConst*
dtype0*
_output_shapes
: *
valueB
 BLoss
^
LossScalarSummary	Loss/tagsTraining_loss/Loss_function*
_output_shapes
: *
T0
h
Training_accuracy/tagsConst*
dtype0*
_output_shapes
: *"
valueB BTraining_accuracy
p
Training_accuracyScalarSummaryTraining_accuracy/tagsEvaluation/Accuracy*
T0*
_output_shapes
: 
\
Merge/MergeSummaryMergeSummaryLossTraining_accuracy*
N*
_output_shapes
: 
l
Validation_accuracy/tagsConst*$
valueB BValidation_accuracy*
dtype0*
_output_shapes
: 
t
Validation_accuracyScalarSummaryValidation_accuracy/tagsEvaluation/Accuracy*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
?
8gradients/Training_loss/Loss_function_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?
2gradients/Training_loss/Loss_function_grad/ReshapeReshapegradients/Fill8gradients/Training_loss/Loss_function_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
?
0gradients/Training_loss/Loss_function_grad/ShapeShape%Training_loss/Cross_entropy/Reshape_2*
_output_shapes
:*
T0*
out_type0
?
/gradients/Training_loss/Loss_function_grad/TileTile2gradients/Training_loss/Loss_function_grad/Reshape0gradients/Training_loss/Loss_function_grad/Shape*#
_output_shapes
:?????????*

Tmultiples0*
T0
?
2gradients/Training_loss/Loss_function_grad/Shape_1Shape%Training_loss/Cross_entropy/Reshape_2*
T0*
out_type0*
_output_shapes
:
u
2gradients/Training_loss/Loss_function_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
z
0gradients/Training_loss/Loss_function_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
/gradients/Training_loss/Loss_function_grad/ProdProd2gradients/Training_loss/Loss_function_grad/Shape_10gradients/Training_loss/Loss_function_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
|
2gradients/Training_loss/Loss_function_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
1gradients/Training_loss/Loss_function_grad/Prod_1Prod2gradients/Training_loss/Loss_function_grad/Shape_22gradients/Training_loss/Loss_function_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
v
4gradients/Training_loss/Loss_function_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
?
2gradients/Training_loss/Loss_function_grad/MaximumMaximum1gradients/Training_loss/Loss_function_grad/Prod_14gradients/Training_loss/Loss_function_grad/Maximum/y*
_output_shapes
: *
T0
?
3gradients/Training_loss/Loss_function_grad/floordivFloorDiv/gradients/Training_loss/Loss_function_grad/Prod2gradients/Training_loss/Loss_function_grad/Maximum*
T0*
_output_shapes
: 
?
/gradients/Training_loss/Loss_function_grad/CastCast3gradients/Training_loss/Loss_function_grad/floordiv*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
?
2gradients/Training_loss/Loss_function_grad/truedivRealDiv/gradients/Training_loss/Loss_function_grad/Tile/gradients/Training_loss/Loss_function_grad/Cast*
T0*#
_output_shapes
:?????????
?
:gradients/Training_loss/Cross_entropy/Reshape_2_grad/ShapeShapeTraining_loss/Cross_entropy*
T0*
out_type0*
_output_shapes
:
?
<gradients/Training_loss/Cross_entropy/Reshape_2_grad/ReshapeReshape2gradients/Training_loss/Loss_function_grad/truediv:gradients/Training_loss/Cross_entropy/Reshape_2_grad/Shape*#
_output_shapes
:?????????*
T0*
Tshape0
{
gradients/zeros_like	ZerosLikeTraining_loss/Cross_entropy:1*
T0*0
_output_shapes
:??????????????????
?
9gradients/Training_loss/Cross_entropy_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
5gradients/Training_loss/Cross_entropy_grad/ExpandDims
ExpandDims<gradients/Training_loss/Cross_entropy/Reshape_2_grad/Reshape9gradients/Training_loss/Cross_entropy_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:?????????
?
.gradients/Training_loss/Cross_entropy_grad/mulMul5gradients/Training_loss/Cross_entropy_grad/ExpandDimsTraining_loss/Cross_entropy:1*0
_output_shapes
:??????????????????*
T0
?
5gradients/Training_loss/Cross_entropy_grad/LogSoftmax
LogSoftmax#Training_loss/Cross_entropy/Reshape*
T0*0
_output_shapes
:??????????????????
?
.gradients/Training_loss/Cross_entropy_grad/NegNeg5gradients/Training_loss/Cross_entropy_grad/LogSoftmax*
T0*0
_output_shapes
:??????????????????
?
;gradients/Training_loss/Cross_entropy_grad/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
7gradients/Training_loss/Cross_entropy_grad/ExpandDims_1
ExpandDims<gradients/Training_loss/Cross_entropy/Reshape_2_grad/Reshape;gradients/Training_loss/Cross_entropy_grad/ExpandDims_1/dim*'
_output_shapes
:?????????*

Tdim0*
T0
?
0gradients/Training_loss/Cross_entropy_grad/mul_1Mul7gradients/Training_loss/Cross_entropy_grad/ExpandDims_1.gradients/Training_loss/Cross_entropy_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
;gradients/Training_loss/Cross_entropy_grad/tuple/group_depsNoOp/^gradients/Training_loss/Cross_entropy_grad/mul1^gradients/Training_loss/Cross_entropy_grad/mul_1
?
Cgradients/Training_loss/Cross_entropy_grad/tuple/control_dependencyIdentity.gradients/Training_loss/Cross_entropy_grad/mul<^gradients/Training_loss/Cross_entropy_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Training_loss/Cross_entropy_grad/mul*0
_output_shapes
:??????????????????
?
Egradients/Training_loss/Cross_entropy_grad/tuple/control_dependency_1Identity0gradients/Training_loss/Cross_entropy_grad/mul_1<^gradients/Training_loss/Cross_entropy_grad/tuple/group_deps*0
_output_shapes
:??????????????????*
T0*C
_class9
75loc:@gradients/Training_loss/Cross_entropy_grad/mul_1
?
8gradients/Training_loss/Cross_entropy/Reshape_grad/ShapeShapeLinear_Layer_1/Linear_output*
_output_shapes
:*
T0*
out_type0
?
:gradients/Training_loss/Cross_entropy/Reshape_grad/ReshapeReshapeCgradients/Training_loss/Cross_entropy_grad/tuple/control_dependency8gradients/Training_loss/Cross_entropy/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
1gradients/Linear_Layer_1/Linear_output_grad/ShapeShapeLinear_Layer_1/MatMul*
T0*
out_type0*
_output_shapes
:
}
3gradients/Linear_Layer_1/Linear_output_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
?
Agradients/Linear_Layer_1/Linear_output_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/Linear_Layer_1/Linear_output_grad/Shape3gradients/Linear_Layer_1/Linear_output_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
/gradients/Linear_Layer_1/Linear_output_grad/SumSum:gradients/Training_loss/Cross_entropy/Reshape_grad/ReshapeAgradients/Linear_Layer_1/Linear_output_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
3gradients/Linear_Layer_1/Linear_output_grad/ReshapeReshape/gradients/Linear_Layer_1/Linear_output_grad/Sum1gradients/Linear_Layer_1/Linear_output_grad/Shape*'
_output_shapes
:?????????*
T0*
Tshape0
?
1gradients/Linear_Layer_1/Linear_output_grad/Sum_1Sum:gradients/Training_loss/Cross_entropy/Reshape_grad/ReshapeCgradients/Linear_Layer_1/Linear_output_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
5gradients/Linear_Layer_1/Linear_output_grad/Reshape_1Reshape1gradients/Linear_Layer_1/Linear_output_grad/Sum_13gradients/Linear_Layer_1/Linear_output_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
?
<gradients/Linear_Layer_1/Linear_output_grad/tuple/group_depsNoOp4^gradients/Linear_Layer_1/Linear_output_grad/Reshape6^gradients/Linear_Layer_1/Linear_output_grad/Reshape_1
?
Dgradients/Linear_Layer_1/Linear_output_grad/tuple/control_dependencyIdentity3gradients/Linear_Layer_1/Linear_output_grad/Reshape=^gradients/Linear_Layer_1/Linear_output_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*F
_class<
:8loc:@gradients/Linear_Layer_1/Linear_output_grad/Reshape
?
Fgradients/Linear_Layer_1/Linear_output_grad/tuple/control_dependency_1Identity5gradients/Linear_Layer_1/Linear_output_grad/Reshape_1=^gradients/Linear_Layer_1/Linear_output_grad/tuple/group_deps*
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/Linear_Layer_1/Linear_output_grad/Reshape_1
?
+gradients/Linear_Layer_1/MatMul_grad/MatMulMatMulDgradients/Linear_Layer_1/Linear_output_grad/tuple/control_dependency"Linear_Layer_1/Linear_weights/read*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(
?
-gradients/Linear_Layer_1/MatMul_grad/MatMul_1MatMulLinear_Layer/Linear_outputDgradients/Linear_Layer_1/Linear_output_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	?*
transpose_b( *
T0
?
5gradients/Linear_Layer_1/MatMul_grad/tuple/group_depsNoOp,^gradients/Linear_Layer_1/MatMul_grad/MatMul.^gradients/Linear_Layer_1/MatMul_grad/MatMul_1
?
=gradients/Linear_Layer_1/MatMul_grad/tuple/control_dependencyIdentity+gradients/Linear_Layer_1/MatMul_grad/MatMul6^gradients/Linear_Layer_1/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Linear_Layer_1/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
?gradients/Linear_Layer_1/MatMul_grad/tuple/control_dependency_1Identity-gradients/Linear_Layer_1/MatMul_grad/MatMul_16^gradients/Linear_Layer_1/MatMul_grad/tuple/group_deps*
_output_shapes
:	?*
T0*@
_class6
42loc:@gradients/Linear_Layer_1/MatMul_grad/MatMul_1
?
/gradients/Linear_Layer/Linear_output_grad/ShapeShapeLinear_Layer/MatMul*
_output_shapes
:*
T0*
out_type0
|
1gradients/Linear_Layer/Linear_output_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:?
?
?gradients/Linear_Layer/Linear_output_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/Linear_Layer/Linear_output_grad/Shape1gradients/Linear_Layer/Linear_output_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
-gradients/Linear_Layer/Linear_output_grad/SumSum=gradients/Linear_Layer_1/MatMul_grad/tuple/control_dependency?gradients/Linear_Layer/Linear_output_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
1gradients/Linear_Layer/Linear_output_grad/ReshapeReshape-gradients/Linear_Layer/Linear_output_grad/Sum/gradients/Linear_Layer/Linear_output_grad/Shape*(
_output_shapes
:??????????*
T0*
Tshape0
?
/gradients/Linear_Layer/Linear_output_grad/Sum_1Sum=gradients/Linear_Layer_1/MatMul_grad/tuple/control_dependencyAgradients/Linear_Layer/Linear_output_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
3gradients/Linear_Layer/Linear_output_grad/Reshape_1Reshape/gradients/Linear_Layer/Linear_output_grad/Sum_11gradients/Linear_Layer/Linear_output_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
:gradients/Linear_Layer/Linear_output_grad/tuple/group_depsNoOp2^gradients/Linear_Layer/Linear_output_grad/Reshape4^gradients/Linear_Layer/Linear_output_grad/Reshape_1
?
Bgradients/Linear_Layer/Linear_output_grad/tuple/control_dependencyIdentity1gradients/Linear_Layer/Linear_output_grad/Reshape;^gradients/Linear_Layer/Linear_output_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/Linear_Layer/Linear_output_grad/Reshape*(
_output_shapes
:??????????
?
Dgradients/Linear_Layer/Linear_output_grad/tuple/control_dependency_1Identity3gradients/Linear_Layer/Linear_output_grad/Reshape_1;^gradients/Linear_Layer/Linear_output_grad/tuple/group_deps*
_output_shapes	
:?*
T0*F
_class<
:8loc:@gradients/Linear_Layer/Linear_output_grad/Reshape_1
?
)gradients/Linear_Layer/MatMul_grad/MatMulMatMulBgradients/Linear_Layer/Linear_output_grad/tuple/control_dependency Linear_Layer/Linear_weights/read*
T0*
transpose_a( *(
_output_shapes
:??????????$*
transpose_b(
?
+gradients/Linear_Layer/MatMul_grad/MatMul_1MatMulFlattenBgradients/Linear_Layer/Linear_output_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
?$?*
transpose_b( 
?
3gradients/Linear_Layer/MatMul_grad/tuple/group_depsNoOp*^gradients/Linear_Layer/MatMul_grad/MatMul,^gradients/Linear_Layer/MatMul_grad/MatMul_1
?
;gradients/Linear_Layer/MatMul_grad/tuple/control_dependencyIdentity)gradients/Linear_Layer/MatMul_grad/MatMul4^gradients/Linear_Layer/MatMul_grad/tuple/group_deps*(
_output_shapes
:??????????$*
T0*<
_class2
0.loc:@gradients/Linear_Layer/MatMul_grad/MatMul
?
=gradients/Linear_Layer/MatMul_grad/tuple/control_dependency_1Identity+gradients/Linear_Layer/MatMul_grad/MatMul_14^gradients/Linear_Layer/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Linear_Layer/MatMul_grad/MatMul_1* 
_output_shapes
:
?$?
p
gradients/Flatten_grad/ShapeShapeDropout_cond_1/Merge*
T0*
out_type0*
_output_shapes
:
?
gradients/Flatten_grad/ReshapeReshape;gradients/Linear_Layer/MatMul_grad/tuple/control_dependencygradients/Flatten_grad/Shape*/
_output_shapes
:????????? *
T0*
Tshape0
?
-gradients/Dropout_cond_1/Merge_grad/cond_gradSwitchgradients/Flatten_grad/ReshapeDropout_cond_1/pred_id*
T0*1
_class'
%#loc:@gradients/Flatten_grad/Reshape*J
_output_shapes8
6:????????? :????????? 
l
4gradients/Dropout_cond_1/Merge_grad/tuple/group_depsNoOp.^gradients/Dropout_cond_1/Merge_grad/cond_grad
?
<gradients/Dropout_cond_1/Merge_grad/tuple/control_dependencyIdentity-gradients/Dropout_cond_1/Merge_grad/cond_grad5^gradients/Dropout_cond_1/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Flatten_grad/Reshape*/
_output_shapes
:????????? 
?
>gradients/Dropout_cond_1/Merge_grad/tuple/control_dependency_1Identity/gradients/Dropout_cond_1/Merge_grad/cond_grad:15^gradients/Dropout_cond_1/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Flatten_grad/Reshape*/
_output_shapes
:????????? 
?
gradients/SwitchSwitchRelu_1Dropout_cond_1/pred_id*
T0*J
_output_shapes8
6:????????? :????????? 
l
gradients/IdentityIdentitygradients/Switch:1*
T0*/
_output_shapes
:????????? 
c
gradients/Shape_1Shapegradients/Switch:1*
T0*
out_type0*
_output_shapes
:
o
gradients/zeros/ConstConst^gradients/Identity*
dtype0*
_output_shapes
: *
valueB
 *    
?
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*/
_output_shapes
:????????? *
T0*

index_type0
?
0gradients/Dropout_cond_1/Switch_1_grad/cond_gradMerge<gradients/Dropout_cond_1/Merge_grad/tuple/control_dependencygradients/zeros*
N*1
_output_shapes
:????????? : *
T0
?
/gradients/Dropout_cond_1/dropout/mul_grad/ShapeShapeDropout_cond_1/dropout/div*
T0*
out_type0*
_output_shapes
:
?
1gradients/Dropout_cond_1/dropout/mul_grad/Shape_1ShapeDropout_cond_1/dropout/Floor*
_output_shapes
:*
T0*
out_type0
?
?gradients/Dropout_cond_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/Dropout_cond_1/dropout/mul_grad/Shape1gradients/Dropout_cond_1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
-gradients/Dropout_cond_1/dropout/mul_grad/MulMul>gradients/Dropout_cond_1/Merge_grad/tuple/control_dependency_1Dropout_cond_1/dropout/Floor*
T0*/
_output_shapes
:????????? 
?
-gradients/Dropout_cond_1/dropout/mul_grad/SumSum-gradients/Dropout_cond_1/dropout/mul_grad/Mul?gradients/Dropout_cond_1/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
1gradients/Dropout_cond_1/dropout/mul_grad/ReshapeReshape-gradients/Dropout_cond_1/dropout/mul_grad/Sum/gradients/Dropout_cond_1/dropout/mul_grad/Shape*
T0*
Tshape0*/
_output_shapes
:????????? 
?
/gradients/Dropout_cond_1/dropout/mul_grad/Mul_1MulDropout_cond_1/dropout/div>gradients/Dropout_cond_1/Merge_grad/tuple/control_dependency_1*
T0*/
_output_shapes
:????????? 
?
/gradients/Dropout_cond_1/dropout/mul_grad/Sum_1Sum/gradients/Dropout_cond_1/dropout/mul_grad/Mul_1Agradients/Dropout_cond_1/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
3gradients/Dropout_cond_1/dropout/mul_grad/Reshape_1Reshape/gradients/Dropout_cond_1/dropout/mul_grad/Sum_11gradients/Dropout_cond_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:????????? 
?
:gradients/Dropout_cond_1/dropout/mul_grad/tuple/group_depsNoOp2^gradients/Dropout_cond_1/dropout/mul_grad/Reshape4^gradients/Dropout_cond_1/dropout/mul_grad/Reshape_1
?
Bgradients/Dropout_cond_1/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/Dropout_cond_1/dropout/mul_grad/Reshape;^gradients/Dropout_cond_1/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:????????? *
T0*D
_class:
86loc:@gradients/Dropout_cond_1/dropout/mul_grad/Reshape
?
Dgradients/Dropout_cond_1/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/Dropout_cond_1/dropout/mul_grad/Reshape_1;^gradients/Dropout_cond_1/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:????????? *
T0*F
_class<
:8loc:@gradients/Dropout_cond_1/dropout/mul_grad/Reshape_1
?
/gradients/Dropout_cond_1/dropout/div_grad/ShapeShape%Dropout_cond_1/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
t
1gradients/Dropout_cond_1/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
?gradients/Dropout_cond_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/Dropout_cond_1/dropout/div_grad/Shape1gradients/Dropout_cond_1/dropout/div_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
1gradients/Dropout_cond_1/dropout/div_grad/RealDivRealDivBgradients/Dropout_cond_1/dropout/mul_grad/tuple/control_dependency Dropout_cond_1/dropout/keep_prob*
T0*/
_output_shapes
:????????? 
?
-gradients/Dropout_cond_1/dropout/div_grad/SumSum1gradients/Dropout_cond_1/dropout/div_grad/RealDiv?gradients/Dropout_cond_1/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
1gradients/Dropout_cond_1/dropout/div_grad/ReshapeReshape-gradients/Dropout_cond_1/dropout/div_grad/Sum/gradients/Dropout_cond_1/dropout/div_grad/Shape*/
_output_shapes
:????????? *
T0*
Tshape0
?
-gradients/Dropout_cond_1/dropout/div_grad/NegNeg%Dropout_cond_1/dropout/Shape/Switch:1*/
_output_shapes
:????????? *
T0
?
3gradients/Dropout_cond_1/dropout/div_grad/RealDiv_1RealDiv-gradients/Dropout_cond_1/dropout/div_grad/Neg Dropout_cond_1/dropout/keep_prob*/
_output_shapes
:????????? *
T0
?
3gradients/Dropout_cond_1/dropout/div_grad/RealDiv_2RealDiv3gradients/Dropout_cond_1/dropout/div_grad/RealDiv_1 Dropout_cond_1/dropout/keep_prob*
T0*/
_output_shapes
:????????? 
?
-gradients/Dropout_cond_1/dropout/div_grad/mulMulBgradients/Dropout_cond_1/dropout/mul_grad/tuple/control_dependency3gradients/Dropout_cond_1/dropout/div_grad/RealDiv_2*
T0*/
_output_shapes
:????????? 
?
/gradients/Dropout_cond_1/dropout/div_grad/Sum_1Sum-gradients/Dropout_cond_1/dropout/div_grad/mulAgradients/Dropout_cond_1/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
3gradients/Dropout_cond_1/dropout/div_grad/Reshape_1Reshape/gradients/Dropout_cond_1/dropout/div_grad/Sum_11gradients/Dropout_cond_1/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
:gradients/Dropout_cond_1/dropout/div_grad/tuple/group_depsNoOp2^gradients/Dropout_cond_1/dropout/div_grad/Reshape4^gradients/Dropout_cond_1/dropout/div_grad/Reshape_1
?
Bgradients/Dropout_cond_1/dropout/div_grad/tuple/control_dependencyIdentity1gradients/Dropout_cond_1/dropout/div_grad/Reshape;^gradients/Dropout_cond_1/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/Dropout_cond_1/dropout/div_grad/Reshape*/
_output_shapes
:????????? 
?
Dgradients/Dropout_cond_1/dropout/div_grad/tuple/control_dependency_1Identity3gradients/Dropout_cond_1/dropout/div_grad/Reshape_1;^gradients/Dropout_cond_1/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*F
_class<
:8loc:@gradients/Dropout_cond_1/dropout/div_grad/Reshape_1
?
gradients/Switch_1SwitchRelu_1Dropout_cond_1/pred_id*J
_output_shapes8
6:????????? :????????? *
T0
n
gradients/Identity_1Identitygradients/Switch_1*/
_output_shapes
:????????? *
T0
c
gradients/Shape_2Shapegradients/Switch_1*
_output_shapes
:*
T0*
out_type0
s
gradients/zeros_1/ConstConst^gradients/Identity_1*
dtype0*
_output_shapes
: *
valueB
 *    
?
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*/
_output_shapes
:????????? *
T0*

index_type0
?
<gradients/Dropout_cond_1/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_1Bgradients/Dropout_cond_1/dropout/div_grad/tuple/control_dependency*
N*1
_output_shapes
:????????? : *
T0
?
gradients/AddNAddN0gradients/Dropout_cond_1/Switch_1_grad/cond_grad<gradients/Dropout_cond_1/dropout/Shape/Switch_grad/cond_grad*
T0*C
_class9
75loc:@gradients/Dropout_cond_1/Switch_1_grad/cond_grad*
N*/
_output_shapes
:????????? 
|
gradients/Relu_1_grad/ReluGradReluGradgradients/AddNRelu_1*
T0*/
_output_shapes
:????????? 
?
-gradients/Conv_Layer_1/Conv_output_grad/ShapeShapeConv_Layer_1/Conv2D*
_output_shapes
:*
T0*
out_type0
y
/gradients/Conv_Layer_1/Conv_output_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
?
=gradients/Conv_Layer_1/Conv_output_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/Conv_Layer_1/Conv_output_grad/Shape/gradients/Conv_Layer_1/Conv_output_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
+gradients/Conv_Layer_1/Conv_output_grad/SumSumgradients/Relu_1_grad/ReluGrad=gradients/Conv_Layer_1/Conv_output_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
/gradients/Conv_Layer_1/Conv_output_grad/ReshapeReshape+gradients/Conv_Layer_1/Conv_output_grad/Sum-gradients/Conv_Layer_1/Conv_output_grad/Shape*/
_output_shapes
:????????? *
T0*
Tshape0
?
-gradients/Conv_Layer_1/Conv_output_grad/Sum_1Sumgradients/Relu_1_grad/ReluGrad?gradients/Conv_Layer_1/Conv_output_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
?
1gradients/Conv_Layer_1/Conv_output_grad/Reshape_1Reshape-gradients/Conv_Layer_1/Conv_output_grad/Sum_1/gradients/Conv_Layer_1/Conv_output_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
8gradients/Conv_Layer_1/Conv_output_grad/tuple/group_depsNoOp0^gradients/Conv_Layer_1/Conv_output_grad/Reshape2^gradients/Conv_Layer_1/Conv_output_grad/Reshape_1
?
@gradients/Conv_Layer_1/Conv_output_grad/tuple/control_dependencyIdentity/gradients/Conv_Layer_1/Conv_output_grad/Reshape9^gradients/Conv_Layer_1/Conv_output_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Conv_Layer_1/Conv_output_grad/Reshape*/
_output_shapes
:????????? 
?
Bgradients/Conv_Layer_1/Conv_output_grad/tuple/control_dependency_1Identity1gradients/Conv_Layer_1/Conv_output_grad/Reshape_19^gradients/Conv_Layer_1/Conv_output_grad/tuple/group_deps*
_output_shapes
: *
T0*D
_class:
86loc:@gradients/Conv_Layer_1/Conv_output_grad/Reshape_1
?
)gradients/Conv_Layer_1/Conv2D_grad/ShapeNShapeNConv_Layer_1/PadConv_Layer_1/Conv_weights/read*
N* 
_output_shapes
::*
T0*
out_type0
?
6gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/Conv_Layer_1/Conv2D_grad/ShapeNConv_Layer_1/Conv_weights/read@gradients/Conv_Layer_1/Conv_output_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:?????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
7gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv_Layer_1/Pad+gradients/Conv_Layer_1/Conv2D_grad/ShapeN:1@gradients/Conv_Layer_1/Conv_output_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
3gradients/Conv_Layer_1/Conv2D_grad/tuple/group_depsNoOp8^gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropFilter7^gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropInput
?
;gradients/Conv_Layer_1/Conv2D_grad/tuple/control_dependencyIdentity6gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropInput4^gradients/Conv_Layer_1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????
?
=gradients/Conv_Layer_1/Conv2D_grad/tuple/control_dependency_1Identity7gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropFilter4^gradients/Conv_Layer_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*J
_class@
><loc:@gradients/Conv_Layer_1/Conv2D_grad/Conv2DBackpropFilter
f
$gradients/Conv_Layer_1/Pad_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
i
'gradients/Conv_Layer_1/Pad_grad/stack/1Const*
value	B :*
dtype0*
_output_shapes
: 
?
%gradients/Conv_Layer_1/Pad_grad/stackPack$gradients/Conv_Layer_1/Pad_grad/Rank'gradients/Conv_Layer_1/Pad_grad/stack/1*
N*
_output_shapes
:*
T0*

axis 
|
+gradients/Conv_Layer_1/Pad_grad/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
?
%gradients/Conv_Layer_1/Pad_grad/SliceSliceConst_1+gradients/Conv_Layer_1/Pad_grad/Slice/begin%gradients/Conv_Layer_1/Pad_grad/stack*
_output_shapes

:*
T0*
Index0
?
-gradients/Conv_Layer_1/Pad_grad/Reshape/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
'gradients/Conv_Layer_1/Pad_grad/ReshapeReshape%gradients/Conv_Layer_1/Pad_grad/Slice-gradients/Conv_Layer_1/Pad_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
w
%gradients/Conv_Layer_1/Pad_grad/ShapeShapeDropout_cond/Merge*
T0*
out_type0*
_output_shapes
:
?
'gradients/Conv_Layer_1/Pad_grad/Slice_1Slice;gradients/Conv_Layer_1/Conv2D_grad/tuple/control_dependency'gradients/Conv_Layer_1/Pad_grad/Reshape%gradients/Conv_Layer_1/Pad_grad/Shape*/
_output_shapes
:?????????*
T0*
Index0
?
+gradients/Dropout_cond/Merge_grad/cond_gradSwitch'gradients/Conv_Layer_1/Pad_grad/Slice_1Dropout_cond/pred_id*
T0*:
_class0
.,loc:@gradients/Conv_Layer_1/Pad_grad/Slice_1*J
_output_shapes8
6:?????????:?????????
h
2gradients/Dropout_cond/Merge_grad/tuple/group_depsNoOp,^gradients/Dropout_cond/Merge_grad/cond_grad
?
:gradients/Dropout_cond/Merge_grad/tuple/control_dependencyIdentity+gradients/Dropout_cond/Merge_grad/cond_grad3^gradients/Dropout_cond/Merge_grad/tuple/group_deps*/
_output_shapes
:?????????*
T0*:
_class0
.,loc:@gradients/Conv_Layer_1/Pad_grad/Slice_1
?
<gradients/Dropout_cond/Merge_grad/tuple/control_dependency_1Identity-gradients/Dropout_cond/Merge_grad/cond_grad:13^gradients/Dropout_cond/Merge_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/Conv_Layer_1/Pad_grad/Slice_1*/
_output_shapes
:?????????
?
gradients/Switch_2SwitchReluDropout_cond/pred_id*J
_output_shapes8
6:?????????:?????????*
T0
p
gradients/Identity_2Identitygradients/Switch_2:1*/
_output_shapes
:?????????*
T0
e
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
s
gradients/zeros_2/ConstConst^gradients/Identity_2*
dtype0*
_output_shapes
: *
valueB
 *    
?
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*/
_output_shapes
:?????????*
T0*

index_type0
?
.gradients/Dropout_cond/Switch_1_grad/cond_gradMerge:gradients/Dropout_cond/Merge_grad/tuple/control_dependencygradients/zeros_2*
T0*
N*1
_output_shapes
:?????????: 
?
-gradients/Dropout_cond/dropout/mul_grad/ShapeShapeDropout_cond/dropout/div*
T0*
out_type0*
_output_shapes
:
?
/gradients/Dropout_cond/dropout/mul_grad/Shape_1ShapeDropout_cond/dropout/Floor*
T0*
out_type0*
_output_shapes
:
?
=gradients/Dropout_cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/Dropout_cond/dropout/mul_grad/Shape/gradients/Dropout_cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
+gradients/Dropout_cond/dropout/mul_grad/MulMul<gradients/Dropout_cond/Merge_grad/tuple/control_dependency_1Dropout_cond/dropout/Floor*
T0*/
_output_shapes
:?????????
?
+gradients/Dropout_cond/dropout/mul_grad/SumSum+gradients/Dropout_cond/dropout/mul_grad/Mul=gradients/Dropout_cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
/gradients/Dropout_cond/dropout/mul_grad/ReshapeReshape+gradients/Dropout_cond/dropout/mul_grad/Sum-gradients/Dropout_cond/dropout/mul_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????
?
-gradients/Dropout_cond/dropout/mul_grad/Mul_1MulDropout_cond/dropout/div<gradients/Dropout_cond/Merge_grad/tuple/control_dependency_1*
T0*/
_output_shapes
:?????????
?
-gradients/Dropout_cond/dropout/mul_grad/Sum_1Sum-gradients/Dropout_cond/dropout/mul_grad/Mul_1?gradients/Dropout_cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
1gradients/Dropout_cond/dropout/mul_grad/Reshape_1Reshape-gradients/Dropout_cond/dropout/mul_grad/Sum_1/gradients/Dropout_cond/dropout/mul_grad/Shape_1*/
_output_shapes
:?????????*
T0*
Tshape0
?
8gradients/Dropout_cond/dropout/mul_grad/tuple/group_depsNoOp0^gradients/Dropout_cond/dropout/mul_grad/Reshape2^gradients/Dropout_cond/dropout/mul_grad/Reshape_1
?
@gradients/Dropout_cond/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/Dropout_cond/dropout/mul_grad/Reshape9^gradients/Dropout_cond/dropout/mul_grad/tuple/group_deps*/
_output_shapes
:?????????*
T0*B
_class8
64loc:@gradients/Dropout_cond/dropout/mul_grad/Reshape
?
Bgradients/Dropout_cond/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/Dropout_cond/dropout/mul_grad/Reshape_19^gradients/Dropout_cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/Dropout_cond/dropout/mul_grad/Reshape_1*/
_output_shapes
:?????????
?
-gradients/Dropout_cond/dropout/div_grad/ShapeShape#Dropout_cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
r
/gradients/Dropout_cond/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
?
=gradients/Dropout_cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/Dropout_cond/dropout/div_grad/Shape/gradients/Dropout_cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
/gradients/Dropout_cond/dropout/div_grad/RealDivRealDiv@gradients/Dropout_cond/dropout/mul_grad/tuple/control_dependencyDropout_cond/dropout/keep_prob*
T0*/
_output_shapes
:?????????
?
+gradients/Dropout_cond/dropout/div_grad/SumSum/gradients/Dropout_cond/dropout/div_grad/RealDiv=gradients/Dropout_cond/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
/gradients/Dropout_cond/dropout/div_grad/ReshapeReshape+gradients/Dropout_cond/dropout/div_grad/Sum-gradients/Dropout_cond/dropout/div_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????
?
+gradients/Dropout_cond/dropout/div_grad/NegNeg#Dropout_cond/dropout/Shape/Switch:1*
T0*/
_output_shapes
:?????????
?
1gradients/Dropout_cond/dropout/div_grad/RealDiv_1RealDiv+gradients/Dropout_cond/dropout/div_grad/NegDropout_cond/dropout/keep_prob*/
_output_shapes
:?????????*
T0
?
1gradients/Dropout_cond/dropout/div_grad/RealDiv_2RealDiv1gradients/Dropout_cond/dropout/div_grad/RealDiv_1Dropout_cond/dropout/keep_prob*/
_output_shapes
:?????????*
T0
?
+gradients/Dropout_cond/dropout/div_grad/mulMul@gradients/Dropout_cond/dropout/mul_grad/tuple/control_dependency1gradients/Dropout_cond/dropout/div_grad/RealDiv_2*/
_output_shapes
:?????????*
T0
?
-gradients/Dropout_cond/dropout/div_grad/Sum_1Sum+gradients/Dropout_cond/dropout/div_grad/mul?gradients/Dropout_cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
1gradients/Dropout_cond/dropout/div_grad/Reshape_1Reshape-gradients/Dropout_cond/dropout/div_grad/Sum_1/gradients/Dropout_cond/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
?
8gradients/Dropout_cond/dropout/div_grad/tuple/group_depsNoOp0^gradients/Dropout_cond/dropout/div_grad/Reshape2^gradients/Dropout_cond/dropout/div_grad/Reshape_1
?
@gradients/Dropout_cond/dropout/div_grad/tuple/control_dependencyIdentity/gradients/Dropout_cond/dropout/div_grad/Reshape9^gradients/Dropout_cond/dropout/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Dropout_cond/dropout/div_grad/Reshape*/
_output_shapes
:?????????
?
Bgradients/Dropout_cond/dropout/div_grad/tuple/control_dependency_1Identity1gradients/Dropout_cond/dropout/div_grad/Reshape_19^gradients/Dropout_cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/Dropout_cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
?
gradients/Switch_3SwitchReluDropout_cond/pred_id*
T0*J
_output_shapes8
6:?????????:?????????
n
gradients/Identity_3Identitygradients/Switch_3*
T0*/
_output_shapes
:?????????
c
gradients/Shape_4Shapegradients/Switch_3*
_output_shapes
:*
T0*
out_type0
s
gradients/zeros_3/ConstConst^gradients/Identity_3*
valueB
 *    *
dtype0*
_output_shapes
: 
?
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*/
_output_shapes
:?????????*
T0*

index_type0
?
:gradients/Dropout_cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_3@gradients/Dropout_cond/dropout/div_grad/tuple/control_dependency*
T0*
N*1
_output_shapes
:?????????: 
?
gradients/AddN_1AddN.gradients/Dropout_cond/Switch_1_grad/cond_grad:gradients/Dropout_cond/dropout/Shape/Switch_grad/cond_grad*
N*/
_output_shapes
:?????????*
T0*A
_class7
53loc:@gradients/Dropout_cond/Switch_1_grad/cond_grad
z
gradients/Relu_grad/ReluGradReluGradgradients/AddN_1Relu*
T0*/
_output_shapes
:?????????
|
+gradients/Conv_Layer/Conv_output_grad/ShapeShapeConv_Layer/Conv2D*
_output_shapes
:*
T0*
out_type0
w
-gradients/Conv_Layer/Conv_output_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
?
;gradients/Conv_Layer/Conv_output_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/Conv_Layer/Conv_output_grad/Shape-gradients/Conv_Layer/Conv_output_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
)gradients/Conv_Layer/Conv_output_grad/SumSumgradients/Relu_grad/ReluGrad;gradients/Conv_Layer/Conv_output_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
-gradients/Conv_Layer/Conv_output_grad/ReshapeReshape)gradients/Conv_Layer/Conv_output_grad/Sum+gradients/Conv_Layer/Conv_output_grad/Shape*/
_output_shapes
:?????????*
T0*
Tshape0
?
+gradients/Conv_Layer/Conv_output_grad/Sum_1Sumgradients/Relu_grad/ReluGrad=gradients/Conv_Layer/Conv_output_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
/gradients/Conv_Layer/Conv_output_grad/Reshape_1Reshape+gradients/Conv_Layer/Conv_output_grad/Sum_1-gradients/Conv_Layer/Conv_output_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
?
6gradients/Conv_Layer/Conv_output_grad/tuple/group_depsNoOp.^gradients/Conv_Layer/Conv_output_grad/Reshape0^gradients/Conv_Layer/Conv_output_grad/Reshape_1
?
>gradients/Conv_Layer/Conv_output_grad/tuple/control_dependencyIdentity-gradients/Conv_Layer/Conv_output_grad/Reshape7^gradients/Conv_Layer/Conv_output_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/Conv_Layer/Conv_output_grad/Reshape*/
_output_shapes
:?????????
?
@gradients/Conv_Layer/Conv_output_grad/tuple/control_dependency_1Identity/gradients/Conv_Layer/Conv_output_grad/Reshape_17^gradients/Conv_Layer/Conv_output_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Conv_Layer/Conv_output_grad/Reshape_1*
_output_shapes
:
?
'gradients/Conv_Layer/Conv2D_grad/ShapeNShapeNConv_Layer/PadConv_Layer/Conv_weights/read*
T0*
out_type0*
N* 
_output_shapes
::
?
4gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/Conv_Layer/Conv2D_grad/ShapeNConv_Layer/Conv_weights/read>gradients/Conv_Layer/Conv_output_grad/tuple/control_dependency*
paddingSAME*/
_output_shapes
:?????????``*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
5gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterConv_Layer/Pad)gradients/Conv_Layer/Conv2D_grad/ShapeN:1>gradients/Conv_Layer/Conv_output_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
?
1gradients/Conv_Layer/Conv2D_grad/tuple/group_depsNoOp6^gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropFilter5^gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropInput
?
9gradients/Conv_Layer/Conv2D_grad/tuple/control_dependencyIdentity4gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropInput2^gradients/Conv_Layer/Conv2D_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????``
?
;gradients/Conv_Layer/Conv2D_grad/tuple/control_dependency_1Identity5gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropFilter2^gradients/Conv_Layer/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/Conv_Layer/Conv2D_grad/Conv2DBackpropFilter
?
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*)
_class
loc:@Conv_Layer/Conv_biases
?
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *)
_class
loc:@Conv_Layer/Conv_biases*
	container *
shape: 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
u
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
beta2_power/initial_valueConst*
valueB
 *w??*)
_class
loc:@Conv_Layer/Conv_biases*
dtype0*
_output_shapes
: 
?
beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *)
_class
loc:@Conv_Layer/Conv_biases*
	container *
shape: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
validate_shape(*
_output_shapes
: 
u
beta2_power/readIdentitybeta2_power*
_output_shapes
: *
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
.Conv_Layer/Conv_weights/Adam/Initializer/zerosConst*%
valueB*    **
_class 
loc:@Conv_Layer/Conv_weights*
dtype0*&
_output_shapes
:
?
Conv_Layer/Conv_weights/Adam
VariableV2*
dtype0*&
_output_shapes
:*
shared_name **
_class 
loc:@Conv_Layer/Conv_weights*
	container *
shape:
?
#Conv_Layer/Conv_weights/Adam/AssignAssignConv_Layer/Conv_weights/Adam.Conv_Layer/Conv_weights/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights
?
!Conv_Layer/Conv_weights/Adam/readIdentityConv_Layer/Conv_weights/Adam*
T0**
_class 
loc:@Conv_Layer/Conv_weights*&
_output_shapes
:
?
0Conv_Layer/Conv_weights/Adam_1/Initializer/zerosConst*
dtype0*&
_output_shapes
:*%
valueB*    **
_class 
loc:@Conv_Layer/Conv_weights
?
Conv_Layer/Conv_weights/Adam_1
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name **
_class 
loc:@Conv_Layer/Conv_weights
?
%Conv_Layer/Conv_weights/Adam_1/AssignAssignConv_Layer/Conv_weights/Adam_10Conv_Layer/Conv_weights/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights*
validate_shape(*&
_output_shapes
:
?
#Conv_Layer/Conv_weights/Adam_1/readIdentityConv_Layer/Conv_weights/Adam_1*&
_output_shapes
:*
T0**
_class 
loc:@Conv_Layer/Conv_weights
?
-Conv_Layer/Conv_biases/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *)
_class
loc:@Conv_Layer/Conv_biases
?
Conv_Layer/Conv_biases/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@Conv_Layer/Conv_biases*
	container *
shape:
?
"Conv_Layer/Conv_biases/Adam/AssignAssignConv_Layer/Conv_biases/Adam-Conv_Layer/Conv_biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
 Conv_Layer/Conv_biases/Adam/readIdentityConv_Layer/Conv_biases/Adam*
_output_shapes
:*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
/Conv_Layer/Conv_biases/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *)
_class
loc:@Conv_Layer/Conv_biases
?
Conv_Layer/Conv_biases/Adam_1
VariableV2*
shared_name *)
_class
loc:@Conv_Layer/Conv_biases*
	container *
shape:*
dtype0*
_output_shapes
:
?
$Conv_Layer/Conv_biases/Adam_1/AssignAssignConv_Layer/Conv_biases/Adam_1/Conv_Layer/Conv_biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
"Conv_Layer/Conv_biases/Adam_1/readIdentityConv_Layer/Conv_biases/Adam_1*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
_output_shapes
:
?
@Conv_Layer_1/Conv_weights/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"             *,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
6Conv_Layer_1/Conv_weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@Conv_Layer_1/Conv_weights*
dtype0*
_output_shapes
: 
?
0Conv_Layer_1/Conv_weights/Adam/Initializer/zerosFill@Conv_Layer_1/Conv_weights/Adam/Initializer/zeros/shape_as_tensor6Conv_Layer_1/Conv_weights/Adam/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*&
_output_shapes
: 
?
Conv_Layer_1/Conv_weights/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@Conv_Layer_1/Conv_weights*
	container *
shape: 
?
%Conv_Layer_1/Conv_weights/Adam/AssignAssignConv_Layer_1/Conv_weights/Adam0Conv_Layer_1/Conv_weights/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*
validate_shape(*&
_output_shapes
: 
?
#Conv_Layer_1/Conv_weights/Adam/readIdentityConv_Layer_1/Conv_weights/Adam*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*&
_output_shapes
: 
?
BConv_Layer_1/Conv_weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"             *,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
8Conv_Layer_1/Conv_weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *,
_class"
 loc:@Conv_Layer_1/Conv_weights*
dtype0*
_output_shapes
: 
?
2Conv_Layer_1/Conv_weights/Adam_1/Initializer/zerosFillBConv_Layer_1/Conv_weights/Adam_1/Initializer/zeros/shape_as_tensor8Conv_Layer_1/Conv_weights/Adam_1/Initializer/zeros/Const*&
_output_shapes
: *
T0*

index_type0*,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
 Conv_Layer_1/Conv_weights/Adam_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *,
_class"
 loc:@Conv_Layer_1/Conv_weights*
	container *
shape: 
?
'Conv_Layer_1/Conv_weights/Adam_1/AssignAssign Conv_Layer_1/Conv_weights/Adam_12Conv_Layer_1/Conv_weights/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
%Conv_Layer_1/Conv_weights/Adam_1/readIdentity Conv_Layer_1/Conv_weights/Adam_1*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*&
_output_shapes
: 
?
/Conv_Layer_1/Conv_biases/Adam/Initializer/zerosConst*
valueB *    *+
_class!
loc:@Conv_Layer_1/Conv_biases*
dtype0*
_output_shapes
: 
?
Conv_Layer_1/Conv_biases/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@Conv_Layer_1/Conv_biases*
	container *
shape: 
?
$Conv_Layer_1/Conv_biases/Adam/AssignAssignConv_Layer_1/Conv_biases/Adam/Conv_Layer_1/Conv_biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases
?
"Conv_Layer_1/Conv_biases/Adam/readIdentityConv_Layer_1/Conv_biases/Adam*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases*
_output_shapes
: 
?
1Conv_Layer_1/Conv_biases/Adam_1/Initializer/zerosConst*
valueB *    *+
_class!
loc:@Conv_Layer_1/Conv_biases*
dtype0*
_output_shapes
: 
?
Conv_Layer_1/Conv_biases/Adam_1
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@Conv_Layer_1/Conv_biases
?
&Conv_Layer_1/Conv_biases/Adam_1/AssignAssignConv_Layer_1/Conv_biases/Adam_11Conv_Layer_1/Conv_biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases
?
$Conv_Layer_1/Conv_biases/Adam_1/readIdentityConv_Layer_1/Conv_biases/Adam_1*
_output_shapes
: *
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases
?
BLinear_Layer/Linear_weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *.
_class$
" loc:@Linear_Layer/Linear_weights*
dtype0*
_output_shapes
:
?
8Linear_Layer/Linear_weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *.
_class$
" loc:@Linear_Layer/Linear_weights*
dtype0*
_output_shapes
: 
?
2Linear_Layer/Linear_weights/Adam/Initializer/zerosFillBLinear_Layer/Linear_weights/Adam/Initializer/zeros/shape_as_tensor8Linear_Layer/Linear_weights/Adam/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@Linear_Layer/Linear_weights* 
_output_shapes
:
?$?
?
 Linear_Layer/Linear_weights/Adam
VariableV2*
	container *
shape:
?$?*
dtype0* 
_output_shapes
:
?$?*
shared_name *.
_class$
" loc:@Linear_Layer/Linear_weights
?
'Linear_Layer/Linear_weights/Adam/AssignAssign Linear_Layer/Linear_weights/Adam2Linear_Layer/Linear_weights/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
?$?*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
%Linear_Layer/Linear_weights/Adam/readIdentity Linear_Layer/Linear_weights/Adam*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights* 
_output_shapes
:
?$?
?
DLinear_Layer/Linear_weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ?   *.
_class$
" loc:@Linear_Layer/Linear_weights*
dtype0*
_output_shapes
:
?
:Linear_Layer/Linear_weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *.
_class$
" loc:@Linear_Layer/Linear_weights
?
4Linear_Layer/Linear_weights/Adam_1/Initializer/zerosFillDLinear_Layer/Linear_weights/Adam_1/Initializer/zeros/shape_as_tensor:Linear_Layer/Linear_weights/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
?$?*
T0*

index_type0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
"Linear_Layer/Linear_weights/Adam_1
VariableV2*
	container *
shape:
?$?*
dtype0* 
_output_shapes
:
?$?*
shared_name *.
_class$
" loc:@Linear_Layer/Linear_weights
?
)Linear_Layer/Linear_weights/Adam_1/AssignAssign"Linear_Layer/Linear_weights/Adam_14Linear_Layer/Linear_weights/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights*
validate_shape(* 
_output_shapes
:
?$?
?
'Linear_Layer/Linear_weights/Adam_1/readIdentity"Linear_Layer/Linear_weights/Adam_1* 
_output_shapes
:
?$?*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
1Linear_Layer/Linear_biases/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *-
_class#
!loc:@Linear_Layer/Linear_biases
?
Linear_Layer/Linear_biases/Adam
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *-
_class#
!loc:@Linear_Layer/Linear_biases*
	container *
shape:?
?
&Linear_Layer/Linear_biases/Adam/AssignAssignLinear_Layer/Linear_biases/Adam1Linear_Layer/Linear_biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
$Linear_Layer/Linear_biases/Adam/readIdentityLinear_Layer/Linear_biases/Adam*
_output_shapes	
:?*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
3Linear_Layer/Linear_biases/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*
valueB?*    *-
_class#
!loc:@Linear_Layer/Linear_biases
?
!Linear_Layer/Linear_biases/Adam_1
VariableV2*
shared_name *-
_class#
!loc:@Linear_Layer/Linear_biases*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
(Linear_Layer/Linear_biases/Adam_1/AssignAssign!Linear_Layer/Linear_biases/Adam_13Linear_Layer/Linear_biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
&Linear_Layer/Linear_biases/Adam_1/readIdentity!Linear_Layer/Linear_biases/Adam_1*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases*
_output_shapes	
:?
?
4Linear_Layer_1/Linear_weights/Adam/Initializer/zerosConst*
valueB	?*    *0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
dtype0*
_output_shapes
:	?
?
"Linear_Layer_1/Linear_weights/Adam
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
	container *
shape:	?
?
)Linear_Layer_1/Linear_weights/Adam/AssignAssign"Linear_Layer_1/Linear_weights/Adam4Linear_Layer_1/Linear_weights/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
'Linear_Layer_1/Linear_weights/Adam/readIdentity"Linear_Layer_1/Linear_weights/Adam*
_output_shapes
:	?*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
6Linear_Layer_1/Linear_weights/Adam_1/Initializer/zerosConst*
valueB	?*    *0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
dtype0*
_output_shapes
:	?
?
$Linear_Layer_1/Linear_weights/Adam_1
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
	container *
shape:	?
?
+Linear_Layer_1/Linear_weights/Adam_1/AssignAssign$Linear_Layer_1/Linear_weights/Adam_16Linear_Layer_1/Linear_weights/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
)Linear_Layer_1/Linear_weights/Adam_1/readIdentity$Linear_Layer_1/Linear_weights/Adam_1*
_output_shapes
:	?*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
3Linear_Layer_1/Linear_biases/Adam/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@Linear_Layer_1/Linear_biases*
dtype0*
_output_shapes
:
?
!Linear_Layer_1/Linear_biases/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@Linear_Layer_1/Linear_biases*
	container *
shape:
?
(Linear_Layer_1/Linear_biases/Adam/AssignAssign!Linear_Layer_1/Linear_biases/Adam3Linear_Layer_1/Linear_biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
&Linear_Layer_1/Linear_biases/Adam/readIdentity!Linear_Layer_1/Linear_biases/Adam*
_output_shapes
:*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
5Linear_Layer_1/Linear_biases/Adam_1/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@Linear_Layer_1/Linear_biases*
dtype0*
_output_shapes
:
?
#Linear_Layer_1/Linear_biases/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
*Linear_Layer_1/Linear_biases/Adam_1/AssignAssign#Linear_Layer_1/Linear_biases/Adam_15Linear_Layer_1/Linear_biases/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases*
validate_shape(*
_output_shapes
:
?
(Linear_Layer_1/Linear_biases/Adam_1/readIdentity#Linear_Layer_1/Linear_biases/Adam_1*
_output_shapes
:*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w??
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w?+2
?
-Adam/update_Conv_Layer/Conv_weights/ApplyAdam	ApplyAdamConv_Layer/Conv_weightsConv_Layer/Conv_weights/AdamConv_Layer/Conv_weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon;gradients/Conv_Layer/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@Conv_Layer/Conv_weights*
use_nesterov( *&
_output_shapes
:
?
,Adam/update_Conv_Layer/Conv_biases/ApplyAdam	ApplyAdamConv_Layer/Conv_biasesConv_Layer/Conv_biases/AdamConv_Layer/Conv_biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon@gradients/Conv_Layer/Conv_output_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@Conv_Layer/Conv_biases*
use_nesterov( *
_output_shapes
:
?
/Adam/update_Conv_Layer_1/Conv_weights/ApplyAdam	ApplyAdamConv_Layer_1/Conv_weightsConv_Layer_1/Conv_weights/Adam Conv_Layer_1/Conv_weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/Conv_Layer_1/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
: *
use_locking( *
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
.Adam/update_Conv_Layer_1/Conv_biases/ApplyAdam	ApplyAdamConv_Layer_1/Conv_biasesConv_Layer_1/Conv_biases/AdamConv_Layer_1/Conv_biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonBgradients/Conv_Layer_1/Conv_output_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases
?
1Adam/update_Linear_Layer/Linear_weights/ApplyAdam	ApplyAdamLinear_Layer/Linear_weights Linear_Layer/Linear_weights/Adam"Linear_Layer/Linear_weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/Linear_Layer/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
?$?*
use_locking( *
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
0Adam/update_Linear_Layer/Linear_biases/ApplyAdam	ApplyAdamLinear_Layer/Linear_biasesLinear_Layer/Linear_biases/Adam!Linear_Layer/Linear_biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonDgradients/Linear_Layer/Linear_output_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:?*
use_locking( *
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
3Adam/update_Linear_Layer_1/Linear_weights/ApplyAdam	ApplyAdamLinear_Layer_1/Linear_weights"Linear_Layer_1/Linear_weights/Adam$Linear_Layer_1/Linear_weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/Linear_Layer_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
use_nesterov( *
_output_shapes
:	?
?
2Adam/update_Linear_Layer_1/Linear_biases/ApplyAdam	ApplyAdamLinear_Layer_1/Linear_biases!Linear_Layer_1/Linear_biases/Adam#Linear_Layer_1/Linear_biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonFgradients/Linear_Layer_1/Linear_output_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases*
use_nesterov( *
_output_shapes
:
?
Adam/mulMulbeta1_power/read
Adam/beta1-^Adam/update_Conv_Layer/Conv_biases/ApplyAdam.^Adam/update_Conv_Layer/Conv_weights/ApplyAdam/^Adam/update_Conv_Layer_1/Conv_biases/ApplyAdam0^Adam/update_Conv_Layer_1/Conv_weights/ApplyAdam1^Adam/update_Linear_Layer/Linear_biases/ApplyAdam2^Adam/update_Linear_Layer/Linear_weights/ApplyAdam3^Adam/update_Linear_Layer_1/Linear_biases/ApplyAdam4^Adam/update_Linear_Layer_1/Linear_weights/ApplyAdam*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
_output_shapes
: 
?
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*)
_class
loc:@Conv_Layer/Conv_biases
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2-^Adam/update_Conv_Layer/Conv_biases/ApplyAdam.^Adam/update_Conv_Layer/Conv_weights/ApplyAdam/^Adam/update_Conv_Layer_1/Conv_biases/ApplyAdam0^Adam/update_Conv_Layer_1/Conv_weights/ApplyAdam1^Adam/update_Linear_Layer/Linear_biases/ApplyAdam2^Adam/update_Linear_Layer/Linear_weights/ApplyAdam3^Adam/update_Linear_Layer_1/Linear_biases/ApplyAdam4^Adam/update_Linear_Layer_1/Linear_weights/ApplyAdam*
_output_shapes
: *
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*)
_class
loc:@Conv_Layer/Conv_biases*
validate_shape(*
_output_shapes
: 
?
AdamNoOp^Adam/Assign^Adam/Assign_1-^Adam/update_Conv_Layer/Conv_biases/ApplyAdam.^Adam/update_Conv_Layer/Conv_weights/ApplyAdam/^Adam/update_Conv_Layer_1/Conv_biases/ApplyAdam0^Adam/update_Conv_Layer_1/Conv_weights/ApplyAdam1^Adam/update_Linear_Layer/Linear_biases/ApplyAdam2^Adam/update_Linear_Layer/Linear_weights/ApplyAdam3^Adam/update_Linear_Layer_1/Linear_biases/ApplyAdam4^Adam/update_Linear_Layer_1/Linear_weights/ApplyAdam
?
initNoOp#^Conv_Layer/Conv_biases/Adam/Assign%^Conv_Layer/Conv_biases/Adam_1/Assign^Conv_Layer/Conv_biases/Assign$^Conv_Layer/Conv_weights/Adam/Assign&^Conv_Layer/Conv_weights/Adam_1/Assign^Conv_Layer/Conv_weights/Assign%^Conv_Layer_1/Conv_biases/Adam/Assign'^Conv_Layer_1/Conv_biases/Adam_1/Assign ^Conv_Layer_1/Conv_biases/Assign&^Conv_Layer_1/Conv_weights/Adam/Assign(^Conv_Layer_1/Conv_weights/Adam_1/Assign!^Conv_Layer_1/Conv_weights/Assign'^Linear_Layer/Linear_biases/Adam/Assign)^Linear_Layer/Linear_biases/Adam_1/Assign"^Linear_Layer/Linear_biases/Assign(^Linear_Layer/Linear_weights/Adam/Assign*^Linear_Layer/Linear_weights/Adam_1/Assign#^Linear_Layer/Linear_weights/Assign)^Linear_Layer_1/Linear_biases/Adam/Assign+^Linear_Layer_1/Linear_biases/Adam_1/Assign$^Linear_Layer_1/Linear_biases/Assign*^Linear_Layer_1/Linear_weights/Adam/Assign,^Linear_Layer_1/Linear_weights/Adam_1/Assign%^Linear_Layer_1/Linear_weights/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_085bdbe03fc74dd8ba016eae7373e1e6/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BConv_Layer/Conv_biasesBConv_Layer/Conv_biases/AdamBConv_Layer/Conv_biases/Adam_1BConv_Layer/Conv_weightsBConv_Layer/Conv_weights/AdamBConv_Layer/Conv_weights/Adam_1BConv_Layer_1/Conv_biasesBConv_Layer_1/Conv_biases/AdamBConv_Layer_1/Conv_biases/Adam_1BConv_Layer_1/Conv_weightsBConv_Layer_1/Conv_weights/AdamB Conv_Layer_1/Conv_weights/Adam_1BLinear_Layer/Linear_biasesBLinear_Layer/Linear_biases/AdamB!Linear_Layer/Linear_biases/Adam_1BLinear_Layer/Linear_weightsB Linear_Layer/Linear_weights/AdamB"Linear_Layer/Linear_weights/Adam_1BLinear_Layer_1/Linear_biasesB!Linear_Layer_1/Linear_biases/AdamB#Linear_Layer_1/Linear_biases/Adam_1BLinear_Layer_1/Linear_weightsB"Linear_Layer_1/Linear_weights/AdamB$Linear_Layer_1/Linear_weights/Adam_1Bbeta1_powerBbeta2_power
?
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConv_Layer/Conv_biasesConv_Layer/Conv_biases/AdamConv_Layer/Conv_biases/Adam_1Conv_Layer/Conv_weightsConv_Layer/Conv_weights/AdamConv_Layer/Conv_weights/Adam_1Conv_Layer_1/Conv_biasesConv_Layer_1/Conv_biases/AdamConv_Layer_1/Conv_biases/Adam_1Conv_Layer_1/Conv_weightsConv_Layer_1/Conv_weights/Adam Conv_Layer_1/Conv_weights/Adam_1Linear_Layer/Linear_biasesLinear_Layer/Linear_biases/Adam!Linear_Layer/Linear_biases/Adam_1Linear_Layer/Linear_weights Linear_Layer/Linear_weights/Adam"Linear_Layer/Linear_weights/Adam_1Linear_Layer_1/Linear_biases!Linear_Layer_1/Linear_biases/Adam#Linear_Layer_1/Linear_biases/Adam_1Linear_Layer_1/Linear_weights"Linear_Layer_1/Linear_weights/Adam$Linear_Layer_1/Linear_weights/Adam_1beta1_powerbeta2_power*(
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
?
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*?
value?B?BConv_Layer/Conv_biasesBConv_Layer/Conv_biases/AdamBConv_Layer/Conv_biases/Adam_1BConv_Layer/Conv_weightsBConv_Layer/Conv_weights/AdamBConv_Layer/Conv_weights/Adam_1BConv_Layer_1/Conv_biasesBConv_Layer_1/Conv_biases/AdamBConv_Layer_1/Conv_biases/Adam_1BConv_Layer_1/Conv_weightsBConv_Layer_1/Conv_weights/AdamB Conv_Layer_1/Conv_weights/Adam_1BLinear_Layer/Linear_biasesBLinear_Layer/Linear_biases/AdamB!Linear_Layer/Linear_biases/Adam_1BLinear_Layer/Linear_weightsB Linear_Layer/Linear_weights/AdamB"Linear_Layer/Linear_weights/Adam_1BLinear_Layer_1/Linear_biasesB!Linear_Layer_1/Linear_biases/AdamB#Linear_Layer_1/Linear_biases/Adam_1BLinear_Layer_1/Linear_weightsB"Linear_Layer_1/Linear_weights/AdamB$Linear_Layer_1/Linear_weights/Adam_1Bbeta1_powerBbeta2_power
?
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
?
save/AssignAssignConv_Layer/Conv_biasessave/RestoreV2*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
validate_shape(*
_output_shapes
:
?
save/Assign_1AssignConv_Layer/Conv_biases/Adamsave/RestoreV2:1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
save/Assign_2AssignConv_Layer/Conv_biases/Adam_1save/RestoreV2:2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
save/Assign_3AssignConv_Layer/Conv_weightssave/RestoreV2:3*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights
?
save/Assign_4AssignConv_Layer/Conv_weights/Adamsave/RestoreV2:4*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights
?
save/Assign_5AssignConv_Layer/Conv_weights/Adam_1save/RestoreV2:5*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0**
_class 
loc:@Conv_Layer/Conv_weights
?
save/Assign_6AssignConv_Layer_1/Conv_biasessave/RestoreV2:6*
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases*
validate_shape(*
_output_shapes
: 
?
save/Assign_7AssignConv_Layer_1/Conv_biases/Adamsave/RestoreV2:7*
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases*
validate_shape(*
_output_shapes
: 
?
save/Assign_8AssignConv_Layer_1/Conv_biases/Adam_1save/RestoreV2:8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@Conv_Layer_1/Conv_biases
?
save/Assign_9AssignConv_Layer_1/Conv_weightssave/RestoreV2:9*
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*
validate_shape(*&
_output_shapes
: 
?
save/Assign_10AssignConv_Layer_1/Conv_weights/Adamsave/RestoreV2:10*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights
?
save/Assign_11Assign Conv_Layer_1/Conv_weights/Adam_1save/RestoreV2:11*
use_locking(*
T0*,
_class"
 loc:@Conv_Layer_1/Conv_weights*
validate_shape(*&
_output_shapes
: 
?
save/Assign_12AssignLinear_Layer/Linear_biasessave/RestoreV2:12*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases*
validate_shape(*
_output_shapes	
:?
?
save/Assign_13AssignLinear_Layer/Linear_biases/Adamsave/RestoreV2:13*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases*
validate_shape(*
_output_shapes	
:?
?
save/Assign_14Assign!Linear_Layer/Linear_biases/Adam_1save/RestoreV2:14*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*-
_class#
!loc:@Linear_Layer/Linear_biases
?
save/Assign_15AssignLinear_Layer/Linear_weightssave/RestoreV2:15*
validate_shape(* 
_output_shapes
:
?$?*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
save/Assign_16Assign Linear_Layer/Linear_weights/Adamsave/RestoreV2:16*
validate_shape(* 
_output_shapes
:
?$?*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights
?
save/Assign_17Assign"Linear_Layer/Linear_weights/Adam_1save/RestoreV2:17*
use_locking(*
T0*.
_class$
" loc:@Linear_Layer/Linear_weights*
validate_shape(* 
_output_shapes
:
?$?
?
save/Assign_18AssignLinear_Layer_1/Linear_biasessave/RestoreV2:18*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
save/Assign_19Assign!Linear_Layer_1/Linear_biases/Adamsave/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
save/Assign_20Assign#Linear_Layer_1/Linear_biases/Adam_1save/RestoreV2:20*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@Linear_Layer_1/Linear_biases
?
save/Assign_21AssignLinear_Layer_1/Linear_weightssave/RestoreV2:21*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights
?
save/Assign_22Assign"Linear_Layer_1/Linear_weights/Adamsave/RestoreV2:22*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
validate_shape(*
_output_shapes
:	?
?
save/Assign_23Assign$Linear_Layer_1/Linear_weights/Adam_1save/RestoreV2:23*
use_locking(*
T0*0
_class&
$"loc:@Linear_Layer_1/Linear_weights*
validate_shape(*
_output_shapes
:	?
?
save/Assign_24Assignbeta1_powersave/RestoreV2:24*
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases*
validate_shape(*
_output_shapes
: 
?
save/Assign_25Assignbeta2_powersave/RestoreV2:25*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*)
_class
loc:@Conv_Layer/Conv_biases
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"C
	summaries6
4
Loss:0
Training_accuracy:0
Validation_accuracy:0"?
trainable_variables??
y
Conv_Layer/Conv_weights:0Conv_Layer/Conv_weights/AssignConv_Layer/Conv_weights/read:02Conv_Layer/random_normal:08
x
Conv_Layer/Conv_biases:0Conv_Layer/Conv_biases/AssignConv_Layer/Conv_biases/read:02Conv_Layer/random_normal_1:08
?
Conv_Layer_1/Conv_weights:0 Conv_Layer_1/Conv_weights/Assign Conv_Layer_1/Conv_weights/read:02Conv_Layer_1/random_normal:08
?
Conv_Layer_1/Conv_biases:0Conv_Layer_1/Conv_biases/AssignConv_Layer_1/Conv_biases/read:02Conv_Layer_1/random_normal_1:08
?
Linear_Layer/Linear_weights:0"Linear_Layer/Linear_weights/Assign"Linear_Layer/Linear_weights/read:02Linear_Layer/random_normal:08
?
Linear_Layer/Linear_biases:0!Linear_Layer/Linear_biases/Assign!Linear_Layer/Linear_biases/read:02Linear_Layer/random_normal_1:08
?
Linear_Layer_1/Linear_weights:0$Linear_Layer_1/Linear_weights/Assign$Linear_Layer_1/Linear_weights/read:02Linear_Layer_1/random_normal:08
?
Linear_Layer_1/Linear_biases:0#Linear_Layer_1/Linear_biases/Assign#Linear_Layer_1/Linear_biases/read:02 Linear_Layer_1/random_normal_1:08"
train_op

Adam"?
cond_context??
?
Dropout_cond/cond_textDropout_cond/pred_id:0Dropout_cond/switch_t:0 *?
Dropout_cond/dropout/Floor:0
#Dropout_cond/dropout/Shape/Switch:1
Dropout_cond/dropout/Shape:0
Dropout_cond/dropout/add:0
Dropout_cond/dropout/div:0
 Dropout_cond/dropout/keep_prob:0
Dropout_cond/dropout/mul:0
3Dropout_cond/dropout/random_uniform/RandomUniform:0
)Dropout_cond/dropout/random_uniform/max:0
)Dropout_cond/dropout/random_uniform/min:0
)Dropout_cond/dropout/random_uniform/mul:0
)Dropout_cond/dropout/random_uniform/sub:0
%Dropout_cond/dropout/random_uniform:0
Dropout_cond/pred_id:0
Dropout_cond/switch_t:0
Relu:0-
Relu:0#Dropout_cond/dropout/Shape/Switch:10
Dropout_cond/pred_id:0Dropout_cond/pred_id:0
?
Dropout_cond/cond_text_1Dropout_cond/pred_id:0Dropout_cond/switch_f:0*?
Dropout_cond/Switch_1:0
Dropout_cond/Switch_1:1
Dropout_cond/pred_id:0
Dropout_cond/switch_f:0
Relu:0!
Relu:0Dropout_cond/Switch_1:00
Dropout_cond/pred_id:0Dropout_cond/pred_id:0
?
Dropout_cond_1/cond_textDropout_cond_1/pred_id:0Dropout_cond_1/switch_t:0 *?
Dropout_cond_1/dropout/Floor:0
%Dropout_cond_1/dropout/Shape/Switch:1
Dropout_cond_1/dropout/Shape:0
Dropout_cond_1/dropout/add:0
Dropout_cond_1/dropout/div:0
"Dropout_cond_1/dropout/keep_prob:0
Dropout_cond_1/dropout/mul:0
5Dropout_cond_1/dropout/random_uniform/RandomUniform:0
+Dropout_cond_1/dropout/random_uniform/max:0
+Dropout_cond_1/dropout/random_uniform/min:0
+Dropout_cond_1/dropout/random_uniform/mul:0
+Dropout_cond_1/dropout/random_uniform/sub:0
'Dropout_cond_1/dropout/random_uniform:0
Dropout_cond_1/pred_id:0
Dropout_cond_1/switch_t:0
Relu_1:01
Relu_1:0%Dropout_cond_1/dropout/Shape/Switch:14
Dropout_cond_1/pred_id:0Dropout_cond_1/pred_id:0
?
Dropout_cond_1/cond_text_1Dropout_cond_1/pred_id:0Dropout_cond_1/switch_f:0*?
Dropout_cond_1/Switch_1:0
Dropout_cond_1/Switch_1:1
Dropout_cond_1/pred_id:0
Dropout_cond_1/switch_f:0
Relu_1:0%
Relu_1:0Dropout_cond_1/Switch_1:04
Dropout_cond_1/pred_id:0Dropout_cond_1/pred_id:0"?
	variables??
y
Conv_Layer/Conv_weights:0Conv_Layer/Conv_weights/AssignConv_Layer/Conv_weights/read:02Conv_Layer/random_normal:08
x
Conv_Layer/Conv_biases:0Conv_Layer/Conv_biases/AssignConv_Layer/Conv_biases/read:02Conv_Layer/random_normal_1:08
?
Conv_Layer_1/Conv_weights:0 Conv_Layer_1/Conv_weights/Assign Conv_Layer_1/Conv_weights/read:02Conv_Layer_1/random_normal:08
?
Conv_Layer_1/Conv_biases:0Conv_Layer_1/Conv_biases/AssignConv_Layer_1/Conv_biases/read:02Conv_Layer_1/random_normal_1:08
?
Linear_Layer/Linear_weights:0"Linear_Layer/Linear_weights/Assign"Linear_Layer/Linear_weights/read:02Linear_Layer/random_normal:08
?
Linear_Layer/Linear_biases:0!Linear_Layer/Linear_biases/Assign!Linear_Layer/Linear_biases/read:02Linear_Layer/random_normal_1:08
?
Linear_Layer_1/Linear_weights:0$Linear_Layer_1/Linear_weights/Assign$Linear_Layer_1/Linear_weights/read:02Linear_Layer_1/random_normal:08
?
Linear_Layer_1/Linear_biases:0#Linear_Layer_1/Linear_biases/Assign#Linear_Layer_1/Linear_biases/read:02 Linear_Layer_1/random_normal_1:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
?
Conv_Layer/Conv_weights/Adam:0#Conv_Layer/Conv_weights/Adam/Assign#Conv_Layer/Conv_weights/Adam/read:020Conv_Layer/Conv_weights/Adam/Initializer/zeros:0
?
 Conv_Layer/Conv_weights/Adam_1:0%Conv_Layer/Conv_weights/Adam_1/Assign%Conv_Layer/Conv_weights/Adam_1/read:022Conv_Layer/Conv_weights/Adam_1/Initializer/zeros:0
?
Conv_Layer/Conv_biases/Adam:0"Conv_Layer/Conv_biases/Adam/Assign"Conv_Layer/Conv_biases/Adam/read:02/Conv_Layer/Conv_biases/Adam/Initializer/zeros:0
?
Conv_Layer/Conv_biases/Adam_1:0$Conv_Layer/Conv_biases/Adam_1/Assign$Conv_Layer/Conv_biases/Adam_1/read:021Conv_Layer/Conv_biases/Adam_1/Initializer/zeros:0
?
 Conv_Layer_1/Conv_weights/Adam:0%Conv_Layer_1/Conv_weights/Adam/Assign%Conv_Layer_1/Conv_weights/Adam/read:022Conv_Layer_1/Conv_weights/Adam/Initializer/zeros:0
?
"Conv_Layer_1/Conv_weights/Adam_1:0'Conv_Layer_1/Conv_weights/Adam_1/Assign'Conv_Layer_1/Conv_weights/Adam_1/read:024Conv_Layer_1/Conv_weights/Adam_1/Initializer/zeros:0
?
Conv_Layer_1/Conv_biases/Adam:0$Conv_Layer_1/Conv_biases/Adam/Assign$Conv_Layer_1/Conv_biases/Adam/read:021Conv_Layer_1/Conv_biases/Adam/Initializer/zeros:0
?
!Conv_Layer_1/Conv_biases/Adam_1:0&Conv_Layer_1/Conv_biases/Adam_1/Assign&Conv_Layer_1/Conv_biases/Adam_1/read:023Conv_Layer_1/Conv_biases/Adam_1/Initializer/zeros:0
?
"Linear_Layer/Linear_weights/Adam:0'Linear_Layer/Linear_weights/Adam/Assign'Linear_Layer/Linear_weights/Adam/read:024Linear_Layer/Linear_weights/Adam/Initializer/zeros:0
?
$Linear_Layer/Linear_weights/Adam_1:0)Linear_Layer/Linear_weights/Adam_1/Assign)Linear_Layer/Linear_weights/Adam_1/read:026Linear_Layer/Linear_weights/Adam_1/Initializer/zeros:0
?
!Linear_Layer/Linear_biases/Adam:0&Linear_Layer/Linear_biases/Adam/Assign&Linear_Layer/Linear_biases/Adam/read:023Linear_Layer/Linear_biases/Adam/Initializer/zeros:0
?
#Linear_Layer/Linear_biases/Adam_1:0(Linear_Layer/Linear_biases/Adam_1/Assign(Linear_Layer/Linear_biases/Adam_1/read:025Linear_Layer/Linear_biases/Adam_1/Initializer/zeros:0
?
$Linear_Layer_1/Linear_weights/Adam:0)Linear_Layer_1/Linear_weights/Adam/Assign)Linear_Layer_1/Linear_weights/Adam/read:026Linear_Layer_1/Linear_weights/Adam/Initializer/zeros:0
?
&Linear_Layer_1/Linear_weights/Adam_1:0+Linear_Layer_1/Linear_weights/Adam_1/Assign+Linear_Layer_1/Linear_weights/Adam_1/read:028Linear_Layer_1/Linear_weights/Adam_1/Initializer/zeros:0
?
#Linear_Layer_1/Linear_biases/Adam:0(Linear_Layer_1/Linear_biases/Adam/Assign(Linear_Layer_1/Linear_biases/Adam/read:025Linear_Layer_1/Linear_biases/Adam/Initializer/zeros:0
?
%Linear_Layer_1/Linear_biases/Adam_1:0*Linear_Layer_1/Linear_biases/Adam_1/Assign*Linear_Layer_1/Linear_biases/Adam_1/read:027Linear_Layer_1/Linear_biases/Adam_1/Initializer/zeros:0*?
serving_default?
3
x.
Network_Input:0?????????``
"

Train_mode
Train_mode:0
2
pred*
Evaluation/Prediction:0	?????????tensorflow/serving/predict