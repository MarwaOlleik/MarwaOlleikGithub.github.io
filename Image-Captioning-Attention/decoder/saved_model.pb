¶&
Ę!!
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.1-0-g85c8b2a817f8üż#
Ø
%rnn__decoder_2/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
'*6
shared_name'%rnn__decoder_2/embedding_2/embeddings
”
9rnn__decoder_2/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp%rnn__decoder_2/embedding_2/embeddings* 
_output_shapes
:
'*
dtype0

rnn__decoder_2/dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name rnn__decoder_2/dense_12/kernel

2rnn__decoder_2/dense_12/kernel/Read/ReadVariableOpReadVariableOprnn__decoder_2/dense_12/kernel* 
_output_shapes
:
*
dtype0

rnn__decoder_2/dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namernn__decoder_2/dense_12/bias

0rnn__decoder_2/dense_12/bias/Read/ReadVariableOpReadVariableOprnn__decoder_2/dense_12/bias*
_output_shapes	
:*
dtype0

rnn__decoder_2/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
'*/
shared_name rnn__decoder_2/dense_13/kernel

2rnn__decoder_2/dense_13/kernel/Read/ReadVariableOpReadVariableOprnn__decoder_2/dense_13/kernel* 
_output_shapes
:
'*
dtype0

rnn__decoder_2/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*-
shared_namernn__decoder_2/dense_13/bias

0rnn__decoder_2/dense_13/bias/Read/ReadVariableOpReadVariableOprnn__decoder_2/dense_13/bias*
_output_shapes	
:'*
dtype0
Ŗ
&rnn__decoder_2/gru_2/gru_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&rnn__decoder_2/gru_2/gru_cell_2/kernel
£
:rnn__decoder_2/gru_2/gru_cell_2/kernel/Read/ReadVariableOpReadVariableOp&rnn__decoder_2/gru_2/gru_cell_2/kernel* 
_output_shapes
:
*
dtype0
¾
0rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*A
shared_name20rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel
·
Drnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp0rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel* 
_output_shapes
:
*
dtype0
„
$rnn__decoder_2/gru_2/gru_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*5
shared_name&$rnn__decoder_2/gru_2/gru_cell_2/bias

8rnn__decoder_2/gru_2/gru_cell_2/bias/Read/ReadVariableOpReadVariableOp$rnn__decoder_2/gru_2/gru_cell_2/bias*
_output_shapes
:	*
dtype0
Ä
3rnn__decoder_2/bahdanau_attention_2/dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53rnn__decoder_2/bahdanau_attention_2/dense_14/kernel
½
Grnn__decoder_2/bahdanau_attention_2/dense_14/kernel/Read/ReadVariableOpReadVariableOp3rnn__decoder_2/bahdanau_attention_2/dense_14/kernel* 
_output_shapes
:
*
dtype0
»
1rnn__decoder_2/bahdanau_attention_2/dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31rnn__decoder_2/bahdanau_attention_2/dense_14/bias
“
Ernn__decoder_2/bahdanau_attention_2/dense_14/bias/Read/ReadVariableOpReadVariableOp1rnn__decoder_2/bahdanau_attention_2/dense_14/bias*
_output_shapes	
:*
dtype0
Ä
3rnn__decoder_2/bahdanau_attention_2/dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*D
shared_name53rnn__decoder_2/bahdanau_attention_2/dense_15/kernel
½
Grnn__decoder_2/bahdanau_attention_2/dense_15/kernel/Read/ReadVariableOpReadVariableOp3rnn__decoder_2/bahdanau_attention_2/dense_15/kernel* 
_output_shapes
:
*
dtype0
»
1rnn__decoder_2/bahdanau_attention_2/dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31rnn__decoder_2/bahdanau_attention_2/dense_15/bias
“
Ernn__decoder_2/bahdanau_attention_2/dense_15/bias/Read/ReadVariableOpReadVariableOp1rnn__decoder_2/bahdanau_attention_2/dense_15/bias*
_output_shapes	
:*
dtype0
Ć
3rnn__decoder_2/bahdanau_attention_2/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53rnn__decoder_2/bahdanau_attention_2/dense_16/kernel
¼
Grnn__decoder_2/bahdanau_attention_2/dense_16/kernel/Read/ReadVariableOpReadVariableOp3rnn__decoder_2/bahdanau_attention_2/dense_16/kernel*
_output_shapes
:	*
dtype0
ŗ
1rnn__decoder_2/bahdanau_attention_2/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31rnn__decoder_2/bahdanau_attention_2/dense_16/bias
³
Ernn__decoder_2/bahdanau_attention_2/dense_16/bias/Read/ReadVariableOpReadVariableOp1rnn__decoder_2/bahdanau_attention_2/dense_16/bias*
_output_shapes
:*
dtype0

NoOpNoOp
Ķ(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*(
valuež'Bū' Bō'

	embedding
gru
fc1
fc2
	attention
regularization_losses
	variables
trainable_variables
		keras_api


signatures
b

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
i
"W1
#W2
$V
%regularization_losses
&	variables
'trainable_variables
(	keras_api
 
f
0
)1
*2
+3
4
5
6
7
,8
-9
.10
/11
012
113
f
0
)1
*2
+3
4
5
6
7
,8
-9
.10
/11
012
113
­
regularization_losses

2layers
3layer_regularization_losses
	variables
4metrics
5layer_metrics
6non_trainable_variables
trainable_variables
 
jh
VARIABLE_VALUE%rnn__decoder_2/embedding_2/embeddings/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
regularization_losses

7layers
8layer_regularization_losses
	variables
9layer_metrics
:metrics
;non_trainable_variables
trainable_variables
~

)kernel
*recurrent_kernel
+bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
 
 

)0
*1
+2

)0
*1
+2
¹
regularization_losses

@states

Alayers
Blayer_regularization_losses
	variables
Cmetrics
Dlayer_metrics
Enon_trainable_variables
trainable_variables
YW
VARIABLE_VALUErnn__decoder_2/dense_12/kernel%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUErnn__decoder_2/dense_12/bias#fc1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses

Flayers
Glayer_regularization_losses
	variables
Hlayer_metrics
Imetrics
Jnon_trainable_variables
trainable_variables
YW
VARIABLE_VALUErnn__decoder_2/dense_13/kernel%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUErnn__decoder_2/dense_13/bias#fc2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses

Klayers
Llayer_regularization_losses
	variables
Mlayer_metrics
Nmetrics
Onon_trainable_variables
 trainable_variables
h

,kernel
-bias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
h

.kernel
/bias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
h

0kernel
1bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
 
*
,0
-1
.2
/3
04
15
*
,0
-1
.2
/3
04
15
­
%regularization_losses

\layers
]layer_regularization_losses
&	variables
^metrics
_layer_metrics
`non_trainable_variables
'trainable_variables
b`
VARIABLE_VALUE&rnn__decoder_2/gru_2/gru_cell_2/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE0rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE$rnn__decoder_2/gru_2/gru_cell_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3rnn__decoder_2/bahdanau_attention_2/dense_14/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1rnn__decoder_2/bahdanau_attention_2/dense_14/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3rnn__decoder_2/bahdanau_attention_2/dense_15/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1rnn__decoder_2/bahdanau_attention_2/dense_15/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3rnn__decoder_2/bahdanau_attention_2/dense_16/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1rnn__decoder_2/bahdanau_attention_2/dense_16/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 

)0
*1
+2

)0
*1
+2
­
<regularization_losses

alayers
blayer_regularization_losses
=	variables
clayer_metrics
dmetrics
enon_trainable_variables
>trainable_variables
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

,0
-1

,0
-1
­
Pregularization_losses

flayers
glayer_regularization_losses
Q	variables
hlayer_metrics
imetrics
jnon_trainable_variables
Rtrainable_variables
 

.0
/1

.0
/1
­
Tregularization_losses

klayers
llayer_regularization_losses
U	variables
mlayer_metrics
nmetrics
onon_trainable_variables
Vtrainable_variables
 

00
11

00
11
­
Xregularization_losses

players
qlayer_regularization_losses
Y	variables
rlayer_metrics
smetrics
tnon_trainable_variables
Ztrainable_variables

"0
#1
$2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

serving_default_input_2Placeholder*,
_output_shapes
:’’’’’’’’’@*
dtype0*!
shape:’’’’’’’’’@
|
serving_default_input_3Placeholder*(
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2serving_default_input_33rnn__decoder_2/bahdanau_attention_2/dense_14/kernel1rnn__decoder_2/bahdanau_attention_2/dense_14/bias3rnn__decoder_2/bahdanau_attention_2/dense_15/kernel1rnn__decoder_2/bahdanau_attention_2/dense_15/bias3rnn__decoder_2/bahdanau_attention_2/dense_16/kernel1rnn__decoder_2/bahdanau_attention_2/dense_16/bias%rnn__decoder_2/embedding_2/embeddings$rnn__decoder_2/gru_2/gru_cell_2/bias&rnn__decoder_2/gru_2/gru_cell_2/kernel0rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernelrnn__decoder_2/dense_12/kernelrnn__decoder_2/dense_12/biasrnn__decoder_2/dense_13/kernelrnn__decoder_2/dense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_822767
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9rnn__decoder_2/embedding_2/embeddings/Read/ReadVariableOp2rnn__decoder_2/dense_12/kernel/Read/ReadVariableOp0rnn__decoder_2/dense_12/bias/Read/ReadVariableOp2rnn__decoder_2/dense_13/kernel/Read/ReadVariableOp0rnn__decoder_2/dense_13/bias/Read/ReadVariableOp:rnn__decoder_2/gru_2/gru_cell_2/kernel/Read/ReadVariableOpDrnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOp8rnn__decoder_2/gru_2/gru_cell_2/bias/Read/ReadVariableOpGrnn__decoder_2/bahdanau_attention_2/dense_14/kernel/Read/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_14/bias/Read/ReadVariableOpGrnn__decoder_2/bahdanau_attention_2/dense_15/kernel/Read/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_15/bias/Read/ReadVariableOpGrnn__decoder_2/bahdanau_attention_2/dense_16/kernel/Read/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_16/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_825271

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%rnn__decoder_2/embedding_2/embeddingsrnn__decoder_2/dense_12/kernelrnn__decoder_2/dense_12/biasrnn__decoder_2/dense_13/kernelrnn__decoder_2/dense_13/bias&rnn__decoder_2/gru_2/gru_cell_2/kernel0rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel$rnn__decoder_2/gru_2/gru_cell_2/bias3rnn__decoder_2/bahdanau_attention_2/dense_14/kernel1rnn__decoder_2/bahdanau_attention_2/dense_14/bias3rnn__decoder_2/bahdanau_attention_2/dense_15/kernel1rnn__decoder_2/bahdanau_attention_2/dense_15/bias3rnn__decoder_2/bahdanau_attention_2/dense_16/kernel1rnn__decoder_2/bahdanau_attention_2/dense_16/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_825323#
	

gru_2_while_cond_822962(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_822962___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_822962___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_822962___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_822962___redundant_placeholder3
gru_2_while_identity

gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ć
~
)__inference_dense_13_layer_call_fn_824977

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallų
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_8225302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ņ
Ŗ
while_cond_822345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_822345___redundant_placeholder04
0while_while_cond_822345___redundant_placeholder14
0while_while_cond_822345___redundant_placeholder24
0while_while_cond_822345___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
G
„
while_body_824456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Š\
ä
A__inference_gru_2_layer_call_and_return_conditional_losses_822277

inputs&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_822186*
condR
while_cond_822185*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŌ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*,
_output_shapes
:’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ŪP
Ł
gru_2_while_body_823685(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_04
0gru_2_while_gru_cell_2_readvariableop_resource_0;
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0=
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor2
.gru_2_while_gru_cell_2_readvariableop_resource9
5gru_2_while_gru_cell_2_matmul_readvariableop_resource;
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOpĻ
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeų
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemĄ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp±
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2 
gru_2/while/gru_cell_2/unstackÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpé
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/MatMulŠ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/BiasAdd~
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/gru_cell_2/Const
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2(
&gru_2/while/gru_cell_2/split/split_dim
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/while/gru_cell_2/splitÜ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpŅ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2!
gru_2/while/gru_cell_2/MatMul_1Ö
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/BiasAdd_1
gru_2/while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2 
gru_2/while/gru_cell_2/Const_1
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2*
(gru_2/while/gru_cell_2/split_1/split_dimÉ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0'gru_2/while/gru_cell_2/Const_1:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2 
gru_2/while/gru_cell_2/split_1Ä
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/SigmoidČ
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_1¤
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/Sigmoid_1Į
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mulæ
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/Tanhµ
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x½
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/sub·
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_2¼
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_3ü
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1ų
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1ś
gru_2/while/Identity_2Identitygru_2/while/add:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2§
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/Identity_4"H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Ą
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ŪP
Ł
gru_2_while_body_824007(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_04
0gru_2_while_gru_cell_2_readvariableop_resource_0;
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0=
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor2
.gru_2_while_gru_cell_2_readvariableop_resource9
5gru_2_while_gru_cell_2_matmul_readvariableop_resource;
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOpĻ
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeų
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemĄ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp±
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2 
gru_2/while/gru_cell_2/unstackÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpé
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/MatMulŠ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/BiasAdd~
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/gru_cell_2/Const
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2(
&gru_2/while/gru_cell_2/split/split_dim
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/while/gru_cell_2/splitÜ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpŅ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2!
gru_2/while/gru_cell_2/MatMul_1Ö
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/BiasAdd_1
gru_2/while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2 
gru_2/while/gru_cell_2/Const_1
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2*
(gru_2/while/gru_cell_2/split_1/split_dimÉ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0'gru_2/while/gru_cell_2/Const_1:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2 
gru_2/while/gru_cell_2/split_1Ä
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/SigmoidČ
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_1¤
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/Sigmoid_1Į
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mulæ
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/Tanhµ
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x½
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/sub·
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_2¼
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_3ü
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1ų
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1ś
gru_2/while/Identity_2Identitygru_2/while/add:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2§
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/Identity_4"H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Ą
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ü
ć
D__inference_dense_15_layer_call_and_return_conditional_losses_821952

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü÷
×
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823089
inputs_0
inputs_1
inputs_2C
?bahdanau_attention_2_dense_14_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_14_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_15_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_15_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_16_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource8
4embedding_2_embedding_lookup_readvariableop_resource,
(gru_2_gru_cell_2_readvariableop_resource3
/gru_2_gru_cell_2_matmul_readvariableop_resource5
1gru_2_gru_cell_2_matmul_1_readvariableop_resource.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity

identity_1

identity_2¢4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢+embedding_2/embedding_lookup/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢gru_2/while
#bahdanau_attention_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#bahdanau_attention_2/ExpandDims/dimæ
bahdanau_attention_2/ExpandDims
ExpandDimsinputs_2,bahdanau_attention_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2!
bahdanau_attention_2/ExpandDimsņ
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_14/Tensordot/axes­
,bahdanau_attention_2/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_14/Tensordot/free
-bahdanau_attention_2/dense_14/Tensordot/ShapeShapeinputs_1*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/Shape°
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_14/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/free:output:0>bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/GatherV2“
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0@bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_14/Tensordot/Constų
,bahdanau_attention_2/dense_14/Tensordot/ProdProd9bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_14/Tensordot/Prod¬
/bahdanau_attention_2/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_14/Tensordot/Const_1
.bahdanau_attention_2/dense_14/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_14/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_14/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_14/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_14/Tensordot/concatConcatV25bahdanau_attention_2/dense_14/Tensordot/free:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0<bahdanau_attention_2/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_14/Tensordot/concat
-bahdanau_attention_2/dense_14/Tensordot/stackPack5bahdanau_attention_2/dense_14/Tensordot/Prod:output:07bahdanau_attention_2/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/stackķ
1bahdanau_attention_2/dense_14/Tensordot/transpose	Transposeinputs_17bahdanau_attention_2/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_14/Tensordot/transpose
/bahdanau_attention_2/dense_14/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_14/Tensordot/transpose:y:06bahdanau_attention_2/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_14/Tensordot/Reshape
.bahdanau_attention_2/dense_14/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_14/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_14/Tensordot/MatMul­
/bahdanau_attention_2/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_14/Tensordot/Const_2°
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_14/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_14/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/concat_1
'bahdanau_attention_2/dense_14/TensordotReshape8bahdanau_attention_2/dense_14/Tensordot/MatMul:product:09bahdanau_attention_2/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_14/Tensordotē
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_14/BiasAddBiasAdd0bahdanau_attention_2/dense_14/Tensordot:output:0<bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_14/BiasAddņ
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_15/Tensordot/axes­
,bahdanau_attention_2/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_15/Tensordot/free¶
-bahdanau_attention_2/dense_15/Tensordot/ShapeShape(bahdanau_attention_2/ExpandDims:output:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/Shape°
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_15/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/free:output:0>bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/GatherV2“
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0@bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_15/Tensordot/Constų
,bahdanau_attention_2/dense_15/Tensordot/ProdProd9bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_15/Tensordot/Prod¬
/bahdanau_attention_2/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_15/Tensordot/Const_1
.bahdanau_attention_2/dense_15/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_15/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_15/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_15/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_15/Tensordot/concatConcatV25bahdanau_attention_2/dense_15/Tensordot/free:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0<bahdanau_attention_2/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_15/Tensordot/concat
-bahdanau_attention_2/dense_15/Tensordot/stackPack5bahdanau_attention_2/dense_15/Tensordot/Prod:output:07bahdanau_attention_2/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/stack
1bahdanau_attention_2/dense_15/Tensordot/transpose	Transpose(bahdanau_attention_2/ExpandDims:output:07bahdanau_attention_2/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’23
1bahdanau_attention_2/dense_15/Tensordot/transpose
/bahdanau_attention_2/dense_15/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_15/Tensordot/transpose:y:06bahdanau_attention_2/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_15/Tensordot/Reshape
.bahdanau_attention_2/dense_15/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_15/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_15/Tensordot/MatMul­
/bahdanau_attention_2/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_15/Tensordot/Const_2°
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_15/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_15/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/concat_1
'bahdanau_attention_2/dense_15/TensordotReshape8bahdanau_attention_2/dense_15/Tensordot/MatMul:product:09bahdanau_attention_2/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2)
'bahdanau_attention_2/dense_15/Tensordotē
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_15/BiasAddBiasAdd0bahdanau_attention_2/dense_15/Tensordot:output:0<bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%bahdanau_attention_2/dense_15/BiasAddŌ
bahdanau_attention_2/addAddV2.bahdanau_attention_2/dense_14/BiasAdd:output:0.bahdanau_attention_2/dense_15/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/add
bahdanau_attention_2/TanhTanhbahdanau_attention_2/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Tanhń
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_16_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype028
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_16/Tensordot/axes­
,bahdanau_attention_2/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_16/Tensordot/free«
-bahdanau_attention_2/dense_16/Tensordot/ShapeShapebahdanau_attention_2/Tanh:y:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/Shape°
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_16/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/free:output:0>bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/GatherV2“
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0@bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_16/Tensordot/Constų
,bahdanau_attention_2/dense_16/Tensordot/ProdProd9bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_16/Tensordot/Prod¬
/bahdanau_attention_2/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_16/Tensordot/Const_1
.bahdanau_attention_2/dense_16/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_16/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_16/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_16/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_16/Tensordot/concatConcatV25bahdanau_attention_2/dense_16/Tensordot/free:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0<bahdanau_attention_2/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_16/Tensordot/concat
-bahdanau_attention_2/dense_16/Tensordot/stackPack5bahdanau_attention_2/dense_16/Tensordot/Prod:output:07bahdanau_attention_2/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/stack
1bahdanau_attention_2/dense_16/Tensordot/transpose	Transposebahdanau_attention_2/Tanh:y:07bahdanau_attention_2/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_16/Tensordot/transpose
/bahdanau_attention_2/dense_16/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_16/Tensordot/transpose:y:06bahdanau_attention_2/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_16/Tensordot/Reshape
.bahdanau_attention_2/dense_16/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_16/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_16/Tensordot/MatMul¬
/bahdanau_attention_2/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_16/Tensordot/Const_2°
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_16/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_16/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/concat_1
'bahdanau_attention_2/dense_16/TensordotReshape8bahdanau_attention_2/dense_16/Tensordot/MatMul:product:09bahdanau_attention_2/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_16/Tensordotę
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp’
%bahdanau_attention_2/dense_16/BiasAddBiasAdd0bahdanau_attention_2/dense_16/Tensordot:output:0<bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_16/BiasAddx
bahdanau_attention_2/RankConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank|
bahdanau_attention_2/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank_1z
bahdanau_attention_2/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub/y§
bahdanau_attention_2/SubSub$bahdanau_attention_2/Rank_1:output:0#bahdanau_attention_2/Sub/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub
 bahdanau_attention_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/range/start
 bahdanau_attention_2/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/limit
 bahdanau_attention_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/deltaŽ
bahdanau_attention_2/rangeRange)bahdanau_attention_2/range/start:output:0)bahdanau_attention_2/range/limit:output:0)bahdanau_attention_2/range/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range
"bahdanau_attention_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/start
"bahdanau_attention_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/delta×
bahdanau_attention_2/range_1Range+bahdanau_attention_2/range_1/start:output:0bahdanau_attention_2/Sub:z:0+bahdanau_attention_2/range_1/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_1 
$bahdanau_attention_2/concat/values_1Packbahdanau_attention_2/Sub:z:0*
N*
T0*
_output_shapes
:2&
$bahdanau_attention_2/concat/values_1
$bahdanau_attention_2/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$bahdanau_attention_2/concat/values_3
 bahdanau_attention_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/concat/axisÉ
bahdanau_attention_2/concatConcatV2#bahdanau_attention_2/range:output:0-bahdanau_attention_2/concat/values_1:output:0%bahdanau_attention_2/range_1:output:0-bahdanau_attention_2/concat/values_3:output:0)bahdanau_attention_2/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concatŁ
bahdanau_attention_2/transpose	Transpose.bahdanau_attention_2/dense_16/BiasAdd:output:0$bahdanau_attention_2/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2 
bahdanau_attention_2/transpose”
bahdanau_attention_2/SoftmaxSoftmax"bahdanau_attention_2/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Softmax~
bahdanau_attention_2/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub_1/y­
bahdanau_attention_2/Sub_1Sub$bahdanau_attention_2/Rank_1:output:0%bahdanau_attention_2/Sub_1/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub_1
"bahdanau_attention_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/range_2/start
"bahdanau_attention_2/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/limit
"bahdanau_attention_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/deltač
bahdanau_attention_2/range_2Range+bahdanau_attention_2/range_2/start:output:0+bahdanau_attention_2/range_2/limit:output:0+bahdanau_attention_2/range_2/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range_2
"bahdanau_attention_2/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/start
"bahdanau_attention_2/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/deltaŁ
bahdanau_attention_2/range_3Range+bahdanau_attention_2/range_3/start:output:0bahdanau_attention_2/Sub_1:z:0+bahdanau_attention_2/range_3/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_3¦
&bahdanau_attention_2/concat_1/values_1Packbahdanau_attention_2/Sub_1:z:0*
N*
T0*
_output_shapes
:2(
&bahdanau_attention_2/concat_1/values_1
&bahdanau_attention_2/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2(
&bahdanau_attention_2/concat_1/values_3
"bahdanau_attention_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/concat_1/axisÕ
bahdanau_attention_2/concat_1ConcatV2%bahdanau_attention_2/range_2:output:0/bahdanau_attention_2/concat_1/values_1:output:0%bahdanau_attention_2/range_3:output:0/bahdanau_attention_2/concat_1/values_3:output:0+bahdanau_attention_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concat_1×
 bahdanau_attention_2/transpose_1	Transpose&bahdanau_attention_2/Softmax:softmax:0&bahdanau_attention_2/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2"
 bahdanau_attention_2/transpose_1¢
bahdanau_attention_2/mulMul$bahdanau_attention_2/transpose_1:y:0inputs_1*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/mul
*bahdanau_attention_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*bahdanau_attention_2/Sum/reduction_indicesĮ
bahdanau_attention_2/SumSumbahdanau_attention_2/mul:z:03bahdanau_attention_2/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
bahdanau_attention_2/SumŃ
+embedding_2/embedding_lookup/ReadVariableOpReadVariableOp4embedding_2_embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02-
+embedding_2/embedding_lookup/ReadVariableOpČ
!embedding_2/embedding_lookup/axisConst*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_2/embedding_lookup/axisĶ
embedding_2/embedding_lookupGatherV23embedding_2/embedding_lookup/ReadVariableOp:value:0inputs_0*embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_2/embedding_lookupø
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%embedding_2/embedding_lookup/Identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDims!bahdanau_attention_2/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
concat/axis·
concatConcatV2ExpandDims:output:0.embedding_2/embedding_lookup/Identity:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
concatY
gru_2/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slicei
gru_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/mul/y
gru_2/zeros/mulMulgru_2/strided_slice:output:0gru_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/mulk
gru_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
gru_2/zeros/Less/y
gru_2/zeros/LessLessgru_2/zeros/mul:z:0gru_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/Lesso
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/packed/1
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_2/zeros/packedk
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/zeros/Const
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/zeros
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm
gru_2/transpose	Transposeconcat:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transposea
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape_1
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice_1
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!gru_2/TensorArrayV2/element_shapeŹ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ė
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2”
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_2¬
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_2/gru_cell_2/unstackĀ
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOpæ
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMulø
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAddr
gru_2/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/gru_cell_2/Const
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 gru_2/gru_cell_2/split/split_dimó
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/splitČ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp»
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMul_1¾
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAdd_1
gru_2/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_2/gru_cell_2/Const_1
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"gru_2/gru_cell_2/split_1/split_dim«
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0!gru_2/gru_cell_2/Const_1:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/split_1¬
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid°
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid_1©
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul§
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_2
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Tanh
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x„
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_2¤
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2%
#gru_2/TensorArrayV2_1/element_shapeŠ
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterż
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_2_while_body_822963*#
condR
gru_2_while_cond_822962*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
gru_2/whileĮ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
gru_2/strided_slice_3/stack
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_3/stack_1
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_3/stack_2æ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_3
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime³
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axes
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/freey
dense_12/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shape
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axisž
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axis
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const¤
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1¬
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisŻ
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat°
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack»
dense_12/Tensordot/transpose	Transposegru_2/transpose_1:y:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/transposeĆ
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
dense_12/Tensordot/ReshapeĆ
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/MatMul
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/Const_2
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisź
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1µ
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/TensordotØ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¬
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Reshape/shape
ReshapeReshapedense_12/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
ReshapeŖ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02 
dense_13/MatMul/ReadVariableOp
dense_13/MatMulMatMulReshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/MatMulØ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02!
dense_13/BiasAdd/ReadVariableOp¦
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/BiasAddł
IdentityIdentitydense_13/BiasAdd:output:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityų

Identity_1Identitygru_2/while:output:45^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity$bahdanau_attention_2/transpose_1:y:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2l
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+embedding_2/embedding_lookup/ReadVariableOp+embedding_2/embedding_lookup/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:Q M
'
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:’’’’’’’’’@
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/2
Ė4
ō
P__inference_bahdanau_attention_2_layer_call_and_return_conditional_losses_822052
input_1
input_2
dense_14_821917
dense_14_821919
dense_15_821963
dense_15_821965
dense_16_822011
dense_16_822013
identity

identity_1¢ dense_14/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCallb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinput_2ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDims
 dense_14/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_14_821917dense_14_821919*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_8219062"
 dense_14/StatefulPartitionedCall©
 dense_15/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0dense_15_821963dense_15_821965*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_8219522"
 dense_15/StatefulPartitionedCall 
addAddV2)dense_14/StatefulPartitionedCall:output:0)dense_15/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
addT
TanhTanhadd:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2
Tanh
 dense_16/StatefulPartitionedCallStatefulPartitionedCallTanh:y:0dense_16_822011dense_16_822013*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_8220002"
 dense_16/StatefulPartitionedCallN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1P
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
Sub/yS
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: 2
Sub\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/limitConst*
_output_shapes
: *
dtype0*
value	B :2
range/limit\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltau
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:2
range`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltan
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: 2	
range_1a
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:2
concat/values_1l
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_3\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis¶
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat
	transpose	Transpose)dense_16/StatefulPartitionedCall:output:0concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2
	transposeb
SoftmaxSoftmaxtranspose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2	
SoftmaxT
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Sub_1/yY
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: 2
Sub_1`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/limit`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/delta
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:2	
range_2`
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2
range_3/start`
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_3/deltap
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: 2	
range_3g
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:2
concat_1/values_1p
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2
concat_1/values_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisĀ
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2
transpose_1b
mulMultranspose_1:y:0input_1*
T0*,
_output_shapes
:’’’’’’’’’@2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesm
SumSummul:z:0Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
SumŹ
IdentityIdentitySum:output:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

IdentityŌ

Identity_1Identitytranspose_1:y:0!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*W
_input_shapesF
D:’’’’’’’’’@:’’’’’’’’’::::::2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall:U Q
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_1:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2
Ņ
Ŗ
while_cond_822185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_822185___redundant_placeholder04
0while_while_cond_822185___redundant_placeholder14
0while_while_cond_822185___redundant_placeholder24
0while_while_cond_822185___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾
ö
/__inference_rnn__decoder_2_layer_call_fn_824211
input_1
input_2
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity

identity_1

identity_2¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_8226522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3
ń
~
)__inference_dense_16_layer_call_fn_825202

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallū
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_8220002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
¾
ö
/__inference_rnn__decoder_2_layer_call_fn_824172
input_1
input_2
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity

identity_1

identity_2¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_8226522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3

ė
$__inference_signature_wrapper_822767
input_1
input_2
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity

identity_1

identity_2¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_8212992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3
¹

¶
G__inference_embedding_2_layer_call_and_return_conditional_losses_822102

inputs,
(embedding_lookup_readvariableop_resource
identity¢embedding_lookup/ReadVariableOp­
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02!
embedding_lookup/ReadVariableOp¤
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_lookup
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
embedding_lookup/Identity
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0**
_input_shapes
:’’’’’’’’’:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
µ>
ā
A__inference_gru_2_layer_call_and_return_conditional_losses_821737

inputs
gru_cell_2_821660
gru_cell_2_821662
gru_cell_2_821664
identity

identity_1¢"gru_cell_2/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2ļ
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_821660gru_cell_2_821662gru_cell_2_821664*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8213712$
"gru_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterę
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_821660gru_cell_2_821662gru_cell_2_821664*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_821672*
condR
while_cond_821671*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeņ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permÆ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0#^gru_cell_2/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

Identity

Identity_1Identitywhile:output:4#^gru_cell_2/StatefulPartitionedCall^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ą
­
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825017

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split/split_dimÆ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split_1/split_dimÖ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tanh_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_3”
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity„

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
]
ę
A__inference_gru_2_layer_call_and_return_conditional_losses_824547
inputs_0&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_824456*
condR
while_cond_824455*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeņ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permÆ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŻ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ŪP
Ł
gru_2_while_body_823285(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_04
0gru_2_while_gru_cell_2_readvariableop_resource_0;
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0=
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor2
.gru_2_while_gru_cell_2_readvariableop_resource9
5gru_2_while_gru_cell_2_matmul_readvariableop_resource;
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOpĻ
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeų
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemĄ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp±
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2 
gru_2/while/gru_cell_2/unstackÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpé
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/MatMulŠ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/BiasAdd~
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/gru_cell_2/Const
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2(
&gru_2/while/gru_cell_2/split/split_dim
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/while/gru_cell_2/splitÜ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpŅ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2!
gru_2/while/gru_cell_2/MatMul_1Ö
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/BiasAdd_1
gru_2/while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2 
gru_2/while/gru_cell_2/Const_1
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2*
(gru_2/while/gru_cell_2/split_1/split_dimÉ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0'gru_2/while/gru_cell_2/Const_1:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2 
gru_2/while/gru_cell_2/split_1Ä
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/SigmoidČ
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_1¤
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/Sigmoid_1Į
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mulæ
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/Tanhµ
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x½
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/sub·
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_2¼
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_3ü
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1ų
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1ś
gru_2/while/Identity_2Identitygru_2/while/add:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2§
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/Identity_4"H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Ą
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ü
ć
D__inference_dense_12_layer_call_and_return_conditional_losses_822502

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
G
„
while_body_824642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
G
„
while_body_824296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
]
ę
A__inference_gru_2_layer_call_and_return_conditional_losses_824387
inputs_0&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_824296*
condR
while_cond_824295*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeņ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permÆ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŻ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ģ

&__inference_gru_2_layer_call_fn_824919

inputs
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_8224372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ó
~
)__inference_dense_12_layer_call_fn_824958

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_8225022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ū!
Ō
while_body_821793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_2_821815_0
while_gru_cell_2_821817_0
while_gru_cell_2_821819_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_2_821815
while_gru_cell_2_821817
while_gru_cell_2_821819¢(while/gru_cell_2/StatefulPartitionedCallĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_821815_0while_gru_cell_2_821817_0while_gru_cell_2_821819_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8214112*
(while/gru_cell_2/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2ø
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Į
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1)^while/gru_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"4
while_gru_cell_2_821815while_gru_cell_2_821815_0"4
while_gru_cell_2_821817while_gru_cell_2_821817_0"4
while_gru_cell_2_821819while_gru_cell_2_821819_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ņ
Ŗ
while_cond_824295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_824295___redundant_placeholder04
0while_while_cond_824295___redundant_placeholder14
0while_while_cond_824295___redundant_placeholder24
0while_while_cond_824295___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ŪP
Ł
gru_2_while_body_822963(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2'
#gru_2_while_gru_2_strided_slice_1_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_04
0gru_2_while_gru_cell_2_readvariableop_resource_0;
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0=
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4%
!gru_2_while_gru_2_strided_slice_1a
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor2
.gru_2_while_gru_cell_2_readvariableop_resource9
5gru_2_while_gru_cell_2_matmul_readvariableop_resource;
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOpĻ
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeų
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemĄ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp±
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2 
gru_2/while/gru_cell_2/unstackÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpé
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/MatMulŠ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/BiasAdd~
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/gru_cell_2/Const
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2(
&gru_2/while/gru_cell_2/split/split_dim
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/while/gru_cell_2/splitÜ
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype020
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpŅ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2!
gru_2/while/gru_cell_2/MatMul_1Ö
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/BiasAdd_1
gru_2/while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2 
gru_2/while/gru_cell_2/Const_1
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2*
(gru_2/while/gru_cell_2/split_1/split_dimÉ
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0'gru_2/while/gru_cell_2/Const_1:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2 
gru_2/while/gru_cell_2/split_1Ä
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2 
gru_2/while/gru_cell_2/SigmoidČ
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_1¤
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2"
 gru_2/while/gru_cell_2/Sigmoid_1Į
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mulæ
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/Tanhµ
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x½
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/sub·
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/mul_2¼
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/gru_cell_2/add_3ü
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1ų
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1ś
gru_2/while/Identity_2Identitygru_2/while/add:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2§
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/while/Identity_4"H
!gru_2_while_gru_2_strided_slice_1#gru_2_while_gru_2_strided_slice_1_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"Ą
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ó
~
)__inference_dense_15_layer_call_fn_825163

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_8219522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ń÷
Ō
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823811
input_1
input_2
input_3C
?bahdanau_attention_2_dense_14_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_14_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_15_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_15_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_16_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource8
4embedding_2_embedding_lookup_readvariableop_resource,
(gru_2_gru_cell_2_readvariableop_resource3
/gru_2_gru_cell_2_matmul_readvariableop_resource5
1gru_2_gru_cell_2_matmul_1_readvariableop_resource.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity

identity_1

identity_2¢4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢+embedding_2/embedding_lookup/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢gru_2/while
#bahdanau_attention_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#bahdanau_attention_2/ExpandDims/dim¾
bahdanau_attention_2/ExpandDims
ExpandDimsinput_3,bahdanau_attention_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2!
bahdanau_attention_2/ExpandDimsņ
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_14/Tensordot/axes­
,bahdanau_attention_2/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_14/Tensordot/free
-bahdanau_attention_2/dense_14/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/Shape°
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_14/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/free:output:0>bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/GatherV2“
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0@bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_14/Tensordot/Constų
,bahdanau_attention_2/dense_14/Tensordot/ProdProd9bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_14/Tensordot/Prod¬
/bahdanau_attention_2/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_14/Tensordot/Const_1
.bahdanau_attention_2/dense_14/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_14/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_14/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_14/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_14/Tensordot/concatConcatV25bahdanau_attention_2/dense_14/Tensordot/free:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0<bahdanau_attention_2/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_14/Tensordot/concat
-bahdanau_attention_2/dense_14/Tensordot/stackPack5bahdanau_attention_2/dense_14/Tensordot/Prod:output:07bahdanau_attention_2/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/stackģ
1bahdanau_attention_2/dense_14/Tensordot/transpose	Transposeinput_27bahdanau_attention_2/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_14/Tensordot/transpose
/bahdanau_attention_2/dense_14/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_14/Tensordot/transpose:y:06bahdanau_attention_2/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_14/Tensordot/Reshape
.bahdanau_attention_2/dense_14/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_14/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_14/Tensordot/MatMul­
/bahdanau_attention_2/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_14/Tensordot/Const_2°
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_14/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_14/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/concat_1
'bahdanau_attention_2/dense_14/TensordotReshape8bahdanau_attention_2/dense_14/Tensordot/MatMul:product:09bahdanau_attention_2/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_14/Tensordotē
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_14/BiasAddBiasAdd0bahdanau_attention_2/dense_14/Tensordot:output:0<bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_14/BiasAddņ
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_15/Tensordot/axes­
,bahdanau_attention_2/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_15/Tensordot/free¶
-bahdanau_attention_2/dense_15/Tensordot/ShapeShape(bahdanau_attention_2/ExpandDims:output:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/Shape°
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_15/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/free:output:0>bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/GatherV2“
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0@bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_15/Tensordot/Constų
,bahdanau_attention_2/dense_15/Tensordot/ProdProd9bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_15/Tensordot/Prod¬
/bahdanau_attention_2/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_15/Tensordot/Const_1
.bahdanau_attention_2/dense_15/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_15/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_15/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_15/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_15/Tensordot/concatConcatV25bahdanau_attention_2/dense_15/Tensordot/free:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0<bahdanau_attention_2/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_15/Tensordot/concat
-bahdanau_attention_2/dense_15/Tensordot/stackPack5bahdanau_attention_2/dense_15/Tensordot/Prod:output:07bahdanau_attention_2/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/stack
1bahdanau_attention_2/dense_15/Tensordot/transpose	Transpose(bahdanau_attention_2/ExpandDims:output:07bahdanau_attention_2/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’23
1bahdanau_attention_2/dense_15/Tensordot/transpose
/bahdanau_attention_2/dense_15/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_15/Tensordot/transpose:y:06bahdanau_attention_2/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_15/Tensordot/Reshape
.bahdanau_attention_2/dense_15/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_15/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_15/Tensordot/MatMul­
/bahdanau_attention_2/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_15/Tensordot/Const_2°
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_15/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_15/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/concat_1
'bahdanau_attention_2/dense_15/TensordotReshape8bahdanau_attention_2/dense_15/Tensordot/MatMul:product:09bahdanau_attention_2/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2)
'bahdanau_attention_2/dense_15/Tensordotē
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_15/BiasAddBiasAdd0bahdanau_attention_2/dense_15/Tensordot:output:0<bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%bahdanau_attention_2/dense_15/BiasAddŌ
bahdanau_attention_2/addAddV2.bahdanau_attention_2/dense_14/BiasAdd:output:0.bahdanau_attention_2/dense_15/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/add
bahdanau_attention_2/TanhTanhbahdanau_attention_2/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Tanhń
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_16_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype028
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_16/Tensordot/axes­
,bahdanau_attention_2/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_16/Tensordot/free«
-bahdanau_attention_2/dense_16/Tensordot/ShapeShapebahdanau_attention_2/Tanh:y:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/Shape°
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_16/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/free:output:0>bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/GatherV2“
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0@bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_16/Tensordot/Constų
,bahdanau_attention_2/dense_16/Tensordot/ProdProd9bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_16/Tensordot/Prod¬
/bahdanau_attention_2/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_16/Tensordot/Const_1
.bahdanau_attention_2/dense_16/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_16/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_16/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_16/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_16/Tensordot/concatConcatV25bahdanau_attention_2/dense_16/Tensordot/free:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0<bahdanau_attention_2/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_16/Tensordot/concat
-bahdanau_attention_2/dense_16/Tensordot/stackPack5bahdanau_attention_2/dense_16/Tensordot/Prod:output:07bahdanau_attention_2/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/stack
1bahdanau_attention_2/dense_16/Tensordot/transpose	Transposebahdanau_attention_2/Tanh:y:07bahdanau_attention_2/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_16/Tensordot/transpose
/bahdanau_attention_2/dense_16/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_16/Tensordot/transpose:y:06bahdanau_attention_2/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_16/Tensordot/Reshape
.bahdanau_attention_2/dense_16/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_16/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_16/Tensordot/MatMul¬
/bahdanau_attention_2/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_16/Tensordot/Const_2°
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_16/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_16/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/concat_1
'bahdanau_attention_2/dense_16/TensordotReshape8bahdanau_attention_2/dense_16/Tensordot/MatMul:product:09bahdanau_attention_2/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_16/Tensordotę
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp’
%bahdanau_attention_2/dense_16/BiasAddBiasAdd0bahdanau_attention_2/dense_16/Tensordot:output:0<bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_16/BiasAddx
bahdanau_attention_2/RankConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank|
bahdanau_attention_2/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank_1z
bahdanau_attention_2/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub/y§
bahdanau_attention_2/SubSub$bahdanau_attention_2/Rank_1:output:0#bahdanau_attention_2/Sub/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub
 bahdanau_attention_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/range/start
 bahdanau_attention_2/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/limit
 bahdanau_attention_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/deltaŽ
bahdanau_attention_2/rangeRange)bahdanau_attention_2/range/start:output:0)bahdanau_attention_2/range/limit:output:0)bahdanau_attention_2/range/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range
"bahdanau_attention_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/start
"bahdanau_attention_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/delta×
bahdanau_attention_2/range_1Range+bahdanau_attention_2/range_1/start:output:0bahdanau_attention_2/Sub:z:0+bahdanau_attention_2/range_1/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_1 
$bahdanau_attention_2/concat/values_1Packbahdanau_attention_2/Sub:z:0*
N*
T0*
_output_shapes
:2&
$bahdanau_attention_2/concat/values_1
$bahdanau_attention_2/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$bahdanau_attention_2/concat/values_3
 bahdanau_attention_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/concat/axisÉ
bahdanau_attention_2/concatConcatV2#bahdanau_attention_2/range:output:0-bahdanau_attention_2/concat/values_1:output:0%bahdanau_attention_2/range_1:output:0-bahdanau_attention_2/concat/values_3:output:0)bahdanau_attention_2/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concatŁ
bahdanau_attention_2/transpose	Transpose.bahdanau_attention_2/dense_16/BiasAdd:output:0$bahdanau_attention_2/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2 
bahdanau_attention_2/transpose”
bahdanau_attention_2/SoftmaxSoftmax"bahdanau_attention_2/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Softmax~
bahdanau_attention_2/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub_1/y­
bahdanau_attention_2/Sub_1Sub$bahdanau_attention_2/Rank_1:output:0%bahdanau_attention_2/Sub_1/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub_1
"bahdanau_attention_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/range_2/start
"bahdanau_attention_2/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/limit
"bahdanau_attention_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/deltač
bahdanau_attention_2/range_2Range+bahdanau_attention_2/range_2/start:output:0+bahdanau_attention_2/range_2/limit:output:0+bahdanau_attention_2/range_2/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range_2
"bahdanau_attention_2/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/start
"bahdanau_attention_2/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/deltaŁ
bahdanau_attention_2/range_3Range+bahdanau_attention_2/range_3/start:output:0bahdanau_attention_2/Sub_1:z:0+bahdanau_attention_2/range_3/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_3¦
&bahdanau_attention_2/concat_1/values_1Packbahdanau_attention_2/Sub_1:z:0*
N*
T0*
_output_shapes
:2(
&bahdanau_attention_2/concat_1/values_1
&bahdanau_attention_2/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2(
&bahdanau_attention_2/concat_1/values_3
"bahdanau_attention_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/concat_1/axisÕ
bahdanau_attention_2/concat_1ConcatV2%bahdanau_attention_2/range_2:output:0/bahdanau_attention_2/concat_1/values_1:output:0%bahdanau_attention_2/range_3:output:0/bahdanau_attention_2/concat_1/values_3:output:0+bahdanau_attention_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concat_1×
 bahdanau_attention_2/transpose_1	Transpose&bahdanau_attention_2/Softmax:softmax:0&bahdanau_attention_2/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2"
 bahdanau_attention_2/transpose_1”
bahdanau_attention_2/mulMul$bahdanau_attention_2/transpose_1:y:0input_2*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/mul
*bahdanau_attention_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*bahdanau_attention_2/Sum/reduction_indicesĮ
bahdanau_attention_2/SumSumbahdanau_attention_2/mul:z:03bahdanau_attention_2/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
bahdanau_attention_2/SumŃ
+embedding_2/embedding_lookup/ReadVariableOpReadVariableOp4embedding_2_embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02-
+embedding_2/embedding_lookup/ReadVariableOpČ
!embedding_2/embedding_lookup/axisConst*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_2/embedding_lookup/axisĢ
embedding_2/embedding_lookupGatherV23embedding_2/embedding_lookup/ReadVariableOp:value:0input_1*embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_2/embedding_lookupø
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%embedding_2/embedding_lookup/Identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDims!bahdanau_attention_2/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
concat/axis·
concatConcatV2ExpandDims:output:0.embedding_2/embedding_lookup/Identity:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
concatY
gru_2/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slicei
gru_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/mul/y
gru_2/zeros/mulMulgru_2/strided_slice:output:0gru_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/mulk
gru_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
gru_2/zeros/Less/y
gru_2/zeros/LessLessgru_2/zeros/mul:z:0gru_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/Lesso
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/packed/1
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_2/zeros/packedk
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/zeros/Const
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/zeros
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm
gru_2/transpose	Transposeconcat:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transposea
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape_1
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice_1
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!gru_2/TensorArrayV2/element_shapeŹ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ė
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2”
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_2¬
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_2/gru_cell_2/unstackĀ
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOpæ
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMulø
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAddr
gru_2/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/gru_cell_2/Const
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 gru_2/gru_cell_2/split/split_dimó
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/splitČ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp»
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMul_1¾
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAdd_1
gru_2/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_2/gru_cell_2/Const_1
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"gru_2/gru_cell_2/split_1/split_dim«
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0!gru_2/gru_cell_2/Const_1:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/split_1¬
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid°
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid_1©
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul§
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_2
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Tanh
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x„
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_2¤
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2%
#gru_2/TensorArrayV2_1/element_shapeŠ
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterż
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_2_while_body_823685*#
condR
gru_2_while_cond_823684*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
gru_2/whileĮ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
gru_2/strided_slice_3/stack
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_3/stack_1
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_3/stack_2æ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_3
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime³
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axes
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/freey
dense_12/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shape
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axisž
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axis
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const¤
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1¬
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisŻ
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat°
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack»
dense_12/Tensordot/transpose	Transposegru_2/transpose_1:y:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/transposeĆ
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
dense_12/Tensordot/ReshapeĆ
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/MatMul
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/Const_2
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisź
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1µ
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/TensordotØ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¬
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Reshape/shape
ReshapeReshapedense_12/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
ReshapeŖ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02 
dense_13/MatMul/ReadVariableOp
dense_13/MatMulMatMulReshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/MatMulØ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02!
dense_13/BiasAdd/ReadVariableOp¦
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/BiasAddł
IdentityIdentitydense_13/BiasAdd:output:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityų

Identity_1Identitygru_2/while:output:45^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity$bahdanau_attention_2/transpose_1:y:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2l
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+embedding_2/embedding_lookup/ReadVariableOp+embedding_2/embedding_lookup/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3
Ņ
Ŗ
while_cond_824801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_824801___redundant_placeholder04
0while_while_cond_824801___redundant_placeholder14
0while_while_cond_824801___redundant_placeholder24
0while_while_cond_824801___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
G
„
while_body_822186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
é

ä
5__inference_bahdanau_attention_2_layer_call_fn_822073
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity

identity_1¢StatefulPartitionedCallŪ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_bahdanau_attention_2_layer_call_and_return_conditional_losses_8220522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*W
_input_shapesF
D:’’’’’’’’’@:’’’’’’’’’::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_1:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2
ē	
­
+__inference_gru_cell_2_layer_call_fn_825085

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8214112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
Ń÷
Ō
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_824133
input_1
input_2
input_3C
?bahdanau_attention_2_dense_14_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_14_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_15_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_15_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_16_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource8
4embedding_2_embedding_lookup_readvariableop_resource,
(gru_2_gru_cell_2_readvariableop_resource3
/gru_2_gru_cell_2_matmul_readvariableop_resource5
1gru_2_gru_cell_2_matmul_1_readvariableop_resource.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity

identity_1

identity_2¢4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢+embedding_2/embedding_lookup/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢gru_2/while
#bahdanau_attention_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#bahdanau_attention_2/ExpandDims/dim¾
bahdanau_attention_2/ExpandDims
ExpandDimsinput_3,bahdanau_attention_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2!
bahdanau_attention_2/ExpandDimsņ
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_14/Tensordot/axes­
,bahdanau_attention_2/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_14/Tensordot/free
-bahdanau_attention_2/dense_14/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/Shape°
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_14/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/free:output:0>bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/GatherV2“
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0@bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_14/Tensordot/Constų
,bahdanau_attention_2/dense_14/Tensordot/ProdProd9bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_14/Tensordot/Prod¬
/bahdanau_attention_2/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_14/Tensordot/Const_1
.bahdanau_attention_2/dense_14/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_14/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_14/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_14/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_14/Tensordot/concatConcatV25bahdanau_attention_2/dense_14/Tensordot/free:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0<bahdanau_attention_2/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_14/Tensordot/concat
-bahdanau_attention_2/dense_14/Tensordot/stackPack5bahdanau_attention_2/dense_14/Tensordot/Prod:output:07bahdanau_attention_2/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/stackģ
1bahdanau_attention_2/dense_14/Tensordot/transpose	Transposeinput_27bahdanau_attention_2/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_14/Tensordot/transpose
/bahdanau_attention_2/dense_14/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_14/Tensordot/transpose:y:06bahdanau_attention_2/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_14/Tensordot/Reshape
.bahdanau_attention_2/dense_14/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_14/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_14/Tensordot/MatMul­
/bahdanau_attention_2/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_14/Tensordot/Const_2°
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_14/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_14/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/concat_1
'bahdanau_attention_2/dense_14/TensordotReshape8bahdanau_attention_2/dense_14/Tensordot/MatMul:product:09bahdanau_attention_2/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_14/Tensordotē
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_14/BiasAddBiasAdd0bahdanau_attention_2/dense_14/Tensordot:output:0<bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_14/BiasAddņ
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_15/Tensordot/axes­
,bahdanau_attention_2/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_15/Tensordot/free¶
-bahdanau_attention_2/dense_15/Tensordot/ShapeShape(bahdanau_attention_2/ExpandDims:output:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/Shape°
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_15/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/free:output:0>bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/GatherV2“
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0@bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_15/Tensordot/Constų
,bahdanau_attention_2/dense_15/Tensordot/ProdProd9bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_15/Tensordot/Prod¬
/bahdanau_attention_2/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_15/Tensordot/Const_1
.bahdanau_attention_2/dense_15/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_15/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_15/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_15/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_15/Tensordot/concatConcatV25bahdanau_attention_2/dense_15/Tensordot/free:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0<bahdanau_attention_2/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_15/Tensordot/concat
-bahdanau_attention_2/dense_15/Tensordot/stackPack5bahdanau_attention_2/dense_15/Tensordot/Prod:output:07bahdanau_attention_2/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/stack
1bahdanau_attention_2/dense_15/Tensordot/transpose	Transpose(bahdanau_attention_2/ExpandDims:output:07bahdanau_attention_2/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’23
1bahdanau_attention_2/dense_15/Tensordot/transpose
/bahdanau_attention_2/dense_15/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_15/Tensordot/transpose:y:06bahdanau_attention_2/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_15/Tensordot/Reshape
.bahdanau_attention_2/dense_15/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_15/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_15/Tensordot/MatMul­
/bahdanau_attention_2/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_15/Tensordot/Const_2°
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_15/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_15/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/concat_1
'bahdanau_attention_2/dense_15/TensordotReshape8bahdanau_attention_2/dense_15/Tensordot/MatMul:product:09bahdanau_attention_2/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2)
'bahdanau_attention_2/dense_15/Tensordotē
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_15/BiasAddBiasAdd0bahdanau_attention_2/dense_15/Tensordot:output:0<bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%bahdanau_attention_2/dense_15/BiasAddŌ
bahdanau_attention_2/addAddV2.bahdanau_attention_2/dense_14/BiasAdd:output:0.bahdanau_attention_2/dense_15/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/add
bahdanau_attention_2/TanhTanhbahdanau_attention_2/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Tanhń
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_16_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype028
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_16/Tensordot/axes­
,bahdanau_attention_2/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_16/Tensordot/free«
-bahdanau_attention_2/dense_16/Tensordot/ShapeShapebahdanau_attention_2/Tanh:y:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/Shape°
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_16/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/free:output:0>bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/GatherV2“
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0@bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_16/Tensordot/Constų
,bahdanau_attention_2/dense_16/Tensordot/ProdProd9bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_16/Tensordot/Prod¬
/bahdanau_attention_2/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_16/Tensordot/Const_1
.bahdanau_attention_2/dense_16/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_16/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_16/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_16/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_16/Tensordot/concatConcatV25bahdanau_attention_2/dense_16/Tensordot/free:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0<bahdanau_attention_2/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_16/Tensordot/concat
-bahdanau_attention_2/dense_16/Tensordot/stackPack5bahdanau_attention_2/dense_16/Tensordot/Prod:output:07bahdanau_attention_2/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/stack
1bahdanau_attention_2/dense_16/Tensordot/transpose	Transposebahdanau_attention_2/Tanh:y:07bahdanau_attention_2/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_16/Tensordot/transpose
/bahdanau_attention_2/dense_16/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_16/Tensordot/transpose:y:06bahdanau_attention_2/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_16/Tensordot/Reshape
.bahdanau_attention_2/dense_16/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_16/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_16/Tensordot/MatMul¬
/bahdanau_attention_2/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_16/Tensordot/Const_2°
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_16/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_16/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/concat_1
'bahdanau_attention_2/dense_16/TensordotReshape8bahdanau_attention_2/dense_16/Tensordot/MatMul:product:09bahdanau_attention_2/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_16/Tensordotę
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp’
%bahdanau_attention_2/dense_16/BiasAddBiasAdd0bahdanau_attention_2/dense_16/Tensordot:output:0<bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_16/BiasAddx
bahdanau_attention_2/RankConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank|
bahdanau_attention_2/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank_1z
bahdanau_attention_2/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub/y§
bahdanau_attention_2/SubSub$bahdanau_attention_2/Rank_1:output:0#bahdanau_attention_2/Sub/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub
 bahdanau_attention_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/range/start
 bahdanau_attention_2/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/limit
 bahdanau_attention_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/deltaŽ
bahdanau_attention_2/rangeRange)bahdanau_attention_2/range/start:output:0)bahdanau_attention_2/range/limit:output:0)bahdanau_attention_2/range/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range
"bahdanau_attention_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/start
"bahdanau_attention_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/delta×
bahdanau_attention_2/range_1Range+bahdanau_attention_2/range_1/start:output:0bahdanau_attention_2/Sub:z:0+bahdanau_attention_2/range_1/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_1 
$bahdanau_attention_2/concat/values_1Packbahdanau_attention_2/Sub:z:0*
N*
T0*
_output_shapes
:2&
$bahdanau_attention_2/concat/values_1
$bahdanau_attention_2/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$bahdanau_attention_2/concat/values_3
 bahdanau_attention_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/concat/axisÉ
bahdanau_attention_2/concatConcatV2#bahdanau_attention_2/range:output:0-bahdanau_attention_2/concat/values_1:output:0%bahdanau_attention_2/range_1:output:0-bahdanau_attention_2/concat/values_3:output:0)bahdanau_attention_2/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concatŁ
bahdanau_attention_2/transpose	Transpose.bahdanau_attention_2/dense_16/BiasAdd:output:0$bahdanau_attention_2/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2 
bahdanau_attention_2/transpose”
bahdanau_attention_2/SoftmaxSoftmax"bahdanau_attention_2/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Softmax~
bahdanau_attention_2/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub_1/y­
bahdanau_attention_2/Sub_1Sub$bahdanau_attention_2/Rank_1:output:0%bahdanau_attention_2/Sub_1/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub_1
"bahdanau_attention_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/range_2/start
"bahdanau_attention_2/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/limit
"bahdanau_attention_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/deltač
bahdanau_attention_2/range_2Range+bahdanau_attention_2/range_2/start:output:0+bahdanau_attention_2/range_2/limit:output:0+bahdanau_attention_2/range_2/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range_2
"bahdanau_attention_2/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/start
"bahdanau_attention_2/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/deltaŁ
bahdanau_attention_2/range_3Range+bahdanau_attention_2/range_3/start:output:0bahdanau_attention_2/Sub_1:z:0+bahdanau_attention_2/range_3/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_3¦
&bahdanau_attention_2/concat_1/values_1Packbahdanau_attention_2/Sub_1:z:0*
N*
T0*
_output_shapes
:2(
&bahdanau_attention_2/concat_1/values_1
&bahdanau_attention_2/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2(
&bahdanau_attention_2/concat_1/values_3
"bahdanau_attention_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/concat_1/axisÕ
bahdanau_attention_2/concat_1ConcatV2%bahdanau_attention_2/range_2:output:0/bahdanau_attention_2/concat_1/values_1:output:0%bahdanau_attention_2/range_3:output:0/bahdanau_attention_2/concat_1/values_3:output:0+bahdanau_attention_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concat_1×
 bahdanau_attention_2/transpose_1	Transpose&bahdanau_attention_2/Softmax:softmax:0&bahdanau_attention_2/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2"
 bahdanau_attention_2/transpose_1”
bahdanau_attention_2/mulMul$bahdanau_attention_2/transpose_1:y:0input_2*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/mul
*bahdanau_attention_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*bahdanau_attention_2/Sum/reduction_indicesĮ
bahdanau_attention_2/SumSumbahdanau_attention_2/mul:z:03bahdanau_attention_2/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
bahdanau_attention_2/SumŃ
+embedding_2/embedding_lookup/ReadVariableOpReadVariableOp4embedding_2_embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02-
+embedding_2/embedding_lookup/ReadVariableOpČ
!embedding_2/embedding_lookup/axisConst*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_2/embedding_lookup/axisĢ
embedding_2/embedding_lookupGatherV23embedding_2/embedding_lookup/ReadVariableOp:value:0input_1*embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_2/embedding_lookupø
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%embedding_2/embedding_lookup/Identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDims!bahdanau_attention_2/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
concat/axis·
concatConcatV2ExpandDims:output:0.embedding_2/embedding_lookup/Identity:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
concatY
gru_2/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slicei
gru_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/mul/y
gru_2/zeros/mulMulgru_2/strided_slice:output:0gru_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/mulk
gru_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
gru_2/zeros/Less/y
gru_2/zeros/LessLessgru_2/zeros/mul:z:0gru_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/Lesso
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/packed/1
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_2/zeros/packedk
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/zeros/Const
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/zeros
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm
gru_2/transpose	Transposeconcat:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transposea
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape_1
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice_1
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!gru_2/TensorArrayV2/element_shapeŹ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ė
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2”
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_2¬
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_2/gru_cell_2/unstackĀ
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOpæ
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMulø
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAddr
gru_2/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/gru_cell_2/Const
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 gru_2/gru_cell_2/split/split_dimó
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/splitČ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp»
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMul_1¾
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAdd_1
gru_2/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_2/gru_cell_2/Const_1
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"gru_2/gru_cell_2/split_1/split_dim«
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0!gru_2/gru_cell_2/Const_1:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/split_1¬
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid°
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid_1©
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul§
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_2
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Tanh
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x„
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_2¤
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2%
#gru_2/TensorArrayV2_1/element_shapeŠ
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterż
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_2_while_body_824007*#
condR
gru_2_while_cond_824006*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
gru_2/whileĮ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
gru_2/strided_slice_3/stack
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_3/stack_1
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_3/stack_2æ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_3
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime³
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axes
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/freey
dense_12/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shape
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axisž
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axis
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const¤
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1¬
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisŻ
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat°
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack»
dense_12/Tensordot/transpose	Transposegru_2/transpose_1:y:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/transposeĆ
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
dense_12/Tensordot/ReshapeĆ
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/MatMul
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/Const_2
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisź
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1µ
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/TensordotØ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¬
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Reshape/shape
ReshapeReshapedense_12/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
ReshapeŖ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02 
dense_13/MatMul/ReadVariableOp
dense_13/MatMulMatMulReshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/MatMulØ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02!
dense_13/BiasAdd/ReadVariableOp¦
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/BiasAddł
IdentityIdentitydense_13/BiasAdd:output:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityų

Identity_1Identitygru_2/while:output:45^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity$bahdanau_attention_2/transpose_1:y:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2l
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+embedding_2/embedding_lookup/ReadVariableOp+embedding_2/embedding_lookup/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3
µ
¹
&rnn__decoder_2_gru_2_while_cond_821172F
Brnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_loop_counterL
Hrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_maximum_iterations*
&rnn__decoder_2_gru_2_while_placeholder,
(rnn__decoder_2_gru_2_while_placeholder_1,
(rnn__decoder_2_gru_2_while_placeholder_2H
Drnn__decoder_2_gru_2_while_less_rnn__decoder_2_gru_2_strided_slice_1^
Zrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_cond_821172___redundant_placeholder0^
Zrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_cond_821172___redundant_placeholder1^
Zrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_cond_821172___redundant_placeholder2^
Zrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_cond_821172___redundant_placeholder3'
#rnn__decoder_2_gru_2_while_identity
Ł
rnn__decoder_2/gru_2/while/LessLess&rnn__decoder_2_gru_2_while_placeholderDrnn__decoder_2_gru_2_while_less_rnn__decoder_2_gru_2_strided_slice_1*
T0*
_output_shapes
: 2!
rnn__decoder_2/gru_2/while/Less
#rnn__decoder_2/gru_2/while/IdentityIdentity#rnn__decoder_2/gru_2/while/Less:z:0*
T0
*
_output_shapes
: 2%
#rnn__decoder_2/gru_2/while/Identity"S
#rnn__decoder_2_gru_2_while_identity,rnn__decoder_2/gru_2/while/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
	

&__inference_gru_2_layer_call_fn_824573
inputs_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:’’’’’’’’’’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_8218582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
	

gru_2_while_cond_823684(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_823684___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_823684___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_823684___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_823684___redundant_placeholder3
gru_2_while_identity

gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
µ>
ā
A__inference_gru_2_layer_call_and_return_conditional_losses_821858

inputs
gru_cell_2_821781
gru_cell_2_821783
gru_cell_2_821785
identity

identity_1¢"gru_cell_2/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2ļ
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_821781gru_cell_2_821783gru_cell_2_821785*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8214112$
"gru_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterę
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_821781gru_cell_2_821783gru_cell_2_821785*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_821793*
condR
while_cond_821792*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeņ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permÆ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitytranspose_1:y:0#^gru_cell_2/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

Identity

Identity_1Identitywhile:output:4#^gru_cell_2/StatefulPartitionedCall^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ų
«
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_821371

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split/split_dimÆ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split_1/split_dimÖ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tanh]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:’’’’’’’’’2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_3”
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity„

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
Õ
ć
D__inference_dense_16_layer_call_and_return_conditional_losses_822000

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
Ū!
Ō
while_body_821672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_2_821694_0
while_gru_cell_2_821696_0
while_gru_cell_2_821698_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_2_821694
while_gru_cell_2_821696
while_gru_cell_2_821698¢(while/gru_cell_2/StatefulPartitionedCallĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem°
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_821694_0while_gru_cell_2_821696_0while_gru_cell_2_821698_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8213712*
(while/gru_cell_2/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2ø
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Į
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1)^while/gru_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"4
while_gru_cell_2_821694while_gru_cell_2_821694_0"4
while_gru_cell_2_821696while_gru_cell_2_821696_0"4
while_gru_cell_2_821698while_gru_cell_2_821698_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ē
ł
/__inference_rnn__decoder_2_layer_call_fn_823489
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity

identity_1

identity_2¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_8226522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:’’’’’’’’’@
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/2
Ü
ć
D__inference_dense_15_layer_call_and_return_conditional_losses_825154

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü
ć
D__inference_dense_14_layer_call_and_return_conditional_losses_825115

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
ŗA


"__inference__traced_restore_825323
file_prefix:
6assignvariableop_rnn__decoder_2_embedding_2_embeddings5
1assignvariableop_1_rnn__decoder_2_dense_12_kernel3
/assignvariableop_2_rnn__decoder_2_dense_12_bias5
1assignvariableop_3_rnn__decoder_2_dense_13_kernel3
/assignvariableop_4_rnn__decoder_2_dense_13_bias=
9assignvariableop_5_rnn__decoder_2_gru_2_gru_cell_2_kernelG
Cassignvariableop_6_rnn__decoder_2_gru_2_gru_cell_2_recurrent_kernel;
7assignvariableop_7_rnn__decoder_2_gru_2_gru_cell_2_biasJ
Fassignvariableop_8_rnn__decoder_2_bahdanau_attention_2_dense_14_kernelH
Dassignvariableop_9_rnn__decoder_2_bahdanau_attention_2_dense_14_biasK
Gassignvariableop_10_rnn__decoder_2_bahdanau_attention_2_dense_15_kernelI
Eassignvariableop_11_rnn__decoder_2_bahdanau_attention_2_dense_15_biasK
Gassignvariableop_12_rnn__decoder_2_bahdanau_attention_2_dense_16_kernelI
Eassignvariableop_13_rnn__decoder_2_bahdanau_attention_2_dense_16_bias
identity_15¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ü
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*č
valueŽBŪB/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesö
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityµ
AssignVariableOpAssignVariableOp6assignvariableop_rnn__decoder_2_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp1assignvariableop_1_rnn__decoder_2_dense_12_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2“
AssignVariableOp_2AssignVariableOp/assignvariableop_2_rnn__decoder_2_dense_12_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp1assignvariableop_3_rnn__decoder_2_dense_13_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4“
AssignVariableOp_4AssignVariableOp/assignvariableop_4_rnn__decoder_2_dense_13_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¾
AssignVariableOp_5AssignVariableOp9assignvariableop_5_rnn__decoder_2_gru_2_gru_cell_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Č
AssignVariableOp_6AssignVariableOpCassignvariableop_6_rnn__decoder_2_gru_2_gru_cell_2_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¼
AssignVariableOp_7AssignVariableOp7assignvariableop_7_rnn__decoder_2_gru_2_gru_cell_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ė
AssignVariableOp_8AssignVariableOpFassignvariableop_8_rnn__decoder_2_bahdanau_attention_2_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9É
AssignVariableOp_9AssignVariableOpDassignvariableop_9_rnn__decoder_2_bahdanau_attention_2_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ļ
AssignVariableOp_10AssignVariableOpGassignvariableop_10_rnn__decoder_2_bahdanau_attention_2_dense_15_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ķ
AssignVariableOp_11AssignVariableOpEassignvariableop_11_rnn__decoder_2_bahdanau_attention_2_dense_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ļ
AssignVariableOp_12AssignVariableOpGassignvariableop_12_rnn__decoder_2_bahdanau_attention_2_dense_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ķ
AssignVariableOp_13AssignVariableOpEassignvariableop_13_rnn__decoder_2_bahdanau_attention_2_dense_16_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*M
_input_shapes<
:: ::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ē	
­
+__inference_gru_cell_2_layer_call_fn_825071

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_8213712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
G
„
while_body_824802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Š\
ä
A__inference_gru_2_layer_call_and_return_conditional_losses_824893

inputs&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_824802*
condR
while_cond_824801*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŌ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*,
_output_shapes
:’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ņ
Ŗ
while_cond_821792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_821792___redundant_placeholder04
0while_while_cond_821792___redundant_placeholder14
0while_while_cond_821792___redundant_placeholder24
0while_while_cond_821792___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
	

gru_2_while_cond_824006(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_824006___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_824006___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_824006___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_824006___redundant_placeholder3
gru_2_while_identity

gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ņ
Ŗ
while_cond_824455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_824455___redundant_placeholder04
0while_while_cond_824455___redundant_placeholder14
0while_while_cond_824455___redundant_placeholder24
0while_while_cond_824455___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
	

&__inference_gru_2_layer_call_fn_824560
inputs_0
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:’’’’’’’’’’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_8217372
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*@
_input_shapes/
-:’’’’’’’’’’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ą,
Č
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_822652

inputs
inputs_1
inputs_2
bahdanau_attention_2_822608
bahdanau_attention_2_822610
bahdanau_attention_2_822612
bahdanau_attention_2_822614
bahdanau_attention_2_822616
bahdanau_attention_2_822618
embedding_2_822622
gru_2_822629
gru_2_822631
gru_2_822633
dense_12_822637
dense_12_822639
dense_13_822644
dense_13_822646
identity

identity_1

identity_2¢,bahdanau_attention_2/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢gru_2/StatefulPartitionedCallõ
,bahdanau_attention_2/StatefulPartitionedCallStatefulPartitionedCallinputs_1inputs_2bahdanau_attention_2_822608bahdanau_attention_2_822610bahdanau_attention_2_822612bahdanau_attention_2_822614bahdanau_attention_2_822616bahdanau_attention_2_822618*
Tin

2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’@*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_bahdanau_attention_2_layer_call_and_return_conditional_losses_8220522.
,bahdanau_attention_2/StatefulPartitionedCall
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_822622*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_8221022%
#embedding_2/StatefulPartitionedCallb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim­

ExpandDims
ExpandDims5bahdanau_attention_2/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
concat/axisµ
concatConcatV2ExpandDims:output:0,embedding_2/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
concat»
gru_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0gru_2_822629gru_2_822631gru_2_822633*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_8224372
gru_2/StatefulPartitionedCall¼
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0dense_12_822637dense_12_822639*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_8225022"
 dense_12/StatefulPartitionedCallo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Reshape/shape
ReshapeReshape)dense_12/StatefulPartitionedCall:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Reshape¢
 dense_13/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_13_822644dense_13_822646*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’'*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_8225302"
 dense_13/StatefulPartitionedCall¹
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0-^bahdanau_attention_2/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityŗ

Identity_1Identity&gru_2/StatefulPartitionedCall:output:1-^bahdanau_attention_2/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1Ģ

Identity_2Identity5bahdanau_attention_2/StatefulPartitionedCall:output:1-^bahdanau_attention_2/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2\
,bahdanau_attention_2/StatefulPartitionedCall,bahdanau_attention_2/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:TP
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
	
Ż
D__inference_dense_13_layer_call_and_return_conditional_losses_824968

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ģ

&__inference_gru_2_layer_call_fn_824906

inputs
unknown
	unknown_0
	unknown_1
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_2_layer_call_and_return_conditional_losses_8222772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
	

gru_2_while_cond_823284(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2*
&gru_2_while_less_gru_2_strided_slice_1@
<gru_2_while_gru_2_while_cond_823284___redundant_placeholder0@
<gru_2_while_gru_2_while_cond_823284___redundant_placeholder1@
<gru_2_while_gru_2_while_cond_823284___redundant_placeholder2@
<gru_2_while_gru_2_while_cond_823284___redundant_placeholder3
gru_2_while_identity

gru_2/while/LessLessgru_2_while_placeholder&gru_2_while_less_gru_2_strided_slice_1*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ö
Ž
!__inference__wrapped_model_821299
input_1
input_2
input_3R
Nrnn__decoder_2_bahdanau_attention_2_dense_14_tensordot_readvariableop_resourceP
Lrnn__decoder_2_bahdanau_attention_2_dense_14_biasadd_readvariableop_resourceR
Nrnn__decoder_2_bahdanau_attention_2_dense_15_tensordot_readvariableop_resourceP
Lrnn__decoder_2_bahdanau_attention_2_dense_15_biasadd_readvariableop_resourceR
Nrnn__decoder_2_bahdanau_attention_2_dense_16_tensordot_readvariableop_resourceP
Lrnn__decoder_2_bahdanau_attention_2_dense_16_biasadd_readvariableop_resourceG
Crnn__decoder_2_embedding_2_embedding_lookup_readvariableop_resource;
7rnn__decoder_2_gru_2_gru_cell_2_readvariableop_resourceB
>rnn__decoder_2_gru_2_gru_cell_2_matmul_readvariableop_resourceD
@rnn__decoder_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource=
9rnn__decoder_2_dense_12_tensordot_readvariableop_resource;
7rnn__decoder_2_dense_12_biasadd_readvariableop_resource:
6rnn__decoder_2_dense_13_matmul_readvariableop_resource;
7rnn__decoder_2_dense_13_biasadd_readvariableop_resource
identity

identity_1

identity_2¢Crnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¢Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¢Crnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¢Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¢Crnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp¢Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¢.rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp¢0rnn__decoder_2/dense_12/Tensordot/ReadVariableOp¢.rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp¢-rnn__decoder_2/dense_13/MatMul/ReadVariableOp¢:rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp¢5rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp¢7rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢.rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp¢rnn__decoder_2/gru_2/whileŖ
2rnn__decoder_2/bahdanau_attention_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :24
2rnn__decoder_2/bahdanau_attention_2/ExpandDims/dimė
.rnn__decoder_2/bahdanau_attention_2/ExpandDims
ExpandDimsinput_3;rnn__decoder_2/bahdanau_attention_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’20
.rnn__decoder_2/bahdanau_attention_2/ExpandDims
Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpReadVariableOpNrnn__decoder_2_bahdanau_attention_2_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02G
Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpÄ
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2=
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/axesĖ
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2=
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/free³
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ShapeĪ
Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis²
?rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/free:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2Ņ
Frnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Frnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisø
Arnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/axes:output:0Ornn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2C
Arnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1Ę
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2>
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const“
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ProdProdHrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:0Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2=
;rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ProdŹ
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_1¼
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Prod_1ProdJrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2_1:output:0Grnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2?
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Prod_1Ź
Brnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Brnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat/axis
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concatConcatV2Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/free:output:0Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/axes:output:0Krnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concatĄ
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/stackPackDrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Prod:output:0Frnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/stack
@rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/transpose	Transposeinput_2Frnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2B
@rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/transposeÓ
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReshapeReshapeDrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/transpose:y:0Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2@
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReshapeÓ
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/MatMulMatMulGrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Reshape:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2?
=rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/MatMulĖ
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_2Ī
Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1/axis
?rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1ConcatV2Hrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:0Grnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/Const_2:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1Å
6rnn__decoder_2/bahdanau_attention_2/dense_14/TensordotReshapeGrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/MatMul:product:0Hrnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@28
6rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot
Crnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpReadVariableOpLrnn__decoder_2_bahdanau_attention_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02E
Crnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¼
4rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAddBiasAdd?rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot:output:0Krnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@26
4rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd
Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpReadVariableOpNrnn__decoder_2_bahdanau_attention_2_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02G
Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpÄ
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2=
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/axesĖ
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2=
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/freeć
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ShapeShape7rnn__decoder_2/bahdanau_attention_2/ExpandDims:output:0*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ShapeĪ
Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis²
?rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/free:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2Ņ
Frnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Frnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisø
Arnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/axes:output:0Ornn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2C
Arnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1Ę
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2>
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const“
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ProdProdHrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:0Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2=
;rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ProdŹ
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_1¼
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Prod_1ProdJrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2_1:output:0Grnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2?
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Prod_1Ź
Brnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Brnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat/axis
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concatConcatV2Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/free:output:0Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/axes:output:0Krnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concatĄ
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/stackPackDrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Prod:output:0Frnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/stackÉ
@rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/transpose	Transpose7rnn__decoder_2/bahdanau_attention_2/ExpandDims:output:0Frnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2B
@rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/transposeÓ
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReshapeReshapeDrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/transpose:y:0Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2@
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReshapeÓ
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/MatMulMatMulGrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Reshape:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2?
=rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/MatMulĖ
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_2Ī
Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1/axis
?rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1ConcatV2Hrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:0Grnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/Const_2:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1Å
6rnn__decoder_2/bahdanau_attention_2/dense_15/TensordotReshapeGrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/MatMul:product:0Hrnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’28
6rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot
Crnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpReadVariableOpLrnn__decoder_2_bahdanau_attention_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02E
Crnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¼
4rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAddBiasAdd?rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot:output:0Krnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’26
4rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd
'rnn__decoder_2/bahdanau_attention_2/addAddV2=rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd:output:0=rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2)
'rnn__decoder_2/bahdanau_attention_2/addĄ
(rnn__decoder_2/bahdanau_attention_2/TanhTanh+rnn__decoder_2/bahdanau_attention_2/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2*
(rnn__decoder_2/bahdanau_attention_2/Tanh
Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpReadVariableOpNrnn__decoder_2_bahdanau_attention_2_dense_16_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype02G
Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpÄ
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2=
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/axesĖ
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2=
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/freeŲ
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ShapeShape,rnn__decoder_2/bahdanau_attention_2/Tanh:y:0*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ShapeĪ
Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis²
?rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/free:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2Ņ
Frnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Frnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisø
Arnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1GatherV2Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Shape:output:0Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/axes:output:0Ornn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2C
Arnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1Ę
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2>
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const“
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ProdProdHrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:0Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2=
;rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ProdŹ
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2@
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_1¼
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Prod_1ProdJrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2_1:output:0Grnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2?
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Prod_1Ź
Brnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Brnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat/axis
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concatConcatV2Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/free:output:0Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/axes:output:0Krnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concatĄ
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/stackPackDrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Prod:output:0Frnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2>
<rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/stack¾
@rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/transpose	Transpose,rnn__decoder_2/bahdanau_attention_2/Tanh:y:0Frnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2B
@rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/transposeÓ
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReshapeReshapeDrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/transpose:y:0Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2@
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReshapeŅ
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/MatMulMatMulGrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Reshape:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2?
=rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/MatMulŹ
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_2Ī
Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Drnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1/axis
?rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1ConcatV2Hrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:0Grnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/Const_2:output:0Mrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2A
?rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1Ä
6rnn__decoder_2/bahdanau_attention_2/dense_16/TensordotReshapeGrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/MatMul:product:0Hrnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@28
6rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot
Crnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpReadVariableOpLrnn__decoder_2_bahdanau_attention_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02E
Crnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp»
4rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAddBiasAdd?rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot:output:0Krnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@26
4rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd
(rnn__decoder_2/bahdanau_attention_2/RankConst*
_output_shapes
: *
dtype0*
value	B :2*
(rnn__decoder_2/bahdanau_attention_2/Rank
*rnn__decoder_2/bahdanau_attention_2/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2,
*rnn__decoder_2/bahdanau_attention_2/Rank_1
)rnn__decoder_2/bahdanau_attention_2/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn__decoder_2/bahdanau_attention_2/Sub/yć
'rnn__decoder_2/bahdanau_attention_2/SubSub3rnn__decoder_2/bahdanau_attention_2/Rank_1:output:02rnn__decoder_2/bahdanau_attention_2/Sub/y:output:0*
T0*
_output_shapes
: 2)
'rnn__decoder_2/bahdanau_attention_2/Sub¤
/rnn__decoder_2/bahdanau_attention_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 21
/rnn__decoder_2/bahdanau_attention_2/range/start¤
/rnn__decoder_2/bahdanau_attention_2/range/limitConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn__decoder_2/bahdanau_attention_2/range/limit¤
/rnn__decoder_2/bahdanau_attention_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn__decoder_2/bahdanau_attention_2/range/delta©
)rnn__decoder_2/bahdanau_attention_2/rangeRange8rnn__decoder_2/bahdanau_attention_2/range/start:output:08rnn__decoder_2/bahdanau_attention_2/range/limit:output:08rnn__decoder_2/bahdanau_attention_2/range/delta:output:0*
_output_shapes
:2+
)rnn__decoder_2/bahdanau_attention_2/rangeØ
1rnn__decoder_2/bahdanau_attention_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_1/startØ
1rnn__decoder_2/bahdanau_attention_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_1/delta¢
+rnn__decoder_2/bahdanau_attention_2/range_1Range:rnn__decoder_2/bahdanau_attention_2/range_1/start:output:0+rnn__decoder_2/bahdanau_attention_2/Sub:z:0:rnn__decoder_2/bahdanau_attention_2/range_1/delta:output:0*
_output_shapes
: 2-
+rnn__decoder_2/bahdanau_attention_2/range_1Ķ
3rnn__decoder_2/bahdanau_attention_2/concat/values_1Pack+rnn__decoder_2/bahdanau_attention_2/Sub:z:0*
N*
T0*
_output_shapes
:25
3rnn__decoder_2/bahdanau_attention_2/concat/values_1“
3rnn__decoder_2/bahdanau_attention_2/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:25
3rnn__decoder_2/bahdanau_attention_2/concat/values_3¤
/rnn__decoder_2/bahdanau_attention_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/rnn__decoder_2/bahdanau_attention_2/concat/axis²
*rnn__decoder_2/bahdanau_attention_2/concatConcatV22rnn__decoder_2/bahdanau_attention_2/range:output:0<rnn__decoder_2/bahdanau_attention_2/concat/values_1:output:04rnn__decoder_2/bahdanau_attention_2/range_1:output:0<rnn__decoder_2/bahdanau_attention_2/concat/values_3:output:08rnn__decoder_2/bahdanau_attention_2/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*rnn__decoder_2/bahdanau_attention_2/concat
-rnn__decoder_2/bahdanau_attention_2/transpose	Transpose=rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd:output:03rnn__decoder_2/bahdanau_attention_2/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2/
-rnn__decoder_2/bahdanau_attention_2/transposeĪ
+rnn__decoder_2/bahdanau_attention_2/SoftmaxSoftmax1rnn__decoder_2/bahdanau_attention_2/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2-
+rnn__decoder_2/bahdanau_attention_2/Softmax
+rnn__decoder_2/bahdanau_attention_2/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+rnn__decoder_2/bahdanau_attention_2/Sub_1/yé
)rnn__decoder_2/bahdanau_attention_2/Sub_1Sub3rnn__decoder_2/bahdanau_attention_2/Rank_1:output:04rnn__decoder_2/bahdanau_attention_2/Sub_1/y:output:0*
T0*
_output_shapes
: 2+
)rnn__decoder_2/bahdanau_attention_2/Sub_1Ø
1rnn__decoder_2/bahdanau_attention_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 23
1rnn__decoder_2/bahdanau_attention_2/range_2/startØ
1rnn__decoder_2/bahdanau_attention_2/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_2/limitØ
1rnn__decoder_2/bahdanau_attention_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_2/delta³
+rnn__decoder_2/bahdanau_attention_2/range_2Range:rnn__decoder_2/bahdanau_attention_2/range_2/start:output:0:rnn__decoder_2/bahdanau_attention_2/range_2/limit:output:0:rnn__decoder_2/bahdanau_attention_2/range_2/delta:output:0*
_output_shapes
:2-
+rnn__decoder_2/bahdanau_attention_2/range_2Ø
1rnn__decoder_2/bahdanau_attention_2/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_3/startØ
1rnn__decoder_2/bahdanau_attention_2/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :23
1rnn__decoder_2/bahdanau_attention_2/range_3/delta¤
+rnn__decoder_2/bahdanau_attention_2/range_3Range:rnn__decoder_2/bahdanau_attention_2/range_3/start:output:0-rnn__decoder_2/bahdanau_attention_2/Sub_1:z:0:rnn__decoder_2/bahdanau_attention_2/range_3/delta:output:0*
_output_shapes
: 2-
+rnn__decoder_2/bahdanau_attention_2/range_3Ó
5rnn__decoder_2/bahdanau_attention_2/concat_1/values_1Pack-rnn__decoder_2/bahdanau_attention_2/Sub_1:z:0*
N*
T0*
_output_shapes
:27
5rnn__decoder_2/bahdanau_attention_2/concat_1/values_1ø
5rnn__decoder_2/bahdanau_attention_2/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:27
5rnn__decoder_2/bahdanau_attention_2/concat_1/values_3Ø
1rnn__decoder_2/bahdanau_attention_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1rnn__decoder_2/bahdanau_attention_2/concat_1/axis¾
,rnn__decoder_2/bahdanau_attention_2/concat_1ConcatV24rnn__decoder_2/bahdanau_attention_2/range_2:output:0>rnn__decoder_2/bahdanau_attention_2/concat_1/values_1:output:04rnn__decoder_2/bahdanau_attention_2/range_3:output:0>rnn__decoder_2/bahdanau_attention_2/concat_1/values_3:output:0:rnn__decoder_2/bahdanau_attention_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2.
,rnn__decoder_2/bahdanau_attention_2/concat_1
/rnn__decoder_2/bahdanau_attention_2/transpose_1	Transpose5rnn__decoder_2/bahdanau_attention_2/Softmax:softmax:05rnn__decoder_2/bahdanau_attention_2/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@21
/rnn__decoder_2/bahdanau_attention_2/transpose_1Ī
'rnn__decoder_2/bahdanau_attention_2/mulMul3rnn__decoder_2/bahdanau_attention_2/transpose_1:y:0input_2*
T0*,
_output_shapes
:’’’’’’’’’@2)
'rnn__decoder_2/bahdanau_attention_2/mulø
9rnn__decoder_2/bahdanau_attention_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9rnn__decoder_2/bahdanau_attention_2/Sum/reduction_indicesż
'rnn__decoder_2/bahdanau_attention_2/SumSum+rnn__decoder_2/bahdanau_attention_2/mul:z:0Brnn__decoder_2/bahdanau_attention_2/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2)
'rnn__decoder_2/bahdanau_attention_2/Sumž
:rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOpReadVariableOpCrnn__decoder_2_embedding_2_embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02<
:rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOpõ
0rnn__decoder_2/embedding_2/embedding_lookup/axisConst*M
_classC
A?loc:@rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 22
0rnn__decoder_2/embedding_2/embedding_lookup/axis
+rnn__decoder_2/embedding_2/embedding_lookupGatherV2Brnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp:value:0input_19rnn__decoder_2/embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*M
_classC
A?loc:@rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/embedding_2/embedding_lookupå
4rnn__decoder_2/embedding_2/embedding_lookup/IdentityIdentity4rnn__decoder_2/embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’26
4rnn__decoder_2/embedding_2/embedding_lookup/Identity
rnn__decoder_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
rnn__decoder_2/ExpandDims/dimÕ
rnn__decoder_2/ExpandDims
ExpandDims0rnn__decoder_2/bahdanau_attention_2/Sum:output:0&rnn__decoder_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
rnn__decoder_2/ExpandDims
rnn__decoder_2/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
rnn__decoder_2/concat/axis
rnn__decoder_2/concatConcatV2"rnn__decoder_2/ExpandDims:output:0=rnn__decoder_2/embedding_2/embedding_lookup/Identity:output:0#rnn__decoder_2/concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
rnn__decoder_2/concat
rnn__decoder_2/gru_2/ShapeShapernn__decoder_2/concat:output:0*
T0*
_output_shapes
:2
rnn__decoder_2/gru_2/Shape
(rnn__decoder_2/gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(rnn__decoder_2/gru_2/strided_slice/stack¢
*rnn__decoder_2/gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*rnn__decoder_2/gru_2/strided_slice/stack_1¢
*rnn__decoder_2/gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*rnn__decoder_2/gru_2/strided_slice/stack_2ą
"rnn__decoder_2/gru_2/strided_sliceStridedSlice#rnn__decoder_2/gru_2/Shape:output:01rnn__decoder_2/gru_2/strided_slice/stack:output:03rnn__decoder_2/gru_2/strided_slice/stack_1:output:03rnn__decoder_2/gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"rnn__decoder_2/gru_2/strided_slice
 rnn__decoder_2/gru_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2"
 rnn__decoder_2/gru_2/zeros/mul/yĄ
rnn__decoder_2/gru_2/zeros/mulMul+rnn__decoder_2/gru_2/strided_slice:output:0)rnn__decoder_2/gru_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
rnn__decoder_2/gru_2/zeros/mul
!rnn__decoder_2/gru_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2#
!rnn__decoder_2/gru_2/zeros/Less/y»
rnn__decoder_2/gru_2/zeros/LessLess"rnn__decoder_2/gru_2/zeros/mul:z:0*rnn__decoder_2/gru_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
rnn__decoder_2/gru_2/zeros/Less
#rnn__decoder_2/gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2%
#rnn__decoder_2/gru_2/zeros/packed/1×
!rnn__decoder_2/gru_2/zeros/packedPack+rnn__decoder_2/gru_2/strided_slice:output:0,rnn__decoder_2/gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!rnn__decoder_2/gru_2/zeros/packed
 rnn__decoder_2/gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 rnn__decoder_2/gru_2/zeros/ConstŹ
rnn__decoder_2/gru_2/zerosFill*rnn__decoder_2/gru_2/zeros/packed:output:0)rnn__decoder_2/gru_2/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
rnn__decoder_2/gru_2/zeros
#rnn__decoder_2/gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#rnn__decoder_2/gru_2/transpose/permŅ
rnn__decoder_2/gru_2/transpose	Transposernn__decoder_2/concat:output:0,rnn__decoder_2/gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2 
rnn__decoder_2/gru_2/transpose
rnn__decoder_2/gru_2/Shape_1Shape"rnn__decoder_2/gru_2/transpose:y:0*
T0*
_output_shapes
:2
rnn__decoder_2/gru_2/Shape_1¢
*rnn__decoder_2/gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*rnn__decoder_2/gru_2/strided_slice_1/stack¦
,rnn__decoder_2/gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,rnn__decoder_2/gru_2/strided_slice_1/stack_1¦
,rnn__decoder_2/gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,rnn__decoder_2/gru_2/strided_slice_1/stack_2ģ
$rnn__decoder_2/gru_2/strided_slice_1StridedSlice%rnn__decoder_2/gru_2/Shape_1:output:03rnn__decoder_2/gru_2/strided_slice_1/stack:output:05rnn__decoder_2/gru_2/strided_slice_1/stack_1:output:05rnn__decoder_2/gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$rnn__decoder_2/gru_2/strided_slice_1Æ
0rnn__decoder_2/gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’22
0rnn__decoder_2/gru_2/TensorArrayV2/element_shape
"rnn__decoder_2/gru_2/TensorArrayV2TensorListReserve9rnn__decoder_2/gru_2/TensorArrayV2/element_shape:output:0-rnn__decoder_2/gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"rnn__decoder_2/gru_2/TensorArrayV2é
Jrnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2L
Jrnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeĢ
<rnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"rnn__decoder_2/gru_2/transpose:y:0Srnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<rnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensor¢
*rnn__decoder_2/gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*rnn__decoder_2/gru_2/strided_slice_2/stack¦
,rnn__decoder_2/gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,rnn__decoder_2/gru_2/strided_slice_2/stack_1¦
,rnn__decoder_2/gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,rnn__decoder_2/gru_2/strided_slice_2/stack_2ū
$rnn__decoder_2/gru_2/strided_slice_2StridedSlice"rnn__decoder_2/gru_2/transpose:y:03rnn__decoder_2/gru_2/strided_slice_2/stack:output:05rnn__decoder_2/gru_2/strided_slice_2/stack_1:output:05rnn__decoder_2/gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2&
$rnn__decoder_2/gru_2/strided_slice_2Ł
.rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOpReadVariableOp7rnn__decoder_2_gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype020
.rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOpĢ
'rnn__decoder_2/gru_2/gru_cell_2/unstackUnpack6rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2)
'rnn__decoder_2/gru_2/gru_cell_2/unstackļ
5rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp>rnn__decoder_2_gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype027
5rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOpū
&rnn__decoder_2/gru_2/gru_cell_2/MatMulMatMul-rnn__decoder_2/gru_2/strided_slice_2:output:0=rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2(
&rnn__decoder_2/gru_2/gru_cell_2/MatMulō
'rnn__decoder_2/gru_2/gru_cell_2/BiasAddBiasAdd0rnn__decoder_2/gru_2/gru_cell_2/MatMul:product:00rnn__decoder_2/gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2)
'rnn__decoder_2/gru_2/gru_cell_2/BiasAdd
%rnn__decoder_2/gru_2/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%rnn__decoder_2/gru_2/gru_cell_2/Const­
/rnn__decoder_2/gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’21
/rnn__decoder_2/gru_2/gru_cell_2/split/split_dimÆ
%rnn__decoder_2/gru_2/gru_cell_2/splitSplit8rnn__decoder_2/gru_2/gru_cell_2/split/split_dim:output:00rnn__decoder_2/gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2'
%rnn__decoder_2/gru_2/gru_cell_2/splitõ
7rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp@rnn__decoder_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype029
7rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp÷
(rnn__decoder_2/gru_2/gru_cell_2/MatMul_1MatMul#rnn__decoder_2/gru_2/zeros:output:0?rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2*
(rnn__decoder_2/gru_2/gru_cell_2/MatMul_1ś
)rnn__decoder_2/gru_2/gru_cell_2/BiasAdd_1BiasAdd2rnn__decoder_2/gru_2/gru_cell_2/MatMul_1:product:00rnn__decoder_2/gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2+
)rnn__decoder_2/gru_2/gru_cell_2/BiasAdd_1§
'rnn__decoder_2/gru_2/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2)
'rnn__decoder_2/gru_2/gru_cell_2/Const_1±
1rnn__decoder_2/gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’23
1rnn__decoder_2/gru_2/gru_cell_2/split_1/split_dimö
'rnn__decoder_2/gru_2/gru_cell_2/split_1SplitV2rnn__decoder_2/gru_2/gru_cell_2/BiasAdd_1:output:00rnn__decoder_2/gru_2/gru_cell_2/Const_1:output:0:rnn__decoder_2/gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2)
'rnn__decoder_2/gru_2/gru_cell_2/split_1č
#rnn__decoder_2/gru_2/gru_cell_2/addAddV2.rnn__decoder_2/gru_2/gru_cell_2/split:output:00rnn__decoder_2/gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2%
#rnn__decoder_2/gru_2/gru_cell_2/add¹
'rnn__decoder_2/gru_2/gru_cell_2/SigmoidSigmoid'rnn__decoder_2/gru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2)
'rnn__decoder_2/gru_2/gru_cell_2/Sigmoidģ
%rnn__decoder_2/gru_2/gru_cell_2/add_1AddV2.rnn__decoder_2/gru_2/gru_cell_2/split:output:10rnn__decoder_2/gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/gru_cell_2/add_1æ
)rnn__decoder_2/gru_2/gru_cell_2/Sigmoid_1Sigmoid)rnn__decoder_2/gru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2+
)rnn__decoder_2/gru_2/gru_cell_2/Sigmoid_1å
#rnn__decoder_2/gru_2/gru_cell_2/mulMul-rnn__decoder_2/gru_2/gru_cell_2/Sigmoid_1:y:00rnn__decoder_2/gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2%
#rnn__decoder_2/gru_2/gru_cell_2/mulć
%rnn__decoder_2/gru_2/gru_cell_2/add_2AddV2.rnn__decoder_2/gru_2/gru_cell_2/split:output:2'rnn__decoder_2/gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/gru_cell_2/add_2²
$rnn__decoder_2/gru_2/gru_cell_2/TanhTanh)rnn__decoder_2/gru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2&
$rnn__decoder_2/gru_2/gru_cell_2/TanhŚ
%rnn__decoder_2/gru_2/gru_cell_2/mul_1Mul+rnn__decoder_2/gru_2/gru_cell_2/Sigmoid:y:0#rnn__decoder_2/gru_2/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/gru_cell_2/mul_1
%rnn__decoder_2/gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%rnn__decoder_2/gru_2/gru_cell_2/sub/xį
#rnn__decoder_2/gru_2/gru_cell_2/subSub.rnn__decoder_2/gru_2/gru_cell_2/sub/x:output:0+rnn__decoder_2/gru_2/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2%
#rnn__decoder_2/gru_2/gru_cell_2/subŪ
%rnn__decoder_2/gru_2/gru_cell_2/mul_2Mul'rnn__decoder_2/gru_2/gru_cell_2/sub:z:0(rnn__decoder_2/gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/gru_cell_2/mul_2ą
%rnn__decoder_2/gru_2/gru_cell_2/add_3AddV2)rnn__decoder_2/gru_2/gru_cell_2/mul_1:z:0)rnn__decoder_2/gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/gru_cell_2/add_3¹
2rnn__decoder_2/gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   24
2rnn__decoder_2/gru_2/TensorArrayV2_1/element_shape
$rnn__decoder_2/gru_2/TensorArrayV2_1TensorListReserve;rnn__decoder_2/gru_2/TensorArrayV2_1/element_shape:output:0-rnn__decoder_2/gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$rnn__decoder_2/gru_2/TensorArrayV2_1x
rnn__decoder_2/gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
rnn__decoder_2/gru_2/time©
-rnn__decoder_2/gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2/
-rnn__decoder_2/gru_2/while/maximum_iterations
'rnn__decoder_2/gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'rnn__decoder_2/gru_2/while/loop_counterĻ
rnn__decoder_2/gru_2/whileWhile0rnn__decoder_2/gru_2/while/loop_counter:output:06rnn__decoder_2/gru_2/while/maximum_iterations:output:0"rnn__decoder_2/gru_2/time:output:0-rnn__decoder_2/gru_2/TensorArrayV2_1:handle:0#rnn__decoder_2/gru_2/zeros:output:0-rnn__decoder_2/gru_2/strided_slice_1:output:0Lrnn__decoder_2/gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:07rnn__decoder_2_gru_2_gru_cell_2_readvariableop_resource>rnn__decoder_2_gru_2_gru_cell_2_matmul_readvariableop_resource@rnn__decoder_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*2
body*R(
&rnn__decoder_2_gru_2_while_body_821173*2
cond*R(
&rnn__decoder_2_gru_2_while_cond_821172*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
rnn__decoder_2/gru_2/whileß
Ernn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2G
Ernn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shape½
7rnn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStackTensorListStack#rnn__decoder_2/gru_2/while:output:3Nrnn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype029
7rnn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack«
*rnn__decoder_2/gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2,
*rnn__decoder_2/gru_2/strided_slice_3/stack¦
,rnn__decoder_2/gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,rnn__decoder_2/gru_2/strided_slice_3/stack_1¦
,rnn__decoder_2/gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,rnn__decoder_2/gru_2/strided_slice_3/stack_2
$rnn__decoder_2/gru_2/strided_slice_3StridedSlice@rnn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:03rnn__decoder_2/gru_2/strided_slice_3/stack:output:05rnn__decoder_2/gru_2/strided_slice_3/stack_1:output:05rnn__decoder_2/gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2&
$rnn__decoder_2/gru_2/strided_slice_3£
%rnn__decoder_2/gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%rnn__decoder_2/gru_2/transpose_1/permś
 rnn__decoder_2/gru_2/transpose_1	Transpose@rnn__decoder_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0.rnn__decoder_2/gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2"
 rnn__decoder_2/gru_2/transpose_1
rnn__decoder_2/gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
rnn__decoder_2/gru_2/runtimeą
0rnn__decoder_2/dense_12/Tensordot/ReadVariableOpReadVariableOp9rnn__decoder_2_dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype022
0rnn__decoder_2/dense_12/Tensordot/ReadVariableOp
&rnn__decoder_2/dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&rnn__decoder_2/dense_12/Tensordot/axes”
&rnn__decoder_2/dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&rnn__decoder_2/dense_12/Tensordot/free¦
'rnn__decoder_2/dense_12/Tensordot/ShapeShape$rnn__decoder_2/gru_2/transpose_1:y:0*
T0*
_output_shapes
:2)
'rnn__decoder_2/dense_12/Tensordot/Shape¤
/rnn__decoder_2/dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/rnn__decoder_2/dense_12/Tensordot/GatherV2/axisÉ
*rnn__decoder_2/dense_12/Tensordot/GatherV2GatherV20rnn__decoder_2/dense_12/Tensordot/Shape:output:0/rnn__decoder_2/dense_12/Tensordot/free:output:08rnn__decoder_2/dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*rnn__decoder_2/dense_12/Tensordot/GatherV2Ø
1rnn__decoder_2/dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1rnn__decoder_2/dense_12/Tensordot/GatherV2_1/axisĻ
,rnn__decoder_2/dense_12/Tensordot/GatherV2_1GatherV20rnn__decoder_2/dense_12/Tensordot/Shape:output:0/rnn__decoder_2/dense_12/Tensordot/axes:output:0:rnn__decoder_2/dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,rnn__decoder_2/dense_12/Tensordot/GatherV2_1
'rnn__decoder_2/dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'rnn__decoder_2/dense_12/Tensordot/Constą
&rnn__decoder_2/dense_12/Tensordot/ProdProd3rnn__decoder_2/dense_12/Tensordot/GatherV2:output:00rnn__decoder_2/dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&rnn__decoder_2/dense_12/Tensordot/Prod 
)rnn__decoder_2/dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)rnn__decoder_2/dense_12/Tensordot/Const_1č
(rnn__decoder_2/dense_12/Tensordot/Prod_1Prod5rnn__decoder_2/dense_12/Tensordot/GatherV2_1:output:02rnn__decoder_2/dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(rnn__decoder_2/dense_12/Tensordot/Prod_1 
-rnn__decoder_2/dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-rnn__decoder_2/dense_12/Tensordot/concat/axisØ
(rnn__decoder_2/dense_12/Tensordot/concatConcatV2/rnn__decoder_2/dense_12/Tensordot/free:output:0/rnn__decoder_2/dense_12/Tensordot/axes:output:06rnn__decoder_2/dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(rnn__decoder_2/dense_12/Tensordot/concatģ
'rnn__decoder_2/dense_12/Tensordot/stackPack/rnn__decoder_2/dense_12/Tensordot/Prod:output:01rnn__decoder_2/dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'rnn__decoder_2/dense_12/Tensordot/stack÷
+rnn__decoder_2/dense_12/Tensordot/transpose	Transpose$rnn__decoder_2/gru_2/transpose_1:y:01rnn__decoder_2/dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/dense_12/Tensordot/transpose’
)rnn__decoder_2/dense_12/Tensordot/ReshapeReshape/rnn__decoder_2/dense_12/Tensordot/transpose:y:00rnn__decoder_2/dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2+
)rnn__decoder_2/dense_12/Tensordot/Reshape’
(rnn__decoder_2/dense_12/Tensordot/MatMulMatMul2rnn__decoder_2/dense_12/Tensordot/Reshape:output:08rnn__decoder_2/dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2*
(rnn__decoder_2/dense_12/Tensordot/MatMul”
)rnn__decoder_2/dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)rnn__decoder_2/dense_12/Tensordot/Const_2¤
/rnn__decoder_2/dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/rnn__decoder_2/dense_12/Tensordot/concat_1/axisµ
*rnn__decoder_2/dense_12/Tensordot/concat_1ConcatV23rnn__decoder_2/dense_12/Tensordot/GatherV2:output:02rnn__decoder_2/dense_12/Tensordot/Const_2:output:08rnn__decoder_2/dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*rnn__decoder_2/dense_12/Tensordot/concat_1ń
!rnn__decoder_2/dense_12/TensordotReshape2rnn__decoder_2/dense_12/Tensordot/MatMul:product:03rnn__decoder_2/dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2#
!rnn__decoder_2/dense_12/TensordotÕ
.rnn__decoder_2/dense_12/BiasAdd/ReadVariableOpReadVariableOp7rnn__decoder_2_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.rnn__decoder_2/dense_12/BiasAdd/ReadVariableOpč
rnn__decoder_2/dense_12/BiasAddBiasAdd*rnn__decoder_2/dense_12/Tensordot:output:06rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2!
rnn__decoder_2/dense_12/BiasAdd
rnn__decoder_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
rnn__decoder_2/Reshape/shapeæ
rnn__decoder_2/ReshapeReshape(rnn__decoder_2/dense_12/BiasAdd:output:0%rnn__decoder_2/Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
rnn__decoder_2/Reshape×
-rnn__decoder_2/dense_13/MatMul/ReadVariableOpReadVariableOp6rnn__decoder_2_dense_13_matmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02/
-rnn__decoder_2/dense_13/MatMul/ReadVariableOpÕ
rnn__decoder_2/dense_13/MatMulMatMulrnn__decoder_2/Reshape:output:05rnn__decoder_2/dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2 
rnn__decoder_2/dense_13/MatMulÕ
.rnn__decoder_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp7rnn__decoder_2_dense_13_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype020
.rnn__decoder_2/dense_13/BiasAdd/ReadVariableOpā
rnn__decoder_2/dense_13/BiasAddBiasAdd(rnn__decoder_2/dense_13/MatMul:product:06rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2!
rnn__decoder_2/dense_13/BiasAddé
IdentityIdentity(rnn__decoder_2/dense_13/BiasAdd:output:0D^rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp1^rnn__decoder_2/dense_12/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp.^rnn__decoder_2/dense_13/MatMul/ReadVariableOp;^rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp6^rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp8^rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp/^rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp^rnn__decoder_2/gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityč

Identity_1Identity#rnn__decoder_2/gru_2/while:output:4D^rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp1^rnn__decoder_2/dense_12/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp.^rnn__decoder_2/dense_13/MatMul/ReadVariableOp;^rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp6^rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp8^rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp/^rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp^rnn__decoder_2/gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1ū

Identity_2Identity3rnn__decoder_2/bahdanau_attention_2/transpose_1:y:0D^rnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpD^rnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpF^rnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp1^rnn__decoder_2/dense_12/Tensordot/ReadVariableOp/^rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp.^rnn__decoder_2/dense_13/MatMul/ReadVariableOp;^rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp6^rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp8^rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp/^rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp^rnn__decoder_2/gru_2/while*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2
Crnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpCrnn__decoder_2/bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp2
Ernn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp2
Crnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpCrnn__decoder_2/bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp2
Ernn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp2
Crnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpCrnn__decoder_2/bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp2
Ernn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpErnn__decoder_2/bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp2`
.rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp.rnn__decoder_2/dense_12/BiasAdd/ReadVariableOp2d
0rnn__decoder_2/dense_12/Tensordot/ReadVariableOp0rnn__decoder_2/dense_12/Tensordot/ReadVariableOp2`
.rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp.rnn__decoder_2/dense_13/BiasAdd/ReadVariableOp2^
-rnn__decoder_2/dense_13/MatMul/ReadVariableOp-rnn__decoder_2/dense_13/MatMul/ReadVariableOp2x
:rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp:rnn__decoder_2/embedding_2/embedding_lookup/ReadVariableOp2n
5rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp5rnn__decoder_2/gru_2/gru_cell_2/MatMul/ReadVariableOp2r
7rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp7rnn__decoder_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp2`
.rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp.rnn__decoder_2/gru_2/gru_cell_2/ReadVariableOp28
rnn__decoder_2/gru_2/whilernn__decoder_2/gru_2/while:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_1:UQ
,
_output_shapes
:’’’’’’’’’@
!
_user_specified_name	input_2:QM
(
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_3
Š\
ä
A__inference_gru_2_layer_call_and_return_conditional_losses_822437

inputs&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_822346*
condR
while_cond_822345*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŌ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*,
_output_shapes
:’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü
ć
D__inference_dense_12_layer_call_and_return_conditional_losses_824949

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü÷
×
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823411
inputs_0
inputs_1
inputs_2C
?bahdanau_attention_2_dense_14_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_14_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_15_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_15_biasadd_readvariableop_resourceC
?bahdanau_attention_2_dense_16_tensordot_readvariableop_resourceA
=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource8
4embedding_2_embedding_lookup_readvariableop_resource,
(gru_2_gru_cell_2_readvariableop_resource3
/gru_2_gru_cell_2_matmul_readvariableop_resource5
1gru_2_gru_cell_2_matmul_1_readvariableop_resource.
*dense_12_tensordot_readvariableop_resource,
(dense_12_biasadd_readvariableop_resource+
'dense_13_matmul_readvariableop_resource,
(dense_13_biasadd_readvariableop_resource
identity

identity_1

identity_2¢4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¢4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp¢6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢!dense_12/Tensordot/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢+embedding_2/embedding_lookup/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢gru_2/while
#bahdanau_attention_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#bahdanau_attention_2/ExpandDims/dimæ
bahdanau_attention_2/ExpandDims
ExpandDimsinputs_2,bahdanau_attention_2/ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2!
bahdanau_attention_2/ExpandDimsņ
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_14_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_14/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_14/Tensordot/axes­
,bahdanau_attention_2/dense_14/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_14/Tensordot/free
-bahdanau_attention_2/dense_14/Tensordot/ShapeShapeinputs_1*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/Shape°
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_14/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/free:output:0>bahdanau_attention_2/dense_14/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/GatherV2“
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_14/Tensordot/Shape:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0@bahdanau_attention_2/dense_14/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_14/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_14/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_14/Tensordot/Constų
,bahdanau_attention_2/dense_14/Tensordot/ProdProd9bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_14/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_14/Tensordot/Prod¬
/bahdanau_attention_2/dense_14/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_14/Tensordot/Const_1
.bahdanau_attention_2/dense_14/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_14/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_14/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_14/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_14/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_14/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_14/Tensordot/concatConcatV25bahdanau_attention_2/dense_14/Tensordot/free:output:05bahdanau_attention_2/dense_14/Tensordot/axes:output:0<bahdanau_attention_2/dense_14/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_14/Tensordot/concat
-bahdanau_attention_2/dense_14/Tensordot/stackPack5bahdanau_attention_2/dense_14/Tensordot/Prod:output:07bahdanau_attention_2/dense_14/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_14/Tensordot/stackķ
1bahdanau_attention_2/dense_14/Tensordot/transpose	Transposeinputs_17bahdanau_attention_2/dense_14/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_14/Tensordot/transpose
/bahdanau_attention_2/dense_14/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_14/Tensordot/transpose:y:06bahdanau_attention_2/dense_14/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_14/Tensordot/Reshape
.bahdanau_attention_2/dense_14/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_14/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_14/Tensordot/MatMul­
/bahdanau_attention_2/dense_14/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_14/Tensordot/Const_2°
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_14/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_14/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_14/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_14/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_14/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_14/Tensordot/concat_1
'bahdanau_attention_2/dense_14/TensordotReshape8bahdanau_attention_2/dense_14/Tensordot/MatMul:product:09bahdanau_attention_2/dense_14/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_14/Tensordotē
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_14_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_14/BiasAddBiasAdd0bahdanau_attention_2/dense_14/Tensordot:output:0<bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_14/BiasAddņ
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_15_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype028
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_15/Tensordot/axes­
,bahdanau_attention_2/dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_15/Tensordot/free¶
-bahdanau_attention_2/dense_15/Tensordot/ShapeShape(bahdanau_attention_2/ExpandDims:output:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/Shape°
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_15/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/free:output:0>bahdanau_attention_2/dense_15/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/GatherV2“
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_15/Tensordot/Shape:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0@bahdanau_attention_2/dense_15/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_15/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_15/Tensordot/Constų
,bahdanau_attention_2/dense_15/Tensordot/ProdProd9bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_15/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_15/Tensordot/Prod¬
/bahdanau_attention_2/dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_15/Tensordot/Const_1
.bahdanau_attention_2/dense_15/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_15/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_15/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_15/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_15/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_15/Tensordot/concatConcatV25bahdanau_attention_2/dense_15/Tensordot/free:output:05bahdanau_attention_2/dense_15/Tensordot/axes:output:0<bahdanau_attention_2/dense_15/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_15/Tensordot/concat
-bahdanau_attention_2/dense_15/Tensordot/stackPack5bahdanau_attention_2/dense_15/Tensordot/Prod:output:07bahdanau_attention_2/dense_15/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_15/Tensordot/stack
1bahdanau_attention_2/dense_15/Tensordot/transpose	Transpose(bahdanau_attention_2/ExpandDims:output:07bahdanau_attention_2/dense_15/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’23
1bahdanau_attention_2/dense_15/Tensordot/transpose
/bahdanau_attention_2/dense_15/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_15/Tensordot/transpose:y:06bahdanau_attention_2/dense_15/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_15/Tensordot/Reshape
.bahdanau_attention_2/dense_15/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_15/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_15/Tensordot/MatMul­
/bahdanau_attention_2/dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_15/Tensordot/Const_2°
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_15/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_15/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_15/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_15/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_15/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_15/Tensordot/concat_1
'bahdanau_attention_2/dense_15/TensordotReshape8bahdanau_attention_2/dense_15/Tensordot/MatMul:product:09bahdanau_attention_2/dense_15/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2)
'bahdanau_attention_2/dense_15/Tensordotē
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_15_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp
%bahdanau_attention_2/dense_15/BiasAddBiasAdd0bahdanau_attention_2/dense_15/Tensordot:output:0<bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%bahdanau_attention_2/dense_15/BiasAddŌ
bahdanau_attention_2/addAddV2.bahdanau_attention_2/dense_14/BiasAdd:output:0.bahdanau_attention_2/dense_15/BiasAdd:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/add
bahdanau_attention_2/TanhTanhbahdanau_attention_2/add:z:0*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Tanhń
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOpReadVariableOp?bahdanau_attention_2_dense_16_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype028
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp¦
,bahdanau_attention_2/dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2.
,bahdanau_attention_2/dense_16/Tensordot/axes­
,bahdanau_attention_2/dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2.
,bahdanau_attention_2/dense_16/Tensordot/free«
-bahdanau_attention_2/dense_16/Tensordot/ShapeShapebahdanau_attention_2/Tanh:y:0*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/Shape°
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/GatherV2/axisē
0bahdanau_attention_2/dense_16/Tensordot/GatherV2GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/free:output:0>bahdanau_attention_2/dense_16/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/GatherV2“
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 29
7bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axisķ
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1GatherV26bahdanau_attention_2/dense_16/Tensordot/Shape:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0@bahdanau_attention_2/dense_16/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:24
2bahdanau_attention_2/dense_16/Tensordot/GatherV2_1Ø
-bahdanau_attention_2/dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2/
-bahdanau_attention_2/dense_16/Tensordot/Constų
,bahdanau_attention_2/dense_16/Tensordot/ProdProd9bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:06bahdanau_attention_2/dense_16/Tensordot/Const:output:0*
T0*
_output_shapes
: 2.
,bahdanau_attention_2/dense_16/Tensordot/Prod¬
/bahdanau_attention_2/dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/bahdanau_attention_2/dense_16/Tensordot/Const_1
.bahdanau_attention_2/dense_16/Tensordot/Prod_1Prod;bahdanau_attention_2/dense_16/Tensordot/GatherV2_1:output:08bahdanau_attention_2/dense_16/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 20
.bahdanau_attention_2/dense_16/Tensordot/Prod_1¬
3bahdanau_attention_2/dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 25
3bahdanau_attention_2/dense_16/Tensordot/concat/axisĘ
.bahdanau_attention_2/dense_16/Tensordot/concatConcatV25bahdanau_attention_2/dense_16/Tensordot/free:output:05bahdanau_attention_2/dense_16/Tensordot/axes:output:0<bahdanau_attention_2/dense_16/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:20
.bahdanau_attention_2/dense_16/Tensordot/concat
-bahdanau_attention_2/dense_16/Tensordot/stackPack5bahdanau_attention_2/dense_16/Tensordot/Prod:output:07bahdanau_attention_2/dense_16/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2/
-bahdanau_attention_2/dense_16/Tensordot/stack
1bahdanau_attention_2/dense_16/Tensordot/transpose	Transposebahdanau_attention_2/Tanh:y:07bahdanau_attention_2/dense_16/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@23
1bahdanau_attention_2/dense_16/Tensordot/transpose
/bahdanau_attention_2/dense_16/Tensordot/ReshapeReshape5bahdanau_attention_2/dense_16/Tensordot/transpose:y:06bahdanau_attention_2/dense_16/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’21
/bahdanau_attention_2/dense_16/Tensordot/Reshape
.bahdanau_attention_2/dense_16/Tensordot/MatMulMatMul8bahdanau_attention_2/dense_16/Tensordot/Reshape:output:0>bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’20
.bahdanau_attention_2/dense_16/Tensordot/MatMul¬
/bahdanau_attention_2/dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:21
/bahdanau_attention_2/dense_16/Tensordot/Const_2°
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5bahdanau_attention_2/dense_16/Tensordot/concat_1/axisÓ
0bahdanau_attention_2/dense_16/Tensordot/concat_1ConcatV29bahdanau_attention_2/dense_16/Tensordot/GatherV2:output:08bahdanau_attention_2/dense_16/Tensordot/Const_2:output:0>bahdanau_attention_2/dense_16/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:22
0bahdanau_attention_2/dense_16/Tensordot/concat_1
'bahdanau_attention_2/dense_16/TensordotReshape8bahdanau_attention_2/dense_16/Tensordot/MatMul:product:09bahdanau_attention_2/dense_16/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2)
'bahdanau_attention_2/dense_16/Tensordotę
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp=bahdanau_attention_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype026
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp’
%bahdanau_attention_2/dense_16/BiasAddBiasAdd0bahdanau_attention_2/dense_16/Tensordot:output:0<bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2'
%bahdanau_attention_2/dense_16/BiasAddx
bahdanau_attention_2/RankConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank|
bahdanau_attention_2/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Rank_1z
bahdanau_attention_2/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub/y§
bahdanau_attention_2/SubSub$bahdanau_attention_2/Rank_1:output:0#bahdanau_attention_2/Sub/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub
 bahdanau_attention_2/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/range/start
 bahdanau_attention_2/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/limit
 bahdanau_attention_2/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 bahdanau_attention_2/range/deltaŽ
bahdanau_attention_2/rangeRange)bahdanau_attention_2/range/start:output:0)bahdanau_attention_2/range/limit:output:0)bahdanau_attention_2/range/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range
"bahdanau_attention_2/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/start
"bahdanau_attention_2/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_1/delta×
bahdanau_attention_2/range_1Range+bahdanau_attention_2/range_1/start:output:0bahdanau_attention_2/Sub:z:0+bahdanau_attention_2/range_1/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_1 
$bahdanau_attention_2/concat/values_1Packbahdanau_attention_2/Sub:z:0*
N*
T0*
_output_shapes
:2&
$bahdanau_attention_2/concat/values_1
$bahdanau_attention_2/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$bahdanau_attention_2/concat/values_3
 bahdanau_attention_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 bahdanau_attention_2/concat/axisÉ
bahdanau_attention_2/concatConcatV2#bahdanau_attention_2/range:output:0-bahdanau_attention_2/concat/values_1:output:0%bahdanau_attention_2/range_1:output:0-bahdanau_attention_2/concat/values_3:output:0)bahdanau_attention_2/concat/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concatŁ
bahdanau_attention_2/transpose	Transpose.bahdanau_attention_2/dense_16/BiasAdd:output:0$bahdanau_attention_2/concat:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2 
bahdanau_attention_2/transpose”
bahdanau_attention_2/SoftmaxSoftmax"bahdanau_attention_2/transpose:y:0*
T0*+
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/Softmax~
bahdanau_attention_2/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
bahdanau_attention_2/Sub_1/y­
bahdanau_attention_2/Sub_1Sub$bahdanau_attention_2/Rank_1:output:0%bahdanau_attention_2/Sub_1/y:output:0*
T0*
_output_shapes
: 2
bahdanau_attention_2/Sub_1
"bahdanau_attention_2/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/range_2/start
"bahdanau_attention_2/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/limit
"bahdanau_attention_2/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_2/deltač
bahdanau_attention_2/range_2Range+bahdanau_attention_2/range_2/start:output:0+bahdanau_attention_2/range_2/limit:output:0+bahdanau_attention_2/range_2/delta:output:0*
_output_shapes
:2
bahdanau_attention_2/range_2
"bahdanau_attention_2/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/start
"bahdanau_attention_2/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2$
"bahdanau_attention_2/range_3/deltaŁ
bahdanau_attention_2/range_3Range+bahdanau_attention_2/range_3/start:output:0bahdanau_attention_2/Sub_1:z:0+bahdanau_attention_2/range_3/delta:output:0*
_output_shapes
: 2
bahdanau_attention_2/range_3¦
&bahdanau_attention_2/concat_1/values_1Packbahdanau_attention_2/Sub_1:z:0*
N*
T0*
_output_shapes
:2(
&bahdanau_attention_2/concat_1/values_1
&bahdanau_attention_2/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2(
&bahdanau_attention_2/concat_1/values_3
"bahdanau_attention_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"bahdanau_attention_2/concat_1/axisÕ
bahdanau_attention_2/concat_1ConcatV2%bahdanau_attention_2/range_2:output:0/bahdanau_attention_2/concat_1/values_1:output:0%bahdanau_attention_2/range_3:output:0/bahdanau_attention_2/concat_1/values_3:output:0+bahdanau_attention_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
bahdanau_attention_2/concat_1×
 bahdanau_attention_2/transpose_1	Transpose&bahdanau_attention_2/Softmax:softmax:0&bahdanau_attention_2/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2"
 bahdanau_attention_2/transpose_1¢
bahdanau_attention_2/mulMul$bahdanau_attention_2/transpose_1:y:0inputs_1*
T0*,
_output_shapes
:’’’’’’’’’@2
bahdanau_attention_2/mul
*bahdanau_attention_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*bahdanau_attention_2/Sum/reduction_indicesĮ
bahdanau_attention_2/SumSumbahdanau_attention_2/mul:z:03bahdanau_attention_2/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
bahdanau_attention_2/SumŃ
+embedding_2/embedding_lookup/ReadVariableOpReadVariableOp4embedding_2_embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02-
+embedding_2/embedding_lookup/ReadVariableOpČ
!embedding_2/embedding_lookup/axisConst*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2#
!embedding_2/embedding_lookup/axisĶ
embedding_2/embedding_lookupGatherV23embedding_2/embedding_lookup/ReadVariableOp:value:0inputs_0*embedding_2/embedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*>
_class4
20loc:@embedding_2/embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_2/embedding_lookupø
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2'
%embedding_2/embedding_lookup/Identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDims!bahdanau_attention_2/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:’’’’’’’’’2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
concat/axis·
concatConcatV2ExpandDims:output:0.embedding_2/embedding_lookup/Identity:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:’’’’’’’’’2
concatY
gru_2/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slicei
gru_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/mul/y
gru_2/zeros/mulMulgru_2/strided_slice:output:0gru_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/mulk
gru_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
gru_2/zeros/Less/y
gru_2/zeros/LessLessgru_2/zeros/mul:z:0gru_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_2/zeros/Lesso
gru_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
gru_2/zeros/packed/1
gru_2/zeros/packedPackgru_2/strided_slice:output:0gru_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_2/zeros/packedk
gru_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/zeros/Const
gru_2/zerosFillgru_2/zeros/packed:output:0gru_2/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/zeros
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm
gru_2/transpose	Transposeconcat:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transposea
gru_2/Shape_1Shapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape_1
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/Shape_1:output:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice_1
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2#
!gru_2/TensorArrayV2/element_shapeŹ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ė
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2”
gru_2/strided_slice_2StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_2¬
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_2/gru_cell_2/unstackĀ
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOpæ
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_2:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMulø
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAddr
gru_2/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/gru_cell_2/Const
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 gru_2/gru_cell_2/split/split_dimó
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/splitČ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp»
gru_2/gru_cell_2/MatMul_1MatMulgru_2/zeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/MatMul_1¾
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/BiasAdd_1
gru_2/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_2/gru_cell_2/Const_1
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"gru_2/gru_cell_2/split_1/split_dim«
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0!gru_2/gru_cell_2/Const_1:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_2/gru_cell_2/split_1¬
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid°
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Sigmoid_1©
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul§
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_2
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/Tanh
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0gru_2/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x„
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/mul_2¤
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2%
#gru_2/TensorArrayV2_1/element_shapeŠ
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterż
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/zeros:output:0gru_2/strided_slice_1:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_2_while_body_823285*#
condR
gru_2_while_cond_823284*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
gru_2/whileĮ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
gru_2/strided_slice_3/stack
gru_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_3/stack_1
gru_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_3/stack_2æ
gru_2/strided_slice_3StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_3/stack:output:0&gru_2/strided_slice_3/stack_1:output:0&gru_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
gru_2/strided_slice_3
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime³
!dense_12/Tensordot/ReadVariableOpReadVariableOp*dense_12_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!dense_12/Tensordot/ReadVariableOp|
dense_12/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/axes
dense_12/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_12/Tensordot/freey
dense_12/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:2
dense_12/Tensordot/Shape
 dense_12/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/GatherV2/axisž
dense_12/Tensordot/GatherV2GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/free:output:0)dense_12/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2
"dense_12/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_12/Tensordot/GatherV2_1/axis
dense_12/Tensordot/GatherV2_1GatherV2!dense_12/Tensordot/Shape:output:0 dense_12/Tensordot/axes:output:0+dense_12/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_12/Tensordot/GatherV2_1~
dense_12/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const¤
dense_12/Tensordot/ProdProd$dense_12/Tensordot/GatherV2:output:0!dense_12/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod
dense_12/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_12/Tensordot/Const_1¬
dense_12/Tensordot/Prod_1Prod&dense_12/Tensordot/GatherV2_1:output:0#dense_12/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_12/Tensordot/Prod_1
dense_12/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_12/Tensordot/concat/axisŻ
dense_12/Tensordot/concatConcatV2 dense_12/Tensordot/free:output:0 dense_12/Tensordot/axes:output:0'dense_12/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat°
dense_12/Tensordot/stackPack dense_12/Tensordot/Prod:output:0"dense_12/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/stack»
dense_12/Tensordot/transpose	Transposegru_2/transpose_1:y:0"dense_12/Tensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/transposeĆ
dense_12/Tensordot/ReshapeReshape dense_12/Tensordot/transpose:y:0!dense_12/Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
dense_12/Tensordot/ReshapeĆ
dense_12/Tensordot/MatMulMatMul#dense_12/Tensordot/Reshape:output:0)dense_12/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
dense_12/Tensordot/MatMul
dense_12/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_12/Tensordot/Const_2
 dense_12/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_12/Tensordot/concat_1/axisź
dense_12/Tensordot/concat_1ConcatV2$dense_12/Tensordot/GatherV2:output:0#dense_12/Tensordot/Const_2:output:0)dense_12/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_12/Tensordot/concat_1µ
dense_12/TensordotReshape#dense_12/Tensordot/MatMul:product:0$dense_12/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/TensordotØ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_12/BiasAdd/ReadVariableOp¬
dense_12/BiasAddBiasAdddense_12/Tensordot:output:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’2
dense_12/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Reshape/shape
ReshapeReshapedense_12/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
ReshapeŖ
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02 
dense_13/MatMul/ReadVariableOp
dense_13/MatMulMatMulReshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/MatMulØ
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02!
dense_13/BiasAdd/ReadVariableOp¦
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
dense_13/BiasAddł
IdentityIdentitydense_13/BiasAdd:output:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’'2

Identityų

Identity_1Identitygru_2/while:output:45^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity$bahdanau_attention_2/transpose_1:y:05^bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp5^bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp7^bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp"^dense_12/Tensordot/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp,^embedding_2/embedding_lookup/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::2l
4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_14/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_14/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_15/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_15/Tensordot/ReadVariableOp2l
4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp4bahdanau_attention_2/dense_16/BiasAdd/ReadVariableOp2p
6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp6bahdanau_attention_2/dense_16/Tensordot/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2F
!dense_12/Tensordot/ReadVariableOp!dense_12/Tensordot/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Z
+embedding_2/embedding_lookup/ReadVariableOp+embedding_2/embedding_lookup/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:Q M
'
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:’’’’’’’’’@
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/2
Ņ
Ŗ
while_cond_824641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_824641___redundant_placeholder04
0while_while_cond_824641___redundant_placeholder14
0while_while_cond_824641___redundant_placeholder24
0while_while_cond_824641___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
	
Ż
D__inference_dense_13_layer_call_and_return_conditional_losses_822530

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
'*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:'*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’'2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity"
identityIdentity:output:0*/
_input_shapes
:’’’’’’’’’::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü
ć
D__inference_dense_14_layer_call_and_return_conditional_losses_821906

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:’’’’’’’’’@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
Š\
ä
A__inference_gru_2_layer_call_and_return_conditional_losses_824733

inputs&
"gru_cell_2_readvariableop_resource-
)gru_cell_2_matmul_readvariableop_resource/
+gru_cell_2_matmul_1_readvariableop_resource
identity

identity_1¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2ā
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :č2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ī
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2æ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeų
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ż
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_2
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_2/unstack°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp§
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul 
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAddf
gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_2/Const
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split/split_dimŪ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split¶
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp£
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/MatMul_1¦
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/BiasAdd_1}
gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
gru_cell_2/Const_1
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
gru_cell_2/split_1/split_dim
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const_1:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/addz
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_1
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Sigmoid_1
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_2s
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/Tanh
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/sub
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
TensorArrayV2_1/element_shapeø
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter©
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_824642*
condR
while_cond_824641*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeŌ
IdentityIdentitytranspose_1:y:0!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*,
_output_shapes
:’’’’’’’’’2

IdentityÓ

Identity_1Identitywhile:output:4!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*7
_input_shapes&
$:’’’’’’’’’:::2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ó
~
)__inference_dense_14_layer_call_fn_825124

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_8219062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs
G
„
while_body_822346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
*while_gru_cell_2_readvariableop_resource_05
1while_gru_cell_2_matmul_readvariableop_resource_07
3while_gru_cell_2_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
(while_gru_cell_2_readvariableop_resource3
/while_gru_cell_2_matmul_readvariableop_resource5
1while_gru_cell_2_matmul_1_readvariableop_resource¢&while/gru_cell_2/MatMul/ReadVariableOp¢(while/gru_cell_2/MatMul_1/ReadVariableOp¢while/gru_cell_2/ReadVariableOpĆ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeŌ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem®
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype02!
while/gru_cell_2/ReadVariableOp
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_2/unstackÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpŃ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMulø
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAddr
while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_2/Const
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2"
 while/gru_cell_2/split/split_dimó
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/splitŹ
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/gru_cell_2/MatMul_1/ReadVariableOpŗ
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/MatMul_1¾
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/BiasAdd_1
while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2
while/gru_cell_2/Const_1
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2$
"while/gru_cell_2/split_1/split_dim«
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0!while/gru_cell_2/Const_1:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
while/gru_cell_2/split_1¬
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid°
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Sigmoid_1©
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul§
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_2
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x„
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/mul_2¤
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
while/gru_cell_2/add_3Ž
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ō
while/IdentityIdentitywhile/add_1:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityē
while/Identity_1Identitywhile_while_maximum_iterations'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Ö
while/Identity_2Identitywhile/add:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3õ
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2
while/Identity_4"h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ų
«
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_821411

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split/split_dimÆ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split_1/split_dimÖ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tanh]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:’’’’’’’’’2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_3”
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity„

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
¹

¶
G__inference_embedding_2_layer_call_and_return_conditional_losses_824220

inputs,
(embedding_lookup_readvariableop_resource
identity¢embedding_lookup/ReadVariableOp­
embedding_lookup/ReadVariableOpReadVariableOp(embedding_lookup_readvariableop_resource* 
_output_shapes
:
'*
dtype02!
embedding_lookup/ReadVariableOp¤
embedding_lookup/axisConst*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*
_output_shapes
: *
dtype0*
value	B : 2
embedding_lookup/axis
embedding_lookupGatherV2'embedding_lookup/ReadVariableOp:value:0inputsembedding_lookup/axis:output:0*
Taxis0*
Tindices0*
Tparams0*2
_class(
&$loc:@embedding_lookup/ReadVariableOp*,
_output_shapes
:’’’’’’’’’2
embedding_lookup
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:’’’’’’’’’2
embedding_lookup/Identity
IdentityIdentity"embedding_lookup/Identity:output:0 ^embedding_lookup/ReadVariableOp*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0**
_input_shapes
:’’’’’’’’’:2B
embedding_lookup/ReadVariableOpembedding_lookup/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ē
ł
/__inference_rnn__decoder_2_layer_call_fn_823450
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity

identity_1

identity_2¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:’’’’’’’’’':’’’’’’’’’:’’’’’’’’’@*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_8226522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’'2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*
_input_shapesy
w:’’’’’’’’’:’’’’’’’’’@:’’’’’’’’’::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:’’’’’’’’’@
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
inputs/2
Ļ
r
,__inference_embedding_2_layer_call_fn_824227

inputs
unknown
identity¢StatefulPartitionedCallņ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:’’’’’’’’’*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_8221022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0**
_input_shapes
:’’’’’’’’’:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ņ
Ŗ
while_cond_821671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_821671___redundant_placeholder04
0while_while_cond_821671___redundant_placeholder14
0while_while_cond_821671___redundant_placeholder24
0while_while_cond_821671___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ą
­
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825057

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split/split_dimÆ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’2
split_1/split_dimÖ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
Tanh_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2
add_3”
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity„

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*G
_input_shapes6
4:’’’’’’’’’:’’’’’’’’’:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
½,
ł
__inference__traced_save_825271
file_prefixD
@savev2_rnn__decoder_2_embedding_2_embeddings_read_readvariableop=
9savev2_rnn__decoder_2_dense_12_kernel_read_readvariableop;
7savev2_rnn__decoder_2_dense_12_bias_read_readvariableop=
9savev2_rnn__decoder_2_dense_13_kernel_read_readvariableop;
7savev2_rnn__decoder_2_dense_13_bias_read_readvariableopE
Asavev2_rnn__decoder_2_gru_2_gru_cell_2_kernel_read_readvariableopO
Ksavev2_rnn__decoder_2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableopC
?savev2_rnn__decoder_2_gru_2_gru_cell_2_bias_read_readvariableopR
Nsavev2_rnn__decoder_2_bahdanau_attention_2_dense_14_kernel_read_readvariableopP
Lsavev2_rnn__decoder_2_bahdanau_attention_2_dense_14_bias_read_readvariableopR
Nsavev2_rnn__decoder_2_bahdanau_attention_2_dense_15_kernel_read_readvariableopP
Lsavev2_rnn__decoder_2_bahdanau_attention_2_dense_15_bias_read_readvariableopR
Nsavev2_rnn__decoder_2_bahdanau_attention_2_dense_16_kernel_read_readvariableopP
Lsavev2_rnn__decoder_2_bahdanau_attention_2_dense_16_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÖ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*č
valueŽBŪB/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¦
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_rnn__decoder_2_embedding_2_embeddings_read_readvariableop9savev2_rnn__decoder_2_dense_12_kernel_read_readvariableop7savev2_rnn__decoder_2_dense_12_bias_read_readvariableop9savev2_rnn__decoder_2_dense_13_kernel_read_readvariableop7savev2_rnn__decoder_2_dense_13_bias_read_readvariableopAsavev2_rnn__decoder_2_gru_2_gru_cell_2_kernel_read_readvariableopKsavev2_rnn__decoder_2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop?savev2_rnn__decoder_2_gru_2_gru_cell_2_bias_read_readvariableopNsavev2_rnn__decoder_2_bahdanau_attention_2_dense_14_kernel_read_readvariableopLsavev2_rnn__decoder_2_bahdanau_attention_2_dense_14_bias_read_readvariableopNsavev2_rnn__decoder_2_bahdanau_attention_2_dense_15_kernel_read_readvariableopLsavev2_rnn__decoder_2_bahdanau_attention_2_dense_15_bias_read_readvariableopNsavev2_rnn__decoder_2_bahdanau_attention_2_dense_16_kernel_read_readvariableopLsavev2_rnn__decoder_2_bahdanau_attention_2_dense_16_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2ŗ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes”
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*„
_input_shapes
: :
':
::
':':
:
:	:
::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
':&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
':!

_output_shapes	
:':&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:%!

_output_shapes
:	:&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 
ęh

&rnn__decoder_2_gru_2_while_body_821173F
Brnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_loop_counterL
Hrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_maximum_iterations*
&rnn__decoder_2_gru_2_while_placeholder,
(rnn__decoder_2_gru_2_while_placeholder_1,
(rnn__decoder_2_gru_2_while_placeholder_2E
Arnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_strided_slice_1_0
}rnn__decoder_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_rnn__decoder_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0C
?rnn__decoder_2_gru_2_while_gru_cell_2_readvariableop_resource_0J
Frnn__decoder_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0L
Hrnn__decoder_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0'
#rnn__decoder_2_gru_2_while_identity)
%rnn__decoder_2_gru_2_while_identity_1)
%rnn__decoder_2_gru_2_while_identity_2)
%rnn__decoder_2_gru_2_while_identity_3)
%rnn__decoder_2_gru_2_while_identity_4C
?rnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_strided_slice_1
{rnn__decoder_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_rnn__decoder_2_gru_2_tensorarrayunstack_tensorlistfromtensorA
=rnn__decoder_2_gru_2_while_gru_cell_2_readvariableop_resourceH
Drnn__decoder_2_gru_2_while_gru_cell_2_matmul_readvariableop_resourceJ
Frnn__decoder_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource¢;rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢=rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp¢4rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOpķ
Lrnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2N
Lrnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeŅ
>rnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}rnn__decoder_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_rnn__decoder_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0&rnn__decoder_2_gru_2_while_placeholderUrnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:’’’’’’’’’*
element_dtype02@
>rnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItemķ
4rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp?rnn__decoder_2_gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	*
dtype026
4rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOpŽ
-rnn__decoder_2/gru_2/while/gru_cell_2/unstackUnpack<rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2/
-rnn__decoder_2/gru_2/while/gru_cell_2/unstack
;rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOpFrnn__decoder_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02=
;rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp„
,rnn__decoder_2/gru_2/while/gru_cell_2/MatMulMatMulErnn__decoder_2/gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0Crnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’2.
,rnn__decoder_2/gru_2/while/gru_cell_2/MatMul
-rnn__decoder_2/gru_2/while/gru_cell_2/BiasAddBiasAdd6rnn__decoder_2/gru_2/while/gru_cell_2/MatMul:product:06rnn__decoder_2/gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’2/
-rnn__decoder_2/gru_2/while/gru_cell_2/BiasAdd
+rnn__decoder_2/gru_2/while/gru_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+rnn__decoder_2/gru_2/while/gru_cell_2/Const¹
5rnn__decoder_2/gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’27
5rnn__decoder_2/gru_2/while/gru_cell_2/split/split_dimĒ
+rnn__decoder_2/gru_2/while/gru_cell_2/splitSplit>rnn__decoder_2/gru_2/while/gru_cell_2/split/split_dim:output:06rnn__decoder_2/gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2-
+rnn__decoder_2/gru_2/while/gru_cell_2/split
=rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOpHrnn__decoder_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02?
=rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp
.rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1MatMul(rnn__decoder_2_gru_2_while_placeholder_2Ernn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’20
.rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1
/rnn__decoder_2/gru_2/while/gru_cell_2/BiasAdd_1BiasAdd8rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1:product:06rnn__decoder_2/gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’21
/rnn__decoder_2/gru_2/while/gru_cell_2/BiasAdd_1³
-rnn__decoder_2/gru_2/while/gru_cell_2/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"      ’’’’2/
-rnn__decoder_2/gru_2/while/gru_cell_2/Const_1½
7rnn__decoder_2/gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’29
7rnn__decoder_2/gru_2/while/gru_cell_2/split_1/split_dim
-rnn__decoder_2/gru_2/while/gru_cell_2/split_1SplitV8rnn__decoder_2/gru_2/while/gru_cell_2/BiasAdd_1:output:06rnn__decoder_2/gru_2/while/gru_cell_2/Const_1:output:0@rnn__decoder_2/gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split2/
-rnn__decoder_2/gru_2/while/gru_cell_2/split_1
)rnn__decoder_2/gru_2/while/gru_cell_2/addAddV24rnn__decoder_2/gru_2/while/gru_cell_2/split:output:06rnn__decoder_2/gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’2+
)rnn__decoder_2/gru_2/while/gru_cell_2/addĖ
-rnn__decoder_2/gru_2/while/gru_cell_2/SigmoidSigmoid-rnn__decoder_2/gru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’2/
-rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid
+rnn__decoder_2/gru_2/while/gru_cell_2/add_1AddV24rnn__decoder_2/gru_2/while/gru_cell_2/split:output:16rnn__decoder_2/gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/gru_2/while/gru_cell_2/add_1Ń
/rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid_1Sigmoid/rnn__decoder_2/gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’21
/rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid_1ż
)rnn__decoder_2/gru_2/while/gru_cell_2/mulMul3rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid_1:y:06rnn__decoder_2/gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’2+
)rnn__decoder_2/gru_2/while/gru_cell_2/mulū
+rnn__decoder_2/gru_2/while/gru_cell_2/add_2AddV24rnn__decoder_2/gru_2/while/gru_cell_2/split:output:2-rnn__decoder_2/gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/gru_2/while/gru_cell_2/add_2Ä
*rnn__decoder_2/gru_2/while/gru_cell_2/TanhTanh/rnn__decoder_2/gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2,
*rnn__decoder_2/gru_2/while/gru_cell_2/Tanhń
+rnn__decoder_2/gru_2/while/gru_cell_2/mul_1Mul1rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid:y:0(rnn__decoder_2_gru_2_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/gru_2/while/gru_cell_2/mul_1
+rnn__decoder_2/gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+rnn__decoder_2/gru_2/while/gru_cell_2/sub/xł
)rnn__decoder_2/gru_2/while/gru_cell_2/subSub4rnn__decoder_2/gru_2/while/gru_cell_2/sub/x:output:01rnn__decoder_2/gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’2+
)rnn__decoder_2/gru_2/while/gru_cell_2/subó
+rnn__decoder_2/gru_2/while/gru_cell_2/mul_2Mul-rnn__decoder_2/gru_2/while/gru_cell_2/sub:z:0.rnn__decoder_2/gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/gru_2/while/gru_cell_2/mul_2ų
+rnn__decoder_2/gru_2/while/gru_cell_2/add_3AddV2/rnn__decoder_2/gru_2/while/gru_cell_2/mul_1:z:0/rnn__decoder_2/gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’2-
+rnn__decoder_2/gru_2/while/gru_cell_2/add_3Ē
?rnn__decoder_2/gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(rnn__decoder_2_gru_2_while_placeholder_1&rnn__decoder_2_gru_2_while_placeholder/rnn__decoder_2/gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02A
?rnn__decoder_2/gru_2/while/TensorArrayV2Write/TensorListSetItem
 rnn__decoder_2/gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 rnn__decoder_2/gru_2/while/add/y½
rnn__decoder_2/gru_2/while/addAddV2&rnn__decoder_2_gru_2_while_placeholder)rnn__decoder_2/gru_2/while/add/y:output:0*
T0*
_output_shapes
: 2 
rnn__decoder_2/gru_2/while/add
"rnn__decoder_2/gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"rnn__decoder_2/gru_2/while/add_1/yß
 rnn__decoder_2/gru_2/while/add_1AddV2Brnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_loop_counter+rnn__decoder_2/gru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 rnn__decoder_2/gru_2/while/add_1Ņ
#rnn__decoder_2/gru_2/while/IdentityIdentity$rnn__decoder_2/gru_2/while/add_1:z:0<^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp>^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp5^rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#rnn__decoder_2/gru_2/while/Identityś
%rnn__decoder_2/gru_2/while/Identity_1IdentityHrnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_while_maximum_iterations<^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp>^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp5^rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2'
%rnn__decoder_2/gru_2/while/Identity_1Ō
%rnn__decoder_2/gru_2/while/Identity_2Identity"rnn__decoder_2/gru_2/while/add:z:0<^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp>^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp5^rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2'
%rnn__decoder_2/gru_2/while/Identity_2
%rnn__decoder_2/gru_2/while/Identity_3IdentityOrnn__decoder_2/gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0<^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp>^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp5^rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp*
T0*
_output_shapes
: 2'
%rnn__decoder_2/gru_2/while/Identity_3ó
%rnn__decoder_2/gru_2/while/Identity_4Identity/rnn__decoder_2/gru_2/while/gru_cell_2/add_3:z:0<^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp>^rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp5^rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’2'
%rnn__decoder_2/gru_2/while/Identity_4"
Frnn__decoder_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resourceHrnn__decoder_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"
Drnn__decoder_2_gru_2_while_gru_cell_2_matmul_readvariableop_resourceFrnn__decoder_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"
=rnn__decoder_2_gru_2_while_gru_cell_2_readvariableop_resource?rnn__decoder_2_gru_2_while_gru_cell_2_readvariableop_resource_0"S
#rnn__decoder_2_gru_2_while_identity,rnn__decoder_2/gru_2/while/Identity:output:0"W
%rnn__decoder_2_gru_2_while_identity_1.rnn__decoder_2/gru_2/while/Identity_1:output:0"W
%rnn__decoder_2_gru_2_while_identity_2.rnn__decoder_2/gru_2/while/Identity_2:output:0"W
%rnn__decoder_2_gru_2_while_identity_3.rnn__decoder_2/gru_2/while/Identity_3:output:0"W
%rnn__decoder_2_gru_2_while_identity_4.rnn__decoder_2/gru_2/while/Identity_4:output:0"
?rnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_strided_slice_1Arnn__decoder_2_gru_2_while_rnn__decoder_2_gru_2_strided_slice_1_0"ü
{rnn__decoder_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_rnn__decoder_2_gru_2_tensorarrayunstack_tensorlistfromtensor}rnn__decoder_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_rnn__decoder_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0*?
_input_shapes.
,: : : : :’’’’’’’’’: : :::2z
;rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp;rnn__decoder_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp2~
=rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp=rnn__decoder_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2l
4rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp4rnn__decoder_2/gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Õ
ć
D__inference_dense_16_layer_call_and_return_conditional_losses_825193

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisŃ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:’’’’’’’’’@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:’’’’’’’’’@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:’’’’’’’’’@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:’’’’’’’’’@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :’’’’’’’’’@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:’’’’’’’’’@
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*­
serving_default
;
input_10
serving_default_input_1:0’’’’’’’’’
@
input_25
serving_default_input_2:0’’’’’’’’’@
<
input_31
serving_default_input_3:0’’’’’’’’’=
output_11
StatefulPartitionedCall:0’’’’’’’’’'=
output_21
StatefulPartitionedCall:1’’’’’’’’’@
output_34
StatefulPartitionedCall:2’’’’’’’’’@tensorflow/serving/predict:ł
ū
	embedding
gru
fc1
fc2
	attention
regularization_losses
	variables
trainable_variables
		keras_api


signatures
u_default_save_signature
*v&call_and_return_all_conditional_losses
w__call__"
_tf_keras_modelģ{"class_name": "RNN_Decoder", "name": "rnn__decoder_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "RNN_Decoder"}}
¬

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
*x&call_and_return_all_conditional_losses
y__call__"
_tf_keras_layeró{"class_name": "Embedding", "name": "embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 5001, "output_dim": 256, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 1]}}
©
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
*z&call_and_return_all_conditional_losses
{__call__"

_tf_keras_rnn_layerā	{"class_name": "GRU", "name": "gru_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 512]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [64, 1, 512]}}
ų

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*|&call_and_return_all_conditional_losses
}__call__"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 1, 512]}}
ö

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
*~&call_and_return_all_conditional_losses
__call__"Ń
_tf_keras_layer·{"class_name": "Dense", "name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 5001, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 512]}}
Ą
"W1
#W2
$V
%regularization_losses
&	variables
'trainable_variables
(	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_modelž{"class_name": "BahdanauAttention", "name": "bahdanau_attention_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "BahdanauAttention"}}
 "
trackable_list_wrapper

0
)1
*2
+3
4
5
6
7
,8
-9
.10
/11
012
113"
trackable_list_wrapper

0
)1
*2
+3
4
5
6
7
,8
-9
.10
/11
012
113"
trackable_list_wrapper
Ź
regularization_losses

2layers
3layer_regularization_losses
	variables
4metrics
5layer_metrics
6non_trainable_variables
trainable_variables
w__call__
u_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
9:7
'2%rnn__decoder_2/embedding_2/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
regularization_losses

7layers
8layer_regularization_losses
	variables
9layer_metrics
:metrics
;non_trainable_variables
trainable_variables
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object


)kernel
*recurrent_kernel
+bias
<regularization_losses
=	variables
>trainable_variables
?	keras_api
+&call_and_return_all_conditional_losses
__call__"Ü
_tf_keras_layerĀ{"class_name": "GRUCell", "name": "gru_cell_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_2", "trainable": true, "dtype": "float32", "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
¹
regularization_losses

@states

Alayers
Blayer_regularization_losses
	variables
Cmetrics
Dlayer_metrics
Enon_trainable_variables
trainable_variables
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
2:0
2rnn__decoder_2/dense_12/kernel
+:)2rnn__decoder_2/dense_12/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses

Flayers
Glayer_regularization_losses
	variables
Hlayer_metrics
Imetrics
Jnon_trainable_variables
trainable_variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
2:0
'2rnn__decoder_2/dense_13/kernel
+:)'2rnn__decoder_2/dense_13/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses

Klayers
Llayer_regularization_losses
	variables
Mlayer_metrics
Nmetrics
Onon_trainable_variables
 trainable_variables
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
ū

,kernel
-bias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
+&call_and_return_all_conditional_losses
__call__"Ō
_tf_keras_layerŗ{"class_name": "Dense", "name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 64, 256]}}
ś

.kernel
/bias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
+&call_and_return_all_conditional_losses
__call__"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_15", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 1, 512]}}
ł

0kernel
1bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
+&call_and_return_all_conditional_losses
__call__"Ņ
_tf_keras_layerø{"class_name": "Dense", "name": "dense_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_16", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [64, 64, 512]}}
 "
trackable_list_wrapper
J
,0
-1
.2
/3
04
15"
trackable_list_wrapper
J
,0
-1
.2
/3
04
15"
trackable_list_wrapper
°
%regularization_losses

\layers
]layer_regularization_losses
&	variables
^metrics
_layer_metrics
`non_trainable_variables
'trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
::8
2&rnn__decoder_2/gru_2/gru_cell_2/kernel
D:B
20rnn__decoder_2/gru_2/gru_cell_2/recurrent_kernel
7:5	2$rnn__decoder_2/gru_2/gru_cell_2/bias
G:E
23rnn__decoder_2/bahdanau_attention_2/dense_14/kernel
@:>21rnn__decoder_2/bahdanau_attention_2/dense_14/bias
G:E
23rnn__decoder_2/bahdanau_attention_2/dense_15/kernel
@:>21rnn__decoder_2/bahdanau_attention_2/dense_15/bias
F:D	23rnn__decoder_2/bahdanau_attention_2/dense_16/kernel
?:=21rnn__decoder_2/bahdanau_attention_2/dense_16/bias
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
°
<regularization_losses

alayers
blayer_regularization_losses
=	variables
clayer_metrics
dmetrics
enon_trainable_variables
>trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
°
Pregularization_losses

flayers
glayer_regularization_losses
Q	variables
hlayer_metrics
imetrics
jnon_trainable_variables
Rtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
°
Tregularization_losses

klayers
llayer_regularization_losses
U	variables
mlayer_metrics
nmetrics
onon_trainable_variables
Vtrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
°
Xregularization_losses

players
qlayer_regularization_losses
Y	variables
rlayer_metrics
smetrics
tnon_trainable_variables
Ztrainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°2­
!__inference__wrapped_model_821299
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *w¢t
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
é2ę
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823811
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_824133
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823089
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823411³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ż2ś
/__inference_rnn__decoder_2_layer_call_fn_823450
/__inference_rnn__decoder_2_layer_call_fn_823489
/__inference_rnn__decoder_2_layer_call_fn_824172
/__inference_rnn__decoder_2_layer_call_fn_824211³
Ŗ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ń2ī
G__inference_embedding_2_layer_call_and_return_conditional_losses_824220¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ö2Ó
,__inference_embedding_2_layer_call_fn_824227¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ē2ä
A__inference_gru_2_layer_call_and_return_conditional_losses_824387
A__inference_gru_2_layer_call_and_return_conditional_losses_824893
A__inference_gru_2_layer_call_and_return_conditional_losses_824547
A__inference_gru_2_layer_call_and_return_conditional_losses_824733Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ū2ų
&__inference_gru_2_layer_call_fn_824919
&__inference_gru_2_layer_call_fn_824906
&__inference_gru_2_layer_call_fn_824573
&__inference_gru_2_layer_call_fn_824560Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ī2ė
D__inference_dense_12_layer_call_and_return_conditional_losses_824949¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_12_layer_call_fn_824958¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ī2ė
D__inference_dense_13_layer_call_and_return_conditional_losses_824968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_13_layer_call_fn_824977¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ģ2É
P__inference_bahdanau_attention_2_layer_call_and_return_conditional_losses_822052ō
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *T¢Q
OL
&#
input_1’’’’’’’’’@
"
input_2’’’’’’’’’
±2®
5__inference_bahdanau_attention_2_layer_call_fn_822073ō
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *T¢Q
OL
&#
input_1’’’’’’’’’@
"
input_2’’’’’’’’’
ŪBŲ
$__inference_signature_wrapper_822767input_1input_2input_3"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ō2Ń
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825017
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825057¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
2
+__inference_gru_cell_2_layer_call_fn_825071
+__inference_gru_cell_2_layer_call_fn_825085¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ī2ė
D__inference_dense_14_layer_call_and_return_conditional_losses_825115¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_14_layer_call_fn_825124¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ī2ė
D__inference_dense_15_layer_call_and_return_conditional_losses_825154¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_15_layer_call_fn_825163¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ī2ė
D__inference_dense_16_layer_call_and_return_conditional_losses_825193¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
)__inference_dense_16_layer_call_fn_825202¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ×
!__inference__wrapped_model_821299±,-./01+)*¢~
w¢t
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
Ŗ "Ŗ
/
output_1# 
output_1’’’’’’’’’'
/
output_2# 
output_2’’’’’’’’’
2
output_3&#
output_3’’’’’’’’’@
P__inference_bahdanau_attention_2_layer_call_and_return_conditional_losses_822052ŗ,-./01^¢[
T¢Q
OL
&#
input_1’’’’’’’’’@
"
input_2’’’’’’’’’
Ŗ "P¢M
F¢C

0/0’’’’’’’’’
!
0/1’’’’’’’’’@
 ę
5__inference_bahdanau_attention_2_layer_call_fn_822073¬,-./01^¢[
T¢Q
OL
&#
input_1’’’’’’’’’@
"
input_2’’’’’’’’’
Ŗ "B¢?

0’’’’’’’’’

1’’’’’’’’’@®
D__inference_dense_12_layer_call_and_return_conditional_losses_824949f4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "*¢'
 
0’’’’’’’’’
 
)__inference_dense_12_layer_call_fn_824958Y4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "’’’’’’’’’¦
D__inference_dense_13_layer_call_and_return_conditional_losses_824968^0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "&¢#

0’’’’’’’’’'
 ~
)__inference_dense_13_layer_call_fn_824977Q0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’'®
D__inference_dense_14_layer_call_and_return_conditional_losses_825115f,-4¢1
*¢'
%"
inputs’’’’’’’’’@
Ŗ "*¢'
 
0’’’’’’’’’@
 
)__inference_dense_14_layer_call_fn_825124Y,-4¢1
*¢'
%"
inputs’’’’’’’’’@
Ŗ "’’’’’’’’’@®
D__inference_dense_15_layer_call_and_return_conditional_losses_825154f./4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "*¢'
 
0’’’’’’’’’
 
)__inference_dense_15_layer_call_fn_825163Y./4¢1
*¢'
%"
inputs’’’’’’’’’
Ŗ "’’’’’’’’’­
D__inference_dense_16_layer_call_and_return_conditional_losses_825193e014¢1
*¢'
%"
inputs’’’’’’’’’@
Ŗ ")¢&

0’’’’’’’’’@
 
)__inference_dense_16_layer_call_fn_825202X014¢1
*¢'
%"
inputs’’’’’’’’’@
Ŗ "’’’’’’’’’@«
G__inference_embedding_2_layer_call_and_return_conditional_losses_824220`/¢,
%¢"
 
inputs’’’’’’’’’
Ŗ "*¢'
 
0’’’’’’’’’
 
,__inference_embedding_2_layer_call_fn_824227S/¢,
%¢"
 
inputs’’’’’’’’’
Ŗ "’’’’’’’’’ł
A__inference_gru_2_layer_call_and_return_conditional_losses_824387³+)*P¢M
F¢C
52
0-
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "Z¢W
PM
+(
0/0’’’’’’’’’’’’’’’’’’

0/1’’’’’’’’’
 ł
A__inference_gru_2_layer_call_and_return_conditional_losses_824547³+)*P¢M
F¢C
52
0-
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "Z¢W
PM
+(
0/0’’’’’’’’’’’’’’’’’’

0/1’’’’’’’’’
 ą
A__inference_gru_2_layer_call_and_return_conditional_losses_824733+)*@¢=
6¢3
%"
inputs’’’’’’’’’

 
p

 
Ŗ "Q¢N
GD
"
0/0’’’’’’’’’

0/1’’’’’’’’’
 ą
A__inference_gru_2_layer_call_and_return_conditional_losses_824893+)*@¢=
6¢3
%"
inputs’’’’’’’’’

 
p 

 
Ŗ "Q¢N
GD
"
0/0’’’’’’’’’

0/1’’’’’’’’’
 Š
&__inference_gru_2_layer_call_fn_824560„+)*P¢M
F¢C
52
0-
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "LI
)&
0’’’’’’’’’’’’’’’’’’

1’’’’’’’’’Š
&__inference_gru_2_layer_call_fn_824573„+)*P¢M
F¢C
52
0-
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "LI
)&
0’’’’’’’’’’’’’’’’’’

1’’’’’’’’’·
&__inference_gru_2_layer_call_fn_824906+)*@¢=
6¢3
%"
inputs’’’’’’’’’

 
p

 
Ŗ "C@
 
0’’’’’’’’’

1’’’’’’’’’·
&__inference_gru_2_layer_call_fn_824919+)*@¢=
6¢3
%"
inputs’’’’’’’’’

 
p 

 
Ŗ "C@
 
0’’’’’’’’’

1’’’’’’’’’
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825017»+)*^¢[
T¢Q
!
inputs’’’’’’’’’
(¢%
# 
states/0’’’’’’’’’
p
Ŗ "T¢Q
J¢G

0/0’’’’’’’’’
%"
 
0/1/0’’’’’’’’’
 
F__inference_gru_cell_2_layer_call_and_return_conditional_losses_825057»+)*^¢[
T¢Q
!
inputs’’’’’’’’’
(¢%
# 
states/0’’’’’’’’’
p 
Ŗ "T¢Q
J¢G

0/0’’’’’’’’’
%"
 
0/1/0’’’’’’’’’
 Ż
+__inference_gru_cell_2_layer_call_fn_825071­+)*^¢[
T¢Q
!
inputs’’’’’’’’’
(¢%
# 
states/0’’’’’’’’’
p
Ŗ "F¢C

0’’’’’’’’’
# 

1/0’’’’’’’’’Ż
+__inference_gru_cell_2_layer_call_fn_825085­+)*^¢[
T¢Q
!
inputs’’’’’’’’’
(¢%
# 
states/0’’’’’’’’’
p 
Ŗ "F¢C

0’’’’’’’’’
# 

1/0’’’’’’’’’Ż
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823089,-./01+)*¢
~¢{
ur
"
inputs/0’’’’’’’’’
'$
inputs/1’’’’’’’’’@
# 
inputs/2’’’’’’’’’
p
Ŗ "p¢m
f¢c

0/0’’’’’’’’’'

0/1’’’’’’’’’
!
0/2’’’’’’’’’@
 Ż
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823411,-./01+)*¢
~¢{
ur
"
inputs/0’’’’’’’’’
'$
inputs/1’’’’’’’’’@
# 
inputs/2’’’’’’’’’
p 
Ŗ "p¢m
f¢c

0/0’’’’’’’’’'

0/1’’’’’’’’’
!
0/2’’’’’’’’’@
 Ś
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_823811,-./01+)*¢
{¢x
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
p
Ŗ "p¢m
f¢c

0/0’’’’’’’’’'

0/1’’’’’’’’’
!
0/2’’’’’’’’’@
 Ś
J__inference_rnn__decoder_2_layer_call_and_return_conditional_losses_824133,-./01+)*¢
{¢x
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
p 
Ŗ "p¢m
f¢c

0/0’’’’’’’’’'

0/1’’’’’’’’’
!
0/2’’’’’’’’’@
 ²
/__inference_rnn__decoder_2_layer_call_fn_823450ž,-./01+)*¢
~¢{
ur
"
inputs/0’’’’’’’’’
'$
inputs/1’’’’’’’’’@
# 
inputs/2’’’’’’’’’
p
Ŗ "`¢]

0’’’’’’’’’'

1’’’’’’’’’

2’’’’’’’’’@²
/__inference_rnn__decoder_2_layer_call_fn_823489ž,-./01+)*¢
~¢{
ur
"
inputs/0’’’’’’’’’
'$
inputs/1’’’’’’’’’@
# 
inputs/2’’’’’’’’’
p 
Ŗ "`¢]

0’’’’’’’’’'

1’’’’’’’’’

2’’’’’’’’’@Æ
/__inference_rnn__decoder_2_layer_call_fn_824172ū,-./01+)*¢
{¢x
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
p
Ŗ "`¢]

0’’’’’’’’’'

1’’’’’’’’’

2’’’’’’’’’@Æ
/__inference_rnn__decoder_2_layer_call_fn_824211ū,-./01+)*¢
{¢x
ro
!
input_1’’’’’’’’’
&#
input_2’’’’’’’’’@
"
input_3’’’’’’’’’
p 
Ŗ "`¢]

0’’’’’’’’’'

1’’’’’’’’’

2’’’’’’’’’@ł
$__inference_signature_wrapper_822767Š,-./01+)* ¢
¢ 
Ŗ
,
input_1!
input_1’’’’’’’’’
1
input_2&#
input_2’’’’’’’’’@
-
input_3"
input_3’’’’’’’’’"Ŗ
/
output_1# 
output_1’’’’’’’’’'
/
output_2# 
output_2’’’’’’’’’
2
output_3&#
output_3’’’’’’’’’@