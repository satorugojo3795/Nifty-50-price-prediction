??&
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ў%
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_3/lstm_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namelstm_3/lstm_cell_6/kernel
?
-lstm_3/lstm_cell_6/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_6/kernel*
_output_shapes
:	?*
dtype0
?
#lstm_3/lstm_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_3/lstm_cell_6/recurrent_kernel
?
7lstm_3/lstm_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_3/lstm_cell_6/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_3/lstm_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_3/lstm_cell_6/bias
?
+lstm_3/lstm_cell_6/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell_6/bias*
_output_shapes	
:?*
dtype0
?
lstm_4/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namelstm_4/lstm_cell_7/kernel
?
-lstm_4/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_7/kernel* 
_output_shapes
:
??*
dtype0
?
#lstm_4/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#lstm_4/lstm_cell_7/recurrent_kernel
?
7lstm_4/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_4/lstm_cell_7/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_4/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namelstm_4/lstm_cell_7/bias
?
+lstm_4/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_7/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:*
dtype0
?
 Adam/lstm_3/lstm_cell_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_3/lstm_cell_6/kernel/m
?
4Adam/lstm_3/lstm_cell_6/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_6/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_3/lstm_cell_6/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_3/lstm_cell_6/recurrent_kernel/m
?
>Adam/lstm_3/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_6/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_3/lstm_cell_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_3/lstm_cell_6/bias/m
?
2Adam/lstm_3/lstm_cell_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_6/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_4/lstm_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_4/lstm_cell_7/kernel/m
?
4Adam/lstm_4/lstm_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_7/kernel/m* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_4/lstm_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_4/lstm_cell_7/recurrent_kernel/m
?
>Adam/lstm_4/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_7/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_4/lstm_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_4/lstm_cell_7/bias/m
?
2Adam/lstm_4/lstm_cell_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_7/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:*
dtype0
?
 Adam/lstm_3/lstm_cell_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/lstm_3/lstm_cell_6/kernel/v
?
4Adam/lstm_3/lstm_cell_6/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_3/lstm_cell_6/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/lstm_3/lstm_cell_6/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_3/lstm_cell_6/recurrent_kernel/v
?
>Adam/lstm_3/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_3/lstm_cell_6/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_3/lstm_cell_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_3/lstm_cell_6/bias/v
?
2Adam/lstm_3/lstm_cell_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_3/lstm_cell_6/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/lstm_4/lstm_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" Adam/lstm_4/lstm_cell_7/kernel/v
?
4Adam/lstm_4/lstm_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_4/lstm_cell_7/kernel/v* 
_output_shapes
:
??*
dtype0
?
*Adam/lstm_4/lstm_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/lstm_4/lstm_cell_7/recurrent_kernel/v
?
>Adam/lstm_4/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_4/lstm_cell_7/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/lstm_4/lstm_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/lstm_4/lstm_cell_7/bias/v
?
2Adam/lstm_4/lstm_cell_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_4/lstm_cell_7/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?=B?= B?=
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
 
R
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
	variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
?
.iter

/beta_1

0beta_2
	1decay
2learning_rate"mw#mx(my)mz3m{4m|5m}6m~7m8m?"v?#v?(v?)v?3v?4v?5v?6v?7v?8v?
F
30
41
52
63
74
85
"6
#7
(8
)9
F
30
41
52
63
74
85
"6
#7
(8
)9
 
?
9metrics
	trainable_variables
:non_trainable_variables

	variables
regularization_losses
;layer_metrics
<layer_regularization_losses

=layers
 
 
 
 
?
>metrics
trainable_variables
?non_trainable_variables
	variables
regularization_losses
@layer_metrics
Alayer_regularization_losses

Blayers
?
C
state_size

3kernel
4recurrent_kernel
5bias
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
 

30
41
52

30
41
52
 
?
Hmetrics
trainable_variables
Inon_trainable_variables
	variables

Jstates
regularization_losses
Klayer_metrics
Llayer_regularization_losses

Mlayers
 
 
 
?
Nmetrics
trainable_variables
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qlayer_regularization_losses

Rlayers
?
S
state_size

6kernel
7recurrent_kernel
8bias
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
 

60
71
82

60
71
82
 
?
Xmetrics
trainable_variables
Ynon_trainable_variables
	variables

Zstates
 regularization_losses
[layer_metrics
\layer_regularization_losses

]layers
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
?
^metrics
$trainable_variables
_non_trainable_variables
%	variables
&regularization_losses
`layer_metrics
alayer_regularization_losses

blayers
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
?
cmetrics
*trainable_variables
dnon_trainable_variables
+	variables
,regularization_losses
elayer_metrics
flayer_regularization_losses

glayers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_3/lstm_cell_6/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_3/lstm_cell_6/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_3/lstm_cell_6/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_4/lstm_cell_7/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#lstm_4/lstm_cell_7/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUElstm_4/lstm_cell_7/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE

h0
 
 
 
1
0
1
2
3
4
5
6
 
 
 
 
 
 

30
41
52

30
41
52
 
?
imetrics
Dtrainable_variables
jnon_trainable_variables
E	variables
Fregularization_losses
klayer_metrics
llayer_regularization_losses

mlayers
 
 
 
 
 

0
 
 
 
 
 
 

60
71
82

60
71
82
 
?
nmetrics
Ttrainable_variables
onon_trainable_variables
U	variables
Vregularization_losses
player_metrics
qlayer_regularization_losses

rlayers
 
 
 
 
 

0
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
4
	stotal
	tcount
u	variables
v	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

s0
t1

u	variables
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_3/lstm_cell_6/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_3/lstm_cell_6/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_6/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_4/lstm_cell_7/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_4/lstm_cell_7/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_4/lstm_cell_7/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_3/lstm_cell_6/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_3/lstm_cell_6/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_3/lstm_cell_6/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_4/lstm_cell_7/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/lstm_4/lstm_cell_7/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/lstm_4/lstm_cell_7/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_3Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3lstm_3/lstm_cell_6/kernel#lstm_3/lstm_cell_6/recurrent_kernellstm_3/lstm_cell_6/biaslstm_4/lstm_cell_7/kernel#lstm_4/lstm_cell_7/recurrent_kernellstm_4/lstm_cell_7/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_381315
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_3/lstm_cell_6/kernel/Read/ReadVariableOp7lstm_3/lstm_cell_6/recurrent_kernel/Read/ReadVariableOp+lstm_3/lstm_cell_6/bias/Read/ReadVariableOp-lstm_4/lstm_cell_7/kernel/Read/ReadVariableOp7lstm_4/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp+lstm_4/lstm_cell_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_6/kernel/m/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_6/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_6/bias/m/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_7/kernel/m/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_7/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp4Adam/lstm_3/lstm_cell_6/kernel/v/Read/ReadVariableOp>Adam/lstm_3/lstm_cell_6/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_3/lstm_cell_6/bias/v/Read/ReadVariableOp4Adam/lstm_4/lstm_cell_7/kernel/v/Read/ReadVariableOp>Adam/lstm_4/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_4/lstm_cell_7/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_383704
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasdense_4/kerneldense_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_3/lstm_cell_6/kernel#lstm_3/lstm_cell_6/recurrent_kernellstm_3/lstm_cell_6/biaslstm_4/lstm_cell_7/kernel#lstm_4/lstm_cell_7/recurrent_kernellstm_4/lstm_cell_7/biastotalcountAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/m Adam/lstm_3/lstm_cell_6/kernel/m*Adam/lstm_3/lstm_cell_6/recurrent_kernel/mAdam/lstm_3/lstm_cell_6/bias/m Adam/lstm_4/lstm_cell_7/kernel/m*Adam/lstm_4/lstm_cell_7/recurrent_kernel/mAdam/lstm_4/lstm_cell_7/bias/mAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v Adam/lstm_3/lstm_cell_6/kernel/v*Adam/lstm_3/lstm_cell_6/recurrent_kernel/vAdam/lstm_3/lstm_cell_6/bias/v Adam/lstm_4/lstm_cell_7/kernel/v*Adam/lstm_4/lstm_cell_7/recurrent_kernel/vAdam/lstm_4/lstm_cell_7/bias/v*1
Tin*
(2&*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_383825??#
?
`
D__inference_lambda_4_layer_call_and_return_conditional_losses_380924

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim~

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_382882
inputs_0>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382798*
condR
while_cond_382797*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_379149
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379149___redundant_placeholder04
0while_while_cond_379149___redundant_placeholder14
0while_while_cond_379149___redundant_placeholder24
0while_while_cond_379149___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_model_3_lstm_layer_call_fn_381222
input_3
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_3811742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
while_cond_382278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382278___redundant_placeholder04
0while_while_cond_382278___redundant_placeholder14
0while_while_cond_382278___redundant_placeholder24
0while_while_cond_382278___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
E
)__inference_lambda_3_layer_call_fn_382005

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3811142
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
while_body_382430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_3_layer_call_fn_382039
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3794292
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?>
?
while_body_380568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_lambda_4_layer_call_and_return_conditional_losses_382681

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim~

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_4_layer_call_fn_382731

inputs
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3809012
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_380652

inputs>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_380568*
condR
while_cond_380567*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_lambda_3_layer_call_and_return_conditional_losses_382017

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
while_body_382279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_379136

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?>
?
while_body_382949
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
E
)__inference_lambda_4_layer_call_fn_382675

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3809242
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_379912

inputs

states
states_12
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?H
?

lstm_4_while_body_381898*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0:
??O
;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??I
:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorK
7lstm_4_while_lstm_cell_7_matmul_readvariableop_resource:
??M
9lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource:
??G
8lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource:	???/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem?
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?
lstm_4/while/lstm_cell_7/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_7/MatMul?
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
!lstm_4/while/lstm_cell_7/MatMul_1MatMullstm_4_while_placeholder_28lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_4/while/lstm_cell_7/MatMul_1?
lstm_4/while/lstm_cell_7/addAddV2)lstm_4/while/lstm_cell_7/MatMul:product:0+lstm_4/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/add?
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?
 lstm_4/while/lstm_cell_7/BiasAddBiasAdd lstm_4/while/lstm_cell_7/add:z:07lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_7/BiasAdd?
(lstm_4/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_7/split/split_dim?
lstm_4/while/lstm_cell_7/splitSplit1lstm_4/while/lstm_cell_7/split/split_dim:output:0)lstm_4/while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_4/while/lstm_cell_7/split?
 lstm_4/while/lstm_cell_7/SigmoidSigmoid'lstm_4/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_7/Sigmoid?
"lstm_4/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_4/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_7/Sigmoid_1?
lstm_4/while/lstm_cell_7/mulMul&lstm_4/while/lstm_cell_7/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/mul?
lstm_4/while/lstm_cell_7/ReluRelu'lstm_4/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/Relu?
lstm_4/while/lstm_cell_7/mul_1Mul$lstm_4/while/lstm_cell_7/Sigmoid:y:0+lstm_4/while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/mul_1?
lstm_4/while/lstm_cell_7/add_1AddV2 lstm_4/while/lstm_cell_7/mul:z:0"lstm_4/while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/add_1?
"lstm_4/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_4/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_7/Sigmoid_2?
lstm_4/while/lstm_cell_7/Relu_1Relu"lstm_4/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_7/Relu_1?
lstm_4/while/lstm_cell_7/mul_2Mul&lstm_4/while/lstm_cell_7/Sigmoid_2:y:0-lstm_4/while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/mul_2?
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder"lstm_4/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y?
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y?
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1?
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity?
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1?
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2?
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3?
lstm_4/while/Identity_4Identity"lstm_4/while/lstm_cell_7/mul_2:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_4?
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_7/add_1:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_5?
lstm_4/while/NoOpNoOp0^lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_4/while/NoOp"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"v
8lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_4_while_lstm_cell_7_matmul_readvariableop_resource9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0"?
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2b
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?F
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_379219

inputs%
lstm_cell_6_379137:	?&
lstm_cell_6_379139:
??!
lstm_cell_6_379141:	?
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_379137lstm_cell_6_379139lstm_cell_6_379141*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3791362%
#lstm_cell_6/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_379137lstm_cell_6_379139lstm_cell_6_379141*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_379150*
condR
while_cond_379149*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity|
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
`
D__inference_lambda_4_layer_call_and_return_conditional_losses_380500

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim~

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
-__inference_model_3_lstm_layer_call_fn_381340

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_3806942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_380486

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_380402*
condR
while_cond_380401*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_380694

inputs 
lstm_3_380487:	?!
lstm_3_380489:
??
lstm_3_380491:	?!
lstm_4_380653:
??!
lstm_4_380655:
??
lstm_4_380657:	?!
dense_3_380672:	?@
dense_3_380674:@ 
dense_4_380688:@
dense_4_380690:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3803342
lambda_3/PartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0lstm_3_380487lstm_3_380489lstm_3_380491*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3804862 
lstm_3/StatefulPartitionedCall?
lambda_4/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3805002
lambda_4/PartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0lstm_4_380653lstm_4_380655lstm_4_380657*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3806522 
lstm_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_3_380672dense_3_380674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_3806712!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_380688dense_4_380690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3806872!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_379282

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
C__inference_dense_3_layer_call_and_return_conditional_losses_380671

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_379061
input_3Q
>model_3_lstm_lstm_3_lstm_cell_6_matmul_readvariableop_resource:	?T
@model_3_lstm_lstm_3_lstm_cell_6_matmul_1_readvariableop_resource:
??N
?model_3_lstm_lstm_3_lstm_cell_6_biasadd_readvariableop_resource:	?R
>model_3_lstm_lstm_4_lstm_cell_7_matmul_readvariableop_resource:
??T
@model_3_lstm_lstm_4_lstm_cell_7_matmul_1_readvariableop_resource:
??N
?model_3_lstm_lstm_4_lstm_cell_7_biasadd_readvariableop_resource:	?F
3model_3_lstm_dense_3_matmul_readvariableop_resource:	?@B
4model_3_lstm_dense_3_biasadd_readvariableop_resource:@E
3model_3_lstm_dense_4_matmul_readvariableop_resource:@B
4model_3_lstm_dense_4_biasadd_readvariableop_resource:
identity??+model_3_lstm/dense_3/BiasAdd/ReadVariableOp?*model_3_lstm/dense_3/MatMul/ReadVariableOp?+model_3_lstm/dense_4/BiasAdd/ReadVariableOp?*model_3_lstm/dense_4/MatMul/ReadVariableOp?6model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?5model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp?7model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?model_3_lstm/lstm_3/while?6model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?5model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp?7model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?model_3_lstm/lstm_4/while?
$model_3_lstm/lambda_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_3_lstm/lambda_3/ExpandDims/dim?
 model_3_lstm/lambda_3/ExpandDims
ExpandDimsinput_3-model_3_lstm/lambda_3/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2"
 model_3_lstm/lambda_3/ExpandDims?
model_3_lstm/lstm_3/ShapeShape)model_3_lstm/lambda_3/ExpandDims:output:0*
T0*
_output_shapes
:2
model_3_lstm/lstm_3/Shape?
'model_3_lstm/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_3_lstm/lstm_3/strided_slice/stack?
)model_3_lstm/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_3_lstm/lstm_3/strided_slice/stack_1?
)model_3_lstm/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_3_lstm/lstm_3/strided_slice/stack_2?
!model_3_lstm/lstm_3/strided_sliceStridedSlice"model_3_lstm/lstm_3/Shape:output:00model_3_lstm/lstm_3/strided_slice/stack:output:02model_3_lstm/lstm_3/strided_slice/stack_1:output:02model_3_lstm/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_3_lstm/lstm_3/strided_slice?
model_3_lstm/lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
model_3_lstm/lstm_3/zeros/mul/y?
model_3_lstm/lstm_3/zeros/mulMul*model_3_lstm/lstm_3/strided_slice:output:0(model_3_lstm/lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model_3_lstm/lstm_3/zeros/mul?
 model_3_lstm/lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 model_3_lstm/lstm_3/zeros/Less/y?
model_3_lstm/lstm_3/zeros/LessLess!model_3_lstm/lstm_3/zeros/mul:z:0)model_3_lstm/lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
model_3_lstm/lstm_3/zeros/Less?
"model_3_lstm/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"model_3_lstm/lstm_3/zeros/packed/1?
 model_3_lstm/lstm_3/zeros/packedPack*model_3_lstm/lstm_3/strided_slice:output:0+model_3_lstm/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 model_3_lstm/lstm_3/zeros/packed?
model_3_lstm/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
model_3_lstm/lstm_3/zeros/Const?
model_3_lstm/lstm_3/zerosFill)model_3_lstm/lstm_3/zeros/packed:output:0(model_3_lstm/lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
model_3_lstm/lstm_3/zeros?
!model_3_lstm/lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!model_3_lstm/lstm_3/zeros_1/mul/y?
model_3_lstm/lstm_3/zeros_1/mulMul*model_3_lstm/lstm_3/strided_slice:output:0*model_3_lstm/lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
model_3_lstm/lstm_3/zeros_1/mul?
"model_3_lstm/lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"model_3_lstm/lstm_3/zeros_1/Less/y?
 model_3_lstm/lstm_3/zeros_1/LessLess#model_3_lstm/lstm_3/zeros_1/mul:z:0+model_3_lstm/lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 model_3_lstm/lstm_3/zeros_1/Less?
$model_3_lstm/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$model_3_lstm/lstm_3/zeros_1/packed/1?
"model_3_lstm/lstm_3/zeros_1/packedPack*model_3_lstm/lstm_3/strided_slice:output:0-model_3_lstm/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"model_3_lstm/lstm_3/zeros_1/packed?
!model_3_lstm/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!model_3_lstm/lstm_3/zeros_1/Const?
model_3_lstm/lstm_3/zeros_1Fill+model_3_lstm/lstm_3/zeros_1/packed:output:0*model_3_lstm/lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model_3_lstm/lstm_3/zeros_1?
"model_3_lstm/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"model_3_lstm/lstm_3/transpose/perm?
model_3_lstm/lstm_3/transpose	Transpose)model_3_lstm/lambda_3/ExpandDims:output:0+model_3_lstm/lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
model_3_lstm/lstm_3/transpose?
model_3_lstm/lstm_3/Shape_1Shape!model_3_lstm/lstm_3/transpose:y:0*
T0*
_output_shapes
:2
model_3_lstm/lstm_3/Shape_1?
)model_3_lstm/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_3_lstm/lstm_3/strided_slice_1/stack?
+model_3_lstm/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_3/strided_slice_1/stack_1?
+model_3_lstm/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_3/strided_slice_1/stack_2?
#model_3_lstm/lstm_3/strided_slice_1StridedSlice$model_3_lstm/lstm_3/Shape_1:output:02model_3_lstm/lstm_3/strided_slice_1/stack:output:04model_3_lstm/lstm_3/strided_slice_1/stack_1:output:04model_3_lstm/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_3_lstm/lstm_3/strided_slice_1?
/model_3_lstm/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/model_3_lstm/lstm_3/TensorArrayV2/element_shape?
!model_3_lstm/lstm_3/TensorArrayV2TensorListReserve8model_3_lstm/lstm_3/TensorArrayV2/element_shape:output:0,model_3_lstm/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!model_3_lstm/lstm_3/TensorArrayV2?
Imodel_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Imodel_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
;model_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!model_3_lstm/lstm_3/transpose:y:0Rmodel_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;model_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensor?
)model_3_lstm/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_3_lstm/lstm_3/strided_slice_2/stack?
+model_3_lstm/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_3/strided_slice_2/stack_1?
+model_3_lstm/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_3/strided_slice_2/stack_2?
#model_3_lstm/lstm_3/strided_slice_2StridedSlice!model_3_lstm/lstm_3/transpose:y:02model_3_lstm/lstm_3/strided_slice_2/stack:output:04model_3_lstm/lstm_3/strided_slice_2/stack_1:output:04model_3_lstm/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2%
#model_3_lstm/lstm_3/strided_slice_2?
5model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp>model_3_lstm_lstm_3_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp?
&model_3_lstm/lstm_3/lstm_cell_6/MatMulMatMul,model_3_lstm/lstm_3/strided_slice_2:output:0=model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_3_lstm/lstm_3/lstm_cell_6/MatMul?
7model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp@model_3_lstm_lstm_3_lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?
(model_3_lstm/lstm_3/lstm_cell_6/MatMul_1MatMul"model_3_lstm/lstm_3/zeros:output:0?model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(model_3_lstm/lstm_3/lstm_cell_6/MatMul_1?
#model_3_lstm/lstm_3/lstm_cell_6/addAddV20model_3_lstm/lstm_3/lstm_cell_6/MatMul:product:02model_3_lstm/lstm_3/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#model_3_lstm/lstm_3/lstm_cell_6/add?
6model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp?model_3_lstm_lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?
'model_3_lstm/lstm_3/lstm_cell_6/BiasAddBiasAdd'model_3_lstm/lstm_3/lstm_cell_6/add:z:0>model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'model_3_lstm/lstm_3/lstm_cell_6/BiasAdd?
/model_3_lstm/lstm_3/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/model_3_lstm/lstm_3/lstm_cell_6/split/split_dim?
%model_3_lstm/lstm_3/lstm_cell_6/splitSplit8model_3_lstm/lstm_3/lstm_cell_6/split/split_dim:output:00model_3_lstm/lstm_3/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2'
%model_3_lstm/lstm_3/lstm_cell_6/split?
'model_3_lstm/lstm_3/lstm_cell_6/SigmoidSigmoid.model_3_lstm/lstm_3/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2)
'model_3_lstm/lstm_3/lstm_cell_6/Sigmoid?
)model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_1Sigmoid.model_3_lstm/lstm_3/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_1?
#model_3_lstm/lstm_3/lstm_cell_6/mulMul-model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_1:y:0$model_3_lstm/lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:??????????2%
#model_3_lstm/lstm_3/lstm_cell_6/mul?
$model_3_lstm/lstm_3/lstm_cell_6/ReluRelu.model_3_lstm/lstm_3/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_3/lstm_cell_6/Relu?
%model_3_lstm/lstm_3/lstm_cell_6/mul_1Mul+model_3_lstm/lstm_3/lstm_cell_6/Sigmoid:y:02model_3_lstm/lstm_3/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_3/lstm_cell_6/mul_1?
%model_3_lstm/lstm_3/lstm_cell_6/add_1AddV2'model_3_lstm/lstm_3/lstm_cell_6/mul:z:0)model_3_lstm/lstm_3/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_3/lstm_cell_6/add_1?
)model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_2Sigmoid.model_3_lstm/lstm_3/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_2?
&model_3_lstm/lstm_3/lstm_cell_6/Relu_1Relu)model_3_lstm/lstm_3/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2(
&model_3_lstm/lstm_3/lstm_cell_6/Relu_1?
%model_3_lstm/lstm_3/lstm_cell_6/mul_2Mul-model_3_lstm/lstm_3/lstm_cell_6/Sigmoid_2:y:04model_3_lstm/lstm_3/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_3/lstm_cell_6/mul_2?
1model_3_lstm/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1model_3_lstm/lstm_3/TensorArrayV2_1/element_shape?
#model_3_lstm/lstm_3/TensorArrayV2_1TensorListReserve:model_3_lstm/lstm_3/TensorArrayV2_1/element_shape:output:0,model_3_lstm/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#model_3_lstm/lstm_3/TensorArrayV2_1v
model_3_lstm/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_3_lstm/lstm_3/time?
,model_3_lstm/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,model_3_lstm/lstm_3/while/maximum_iterations?
&model_3_lstm/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model_3_lstm/lstm_3/while/loop_counter?
model_3_lstm/lstm_3/whileWhile/model_3_lstm/lstm_3/while/loop_counter:output:05model_3_lstm/lstm_3/while/maximum_iterations:output:0!model_3_lstm/lstm_3/time:output:0,model_3_lstm/lstm_3/TensorArrayV2_1:handle:0"model_3_lstm/lstm_3/zeros:output:0$model_3_lstm/lstm_3/zeros_1:output:0,model_3_lstm/lstm_3/strided_slice_1:output:0Kmodel_3_lstm/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>model_3_lstm_lstm_3_lstm_cell_6_matmul_readvariableop_resource@model_3_lstm_lstm_3_lstm_cell_6_matmul_1_readvariableop_resource?model_3_lstm_lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%model_3_lstm_lstm_3_while_body_378815*1
cond)R'
%model_3_lstm_lstm_3_while_cond_378814*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
model_3_lstm/lstm_3/while?
Dmodel_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dmodel_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
6model_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"model_3_lstm/lstm_3/while:output:3Mmodel_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6model_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack?
)model_3_lstm/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)model_3_lstm/lstm_3/strided_slice_3/stack?
+model_3_lstm/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+model_3_lstm/lstm_3/strided_slice_3/stack_1?
+model_3_lstm/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_3/strided_slice_3/stack_2?
#model_3_lstm/lstm_3/strided_slice_3StridedSlice?model_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02model_3_lstm/lstm_3/strided_slice_3/stack:output:04model_3_lstm/lstm_3/strided_slice_3/stack_1:output:04model_3_lstm/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#model_3_lstm/lstm_3/strided_slice_3?
$model_3_lstm/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$model_3_lstm/lstm_3/transpose_1/perm?
model_3_lstm/lstm_3/transpose_1	Transpose?model_3_lstm/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-model_3_lstm/lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
model_3_lstm/lstm_3/transpose_1?
model_3_lstm/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_3_lstm/lstm_3/runtime?
$model_3_lstm/lambda_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_3_lstm/lambda_4/ExpandDims/dim?
 model_3_lstm/lambda_4/ExpandDims
ExpandDims,model_3_lstm/lstm_3/strided_slice_3:output:0-model_3_lstm/lambda_4/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2"
 model_3_lstm/lambda_4/ExpandDims?
model_3_lstm/lstm_4/ShapeShape)model_3_lstm/lambda_4/ExpandDims:output:0*
T0*
_output_shapes
:2
model_3_lstm/lstm_4/Shape?
'model_3_lstm/lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_3_lstm/lstm_4/strided_slice/stack?
)model_3_lstm/lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_3_lstm/lstm_4/strided_slice/stack_1?
)model_3_lstm/lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_3_lstm/lstm_4/strided_slice/stack_2?
!model_3_lstm/lstm_4/strided_sliceStridedSlice"model_3_lstm/lstm_4/Shape:output:00model_3_lstm/lstm_4/strided_slice/stack:output:02model_3_lstm/lstm_4/strided_slice/stack_1:output:02model_3_lstm/lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_3_lstm/lstm_4/strided_slice?
model_3_lstm/lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
model_3_lstm/lstm_4/zeros/mul/y?
model_3_lstm/lstm_4/zeros/mulMul*model_3_lstm/lstm_4/strided_slice:output:0(model_3_lstm/lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model_3_lstm/lstm_4/zeros/mul?
 model_3_lstm/lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 model_3_lstm/lstm_4/zeros/Less/y?
model_3_lstm/lstm_4/zeros/LessLess!model_3_lstm/lstm_4/zeros/mul:z:0)model_3_lstm/lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
model_3_lstm/lstm_4/zeros/Less?
"model_3_lstm/lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2$
"model_3_lstm/lstm_4/zeros/packed/1?
 model_3_lstm/lstm_4/zeros/packedPack*model_3_lstm/lstm_4/strided_slice:output:0+model_3_lstm/lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 model_3_lstm/lstm_4/zeros/packed?
model_3_lstm/lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
model_3_lstm/lstm_4/zeros/Const?
model_3_lstm/lstm_4/zerosFill)model_3_lstm/lstm_4/zeros/packed:output:0(model_3_lstm/lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
model_3_lstm/lstm_4/zeros?
!model_3_lstm/lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!model_3_lstm/lstm_4/zeros_1/mul/y?
model_3_lstm/lstm_4/zeros_1/mulMul*model_3_lstm/lstm_4/strided_slice:output:0*model_3_lstm/lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
model_3_lstm/lstm_4/zeros_1/mul?
"model_3_lstm/lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"model_3_lstm/lstm_4/zeros_1/Less/y?
 model_3_lstm/lstm_4/zeros_1/LessLess#model_3_lstm/lstm_4/zeros_1/mul:z:0+model_3_lstm/lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 model_3_lstm/lstm_4/zeros_1/Less?
$model_3_lstm/lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$model_3_lstm/lstm_4/zeros_1/packed/1?
"model_3_lstm/lstm_4/zeros_1/packedPack*model_3_lstm/lstm_4/strided_slice:output:0-model_3_lstm/lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"model_3_lstm/lstm_4/zeros_1/packed?
!model_3_lstm/lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!model_3_lstm/lstm_4/zeros_1/Const?
model_3_lstm/lstm_4/zeros_1Fill+model_3_lstm/lstm_4/zeros_1/packed:output:0*model_3_lstm/lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model_3_lstm/lstm_4/zeros_1?
"model_3_lstm/lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"model_3_lstm/lstm_4/transpose/perm?
model_3_lstm/lstm_4/transpose	Transpose)model_3_lstm/lambda_4/ExpandDims:output:0+model_3_lstm/lstm_4/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
model_3_lstm/lstm_4/transpose?
model_3_lstm/lstm_4/Shape_1Shape!model_3_lstm/lstm_4/transpose:y:0*
T0*
_output_shapes
:2
model_3_lstm/lstm_4/Shape_1?
)model_3_lstm/lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_3_lstm/lstm_4/strided_slice_1/stack?
+model_3_lstm/lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_4/strided_slice_1/stack_1?
+model_3_lstm/lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_4/strided_slice_1/stack_2?
#model_3_lstm/lstm_4/strided_slice_1StridedSlice$model_3_lstm/lstm_4/Shape_1:output:02model_3_lstm/lstm_4/strided_slice_1/stack:output:04model_3_lstm/lstm_4/strided_slice_1/stack_1:output:04model_3_lstm/lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_3_lstm/lstm_4/strided_slice_1?
/model_3_lstm/lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/model_3_lstm/lstm_4/TensorArrayV2/element_shape?
!model_3_lstm/lstm_4/TensorArrayV2TensorListReserve8model_3_lstm/lstm_4/TensorArrayV2/element_shape:output:0,model_3_lstm/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!model_3_lstm/lstm_4/TensorArrayV2?
Imodel_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2K
Imodel_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
;model_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!model_3_lstm/lstm_4/transpose:y:0Rmodel_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;model_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensor?
)model_3_lstm/lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_3_lstm/lstm_4/strided_slice_2/stack?
+model_3_lstm/lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_4/strided_slice_2/stack_1?
+model_3_lstm/lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_4/strided_slice_2/stack_2?
#model_3_lstm/lstm_4/strided_slice_2StridedSlice!model_3_lstm/lstm_4/transpose:y:02model_3_lstm/lstm_4/strided_slice_2/stack:output:04model_3_lstm/lstm_4/strided_slice_2/stack_1:output:04model_3_lstm/lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#model_3_lstm/lstm_4/strided_slice_2?
5model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp>model_3_lstm_lstm_4_lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype027
5model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp?
&model_3_lstm/lstm_4/lstm_cell_7/MatMulMatMul,model_3_lstm/lstm_4/strided_slice_2:output:0=model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2(
&model_3_lstm/lstm_4/lstm_cell_7/MatMul?
7model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp@model_3_lstm_lstm_4_lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?
(model_3_lstm/lstm_4/lstm_cell_7/MatMul_1MatMul"model_3_lstm/lstm_4/zeros:output:0?model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(model_3_lstm/lstm_4/lstm_cell_7/MatMul_1?
#model_3_lstm/lstm_4/lstm_cell_7/addAddV20model_3_lstm/lstm_4/lstm_cell_7/MatMul:product:02model_3_lstm/lstm_4/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2%
#model_3_lstm/lstm_4/lstm_cell_7/add?
6model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp?model_3_lstm_lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?
'model_3_lstm/lstm_4/lstm_cell_7/BiasAddBiasAdd'model_3_lstm/lstm_4/lstm_cell_7/add:z:0>model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'model_3_lstm/lstm_4/lstm_cell_7/BiasAdd?
/model_3_lstm/lstm_4/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/model_3_lstm/lstm_4/lstm_cell_7/split/split_dim?
%model_3_lstm/lstm_4/lstm_cell_7/splitSplit8model_3_lstm/lstm_4/lstm_cell_7/split/split_dim:output:00model_3_lstm/lstm_4/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2'
%model_3_lstm/lstm_4/lstm_cell_7/split?
'model_3_lstm/lstm_4/lstm_cell_7/SigmoidSigmoid.model_3_lstm/lstm_4/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2)
'model_3_lstm/lstm_4/lstm_cell_7/Sigmoid?
)model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_1Sigmoid.model_3_lstm/lstm_4/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_1?
#model_3_lstm/lstm_4/lstm_cell_7/mulMul-model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_1:y:0$model_3_lstm/lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2%
#model_3_lstm/lstm_4/lstm_cell_7/mul?
$model_3_lstm/lstm_4/lstm_cell_7/ReluRelu.model_3_lstm/lstm_4/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_4/lstm_cell_7/Relu?
%model_3_lstm/lstm_4/lstm_cell_7/mul_1Mul+model_3_lstm/lstm_4/lstm_cell_7/Sigmoid:y:02model_3_lstm/lstm_4/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_4/lstm_cell_7/mul_1?
%model_3_lstm/lstm_4/lstm_cell_7/add_1AddV2'model_3_lstm/lstm_4/lstm_cell_7/mul:z:0)model_3_lstm/lstm_4/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_4/lstm_cell_7/add_1?
)model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_2Sigmoid.model_3_lstm/lstm_4/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_2?
&model_3_lstm/lstm_4/lstm_cell_7/Relu_1Relu)model_3_lstm/lstm_4/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2(
&model_3_lstm/lstm_4/lstm_cell_7/Relu_1?
%model_3_lstm/lstm_4/lstm_cell_7/mul_2Mul-model_3_lstm/lstm_4/lstm_cell_7/Sigmoid_2:y:04model_3_lstm/lstm_4/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2'
%model_3_lstm/lstm_4/lstm_cell_7/mul_2?
1model_3_lstm/lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1model_3_lstm/lstm_4/TensorArrayV2_1/element_shape?
#model_3_lstm/lstm_4/TensorArrayV2_1TensorListReserve:model_3_lstm/lstm_4/TensorArrayV2_1/element_shape:output:0,model_3_lstm/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#model_3_lstm/lstm_4/TensorArrayV2_1v
model_3_lstm/lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_3_lstm/lstm_4/time?
,model_3_lstm/lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,model_3_lstm/lstm_4/while/maximum_iterations?
&model_3_lstm/lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model_3_lstm/lstm_4/while/loop_counter?
model_3_lstm/lstm_4/whileWhile/model_3_lstm/lstm_4/while/loop_counter:output:05model_3_lstm/lstm_4/while/maximum_iterations:output:0!model_3_lstm/lstm_4/time:output:0,model_3_lstm/lstm_4/TensorArrayV2_1:handle:0"model_3_lstm/lstm_4/zeros:output:0$model_3_lstm/lstm_4/zeros_1:output:0,model_3_lstm/lstm_4/strided_slice_1:output:0Kmodel_3_lstm/lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0>model_3_lstm_lstm_4_lstm_cell_7_matmul_readvariableop_resource@model_3_lstm_lstm_4_lstm_cell_7_matmul_1_readvariableop_resource?model_3_lstm_lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%model_3_lstm_lstm_4_while_body_378964*1
cond)R'
%model_3_lstm_lstm_4_while_cond_378963*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
model_3_lstm/lstm_4/while?
Dmodel_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2F
Dmodel_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
6model_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStackTensorListStack"model_3_lstm/lstm_4/while:output:3Mmodel_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype028
6model_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack?
)model_3_lstm/lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)model_3_lstm/lstm_4/strided_slice_3/stack?
+model_3_lstm/lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+model_3_lstm/lstm_4/strided_slice_3/stack_1?
+model_3_lstm/lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_3_lstm/lstm_4/strided_slice_3/stack_2?
#model_3_lstm/lstm_4/strided_slice_3StridedSlice?model_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:02model_3_lstm/lstm_4/strided_slice_3/stack:output:04model_3_lstm/lstm_4/strided_slice_3/stack_1:output:04model_3_lstm/lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2%
#model_3_lstm/lstm_4/strided_slice_3?
$model_3_lstm/lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$model_3_lstm/lstm_4/transpose_1/perm?
model_3_lstm/lstm_4/transpose_1	Transpose?model_3_lstm/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0-model_3_lstm/lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2!
model_3_lstm/lstm_4/transpose_1?
model_3_lstm/lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_3_lstm/lstm_4/runtime?
*model_3_lstm/dense_3/MatMul/ReadVariableOpReadVariableOp3model_3_lstm_dense_3_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02,
*model_3_lstm/dense_3/MatMul/ReadVariableOp?
model_3_lstm/dense_3/MatMulMatMul,model_3_lstm/lstm_4/strided_slice_3:output:02model_3_lstm/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_3_lstm/dense_3/MatMul?
+model_3_lstm/dense_3/BiasAdd/ReadVariableOpReadVariableOp4model_3_lstm_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+model_3_lstm/dense_3/BiasAdd/ReadVariableOp?
model_3_lstm/dense_3/BiasAddBiasAdd%model_3_lstm/dense_3/MatMul:product:03model_3_lstm/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_3_lstm/dense_3/BiasAdd?
model_3_lstm/dense_3/ReluRelu%model_3_lstm/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_3_lstm/dense_3/Relu?
*model_3_lstm/dense_4/MatMul/ReadVariableOpReadVariableOp3model_3_lstm_dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*model_3_lstm/dense_4/MatMul/ReadVariableOp?
model_3_lstm/dense_4/MatMulMatMul'model_3_lstm/dense_3/Relu:activations:02model_3_lstm/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_3_lstm/dense_4/MatMul?
+model_3_lstm/dense_4/BiasAdd/ReadVariableOpReadVariableOp4model_3_lstm_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_3_lstm/dense_4/BiasAdd/ReadVariableOp?
model_3_lstm/dense_4/BiasAddBiasAdd%model_3_lstm/dense_4/MatMul:product:03model_3_lstm/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_3_lstm/dense_4/BiasAdd?
IdentityIdentity%model_3_lstm/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp,^model_3_lstm/dense_3/BiasAdd/ReadVariableOp+^model_3_lstm/dense_3/MatMul/ReadVariableOp,^model_3_lstm/dense_4/BiasAdd/ReadVariableOp+^model_3_lstm/dense_4/MatMul/ReadVariableOp7^model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp6^model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp8^model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp^model_3_lstm/lstm_3/while7^model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp6^model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp8^model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp^model_3_lstm/lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2Z
+model_3_lstm/dense_3/BiasAdd/ReadVariableOp+model_3_lstm/dense_3/BiasAdd/ReadVariableOp2X
*model_3_lstm/dense_3/MatMul/ReadVariableOp*model_3_lstm/dense_3/MatMul/ReadVariableOp2Z
+model_3_lstm/dense_4/BiasAdd/ReadVariableOp+model_3_lstm/dense_4/BiasAdd/ReadVariableOp2X
*model_3_lstm/dense_4/MatMul/ReadVariableOp*model_3_lstm/dense_4/MatMul/ReadVariableOp2p
6model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp6model_3_lstm/lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp2n
5model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp5model_3_lstm/lstm_3/lstm_cell_6/MatMul/ReadVariableOp2r
7model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp7model_3_lstm/lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp26
model_3_lstm/lstm_3/whilemodel_3_lstm/lstm_3/while2p
6model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp6model_3_lstm/lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp2n
5model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp5model_3_lstm/lstm_4/lstm_cell_7/MatMul/ReadVariableOp2r
7model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp7model_3_lstm/lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp26
model_3_lstm/lstm_4/whilemodel_3_lstm/lstm_4/while:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382363
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382279*
condR
while_cond_382278*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381252
input_3 
lstm_3_381226:	?!
lstm_3_381228:
??
lstm_3_381230:	?!
lstm_4_381234:
??!
lstm_4_381236:
??
lstm_4_381238:	?!
dense_3_381241:	?@
dense_3_381243:@ 
dense_4_381246:@
dense_4_381248:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?
lambda_3/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3803342
lambda_3/PartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0lstm_3_381226lstm_3_381228lstm_3_381230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3804862 
lstm_3/StatefulPartitionedCall?
lambda_4/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3805002
lambda_4/PartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0lstm_4_381234lstm_4_381236lstm_4_381238*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3806522 
lstm_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_3_381241dense_3_381243*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_3806712!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_381246dense_4_381248*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3806872!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
'__inference_lstm_3_layer_call_fn_382061

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3810912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383472

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_381091

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_381007*
condR
while_cond_381006*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_379150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_6_379174_0:	?.
while_lstm_cell_6_379176_0:
??)
while_lstm_cell_6_379178_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_6_379174:	?,
while_lstm_cell_6_379176:
??'
while_lstm_cell_6_379178:	???)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_379174_0while_lstm_cell_6_379176_0while_lstm_cell_6_379178_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3791362+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_6_379174while_lstm_cell_6_379174_0"6
while_lstm_cell_6_379176while_lstm_cell_6_379176_0"6
while_lstm_cell_6_379178while_lstm_cell_6_379178_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381282
input_3 
lstm_3_381256:	?!
lstm_3_381258:
??
lstm_3_381260:	?!
lstm_4_381264:
??!
lstm_4_381266:
??
lstm_4_381268:	?!
dense_3_381271:	?@
dense_3_381273:@ 
dense_4_381276:@
dense_4_381278:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?
lambda_3/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3811142
lambda_3/PartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0lstm_3_381256lstm_3_381258lstm_3_381260*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3810912 
lstm_3/StatefulPartitionedCall?
lambda_4/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3809242
lambda_4/PartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0lstm_4_381264lstm_4_381266lstm_4_381268*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3809012 
lstm_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_3_381271dense_3_381273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_3806712!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_381276dense_4_381278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3806872!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
while_cond_382797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382797___redundant_placeholder04
0while_while_cond_382797___redundant_placeholder14
0while_while_cond_382797___redundant_placeholder24
0while_while_cond_382797___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?	
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381995

inputsD
1lstm_3_lstm_cell_6_matmul_readvariableop_resource:	?G
3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource:
??A
2lstm_3_lstm_cell_6_biasadd_readvariableop_resource:	?E
1lstm_4_lstm_cell_7_matmul_readvariableop_resource:
??G
3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource:
??A
2lstm_4_lstm_cell_7_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@5
'dense_4_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_6/MatMul/ReadVariableOp?*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_3/while?)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?(lstm_4/lstm_cell_7/MatMul/ReadVariableOp?*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_4/whilet
lambda_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_3/ExpandDims/dim?
lambda_3/ExpandDims
ExpandDimsinputs lambda_3/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_3/ExpandDimsh
lstm_3/ShapeShapelambda_3/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_3/Shape?
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack?
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1?
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicek
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/mul/y?
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/Less/y?
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessq
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/packed/1?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/zeroso
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/mul/y?
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/Less/y?
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lessu
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/packed/1?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/zeros_1?
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm?
lstm_3/transpose	Transposelambda_3/ExpandDims:output:0lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1?
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack?
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1?
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1?
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_3/TensorArrayV2/element_shape?
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2?
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor?
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack?
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1?
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_3/strided_slice_2?
(lstm_3/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_3/lstm_cell_6/MatMul/ReadVariableOp?
lstm_3/lstm_cell_6/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/MatMul?
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_3/lstm_cell_6/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/MatMul_1?
lstm_3/lstm_cell_6/addAddV2#lstm_3/lstm_cell_6/MatMul:product:0%lstm_3/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/add?
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_3/lstm_cell_6/BiasAddBiasAddlstm_3/lstm_cell_6/add:z:01lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/BiasAdd?
"lstm_3/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_6/split/split_dim?
lstm_3/lstm_cell_6/splitSplit+lstm_3/lstm_cell_6/split/split_dim:output:0#lstm_3/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_3/lstm_cell_6/split?
lstm_3/lstm_cell_6/SigmoidSigmoid!lstm_3/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid?
lstm_3/lstm_cell_6/Sigmoid_1Sigmoid!lstm_3/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid_1?
lstm_3/lstm_cell_6/mulMul lstm_3/lstm_cell_6/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul?
lstm_3/lstm_cell_6/ReluRelu!lstm_3/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Relu?
lstm_3/lstm_cell_6/mul_1Mullstm_3/lstm_cell_6/Sigmoid:y:0%lstm_3/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul_1?
lstm_3/lstm_cell_6/add_1AddV2lstm_3/lstm_cell_6/mul:z:0lstm_3/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/add_1?
lstm_3/lstm_cell_6/Sigmoid_2Sigmoid!lstm_3/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid_2?
lstm_3/lstm_cell_6/Relu_1Relulstm_3/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Relu_1?
lstm_3/lstm_cell_6/mul_2Mul lstm_3/lstm_cell_6/Sigmoid_2:y:0'lstm_3/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul_2?
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_3/TensorArrayV2_1/element_shape?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time?
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_6_matmul_readvariableop_resource3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource2lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_3_while_body_381749*$
condR
lstm_3_while_cond_381748*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_3/while?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack?
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_3/strided_slice_3/stack?
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1?
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_3/strided_slice_3?
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/perm?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimet
lambda_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_4/ExpandDims/dim?
lambda_4/ExpandDims
ExpandDimslstm_3/strided_slice_3:output:0 lambda_4/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
lambda_4/ExpandDimsh
lstm_4/ShapeShapelambda_4/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_4/Shape?
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack?
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1?
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2?
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slicek
lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/mul/y?
lstm_4/zeros/mulMullstm_4/strided_slice:output:0lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/mulm
lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/Less/y?
lstm_4/zeros/LessLesslstm_4/zeros/mul:z:0lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/Lessq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/packed/1?
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const?
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeroso
lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/mul/y?
lstm_4/zeros_1/mulMullstm_4/strided_slice:output:0lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/mulq
lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/Less/y?
lstm_4/zeros_1/LessLesslstm_4/zeros_1/mul:z:0lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/Lessu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/packed/1?
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const?
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeros_1?
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm?
lstm_4/transpose	Transposelambda_4/ExpandDims:output:0lstm_4/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1?
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack?
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1?
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2?
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1?
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_4/TensorArrayV2/element_shape?
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2?
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor?
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack?
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1?
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2?
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_2?
(lstm_4/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_4_lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_4/lstm_cell_7/MatMul/ReadVariableOp?
lstm_4/lstm_cell_7/MatMulMatMullstm_4/strided_slice_2:output:00lstm_4/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/MatMul?
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_4/lstm_cell_7/MatMul_1MatMullstm_4/zeros:output:02lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/MatMul_1?
lstm_4/lstm_cell_7/addAddV2#lstm_4/lstm_cell_7/MatMul:product:0%lstm_4/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/add?
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_4/lstm_cell_7/BiasAddBiasAddlstm_4/lstm_cell_7/add:z:01lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/BiasAdd?
"lstm_4/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_7/split/split_dim?
lstm_4/lstm_cell_7/splitSplit+lstm_4/lstm_cell_7/split/split_dim:output:0#lstm_4/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_4/lstm_cell_7/split?
lstm_4/lstm_cell_7/SigmoidSigmoid!lstm_4/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid?
lstm_4/lstm_cell_7/Sigmoid_1Sigmoid!lstm_4/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid_1?
lstm_4/lstm_cell_7/mulMul lstm_4/lstm_cell_7/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul?
lstm_4/lstm_cell_7/ReluRelu!lstm_4/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Relu?
lstm_4/lstm_cell_7/mul_1Mullstm_4/lstm_cell_7/Sigmoid:y:0%lstm_4/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul_1?
lstm_4/lstm_cell_7/add_1AddV2lstm_4/lstm_cell_7/mul:z:0lstm_4/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/add_1?
lstm_4/lstm_cell_7/Sigmoid_2Sigmoid!lstm_4/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid_2?
lstm_4/lstm_cell_7/Relu_1Relulstm_4/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Relu_1?
lstm_4/lstm_cell_7/mul_2Mul lstm_4/lstm_cell_7/Sigmoid_2:y:0'lstm_4/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul_2?
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_4/TensorArrayV2_1/element_shape?
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time?
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counter?
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_4_lstm_cell_7_matmul_readvariableop_resource3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource2lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_4_while_body_381898*$
condR
lstm_4_while_cond_381897*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_4/while?
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack?
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_4/strided_slice_3/stack?
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1?
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2?
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_3?
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/perm?
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transpose_1t
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/runtime?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMullstm_4/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*^lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_6/MatMul/ReadVariableOp+^lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_3/while*^lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_4/lstm_cell_7/MatMul/ReadVariableOp+^lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2V
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_6/MatMul/ReadVariableOp(lstm_3/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while2V
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_4/lstm_cell_7/MatMul/ReadVariableOp(lstm_4/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_383825
file_prefix2
assignvariableop_dense_3_kernel:	?@-
assignvariableop_1_dense_3_bias:@3
!assignvariableop_2_dense_4_kernel:@-
assignvariableop_3_dense_4_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_lstm_3_lstm_cell_6_kernel:	?K
7assignvariableop_10_lstm_3_lstm_cell_6_recurrent_kernel:
??:
+assignvariableop_11_lstm_3_lstm_cell_6_bias:	?A
-assignvariableop_12_lstm_4_lstm_cell_7_kernel:
??K
7assignvariableop_13_lstm_4_lstm_cell_7_recurrent_kernel:
??:
+assignvariableop_14_lstm_4_lstm_cell_7_bias:	?#
assignvariableop_15_total: #
assignvariableop_16_count: <
)assignvariableop_17_adam_dense_3_kernel_m:	?@5
'assignvariableop_18_adam_dense_3_bias_m:@;
)assignvariableop_19_adam_dense_4_kernel_m:@5
'assignvariableop_20_adam_dense_4_bias_m:G
4assignvariableop_21_adam_lstm_3_lstm_cell_6_kernel_m:	?R
>assignvariableop_22_adam_lstm_3_lstm_cell_6_recurrent_kernel_m:
??A
2assignvariableop_23_adam_lstm_3_lstm_cell_6_bias_m:	?H
4assignvariableop_24_adam_lstm_4_lstm_cell_7_kernel_m:
??R
>assignvariableop_25_adam_lstm_4_lstm_cell_7_recurrent_kernel_m:
??A
2assignvariableop_26_adam_lstm_4_lstm_cell_7_bias_m:	?<
)assignvariableop_27_adam_dense_3_kernel_v:	?@5
'assignvariableop_28_adam_dense_3_bias_v:@;
)assignvariableop_29_adam_dense_4_kernel_v:@5
'assignvariableop_30_adam_dense_4_bias_v:G
4assignvariableop_31_adam_lstm_3_lstm_cell_6_kernel_v:	?R
>assignvariableop_32_adam_lstm_3_lstm_cell_6_recurrent_kernel_v:
??A
2assignvariableop_33_adam_lstm_3_lstm_cell_6_bias_v:	?H
4assignvariableop_34_adam_lstm_4_lstm_cell_7_kernel_v:
??R
>assignvariableop_35_adam_lstm_4_lstm_cell_7_recurrent_kernel_v:
??A
2assignvariableop_36_adam_lstm_4_lstm_cell_7_bias_v:	?
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_3_lstm_cell_6_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_lstm_3_lstm_cell_6_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_lstm_3_lstm_cell_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_4_lstm_cell_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp7assignvariableop_13_lstm_4_lstm_cell_7_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp+assignvariableop_14_lstm_4_lstm_cell_7_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_3_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_3_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_3_lstm_cell_6_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_3_lstm_cell_6_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_3_lstm_cell_6_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_4_lstm_cell_7_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_4_lstm_cell_7_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_4_lstm_cell_7_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_3_lstm_cell_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_lstm_3_lstm_cell_6_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp2assignvariableop_33_adam_lstm_3_lstm_cell_6_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_4_lstm_cell_7_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_lstm_4_lstm_cell_7_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_lstm_4_lstm_cell_7_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
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
?
?
while_cond_379779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379779___redundant_placeholder04
0while_while_cond_379779___redundant_placeholder14
0while_while_cond_379779___redundant_placeholder24
0while_while_cond_379779___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_lstm_cell_7_layer_call_fn_383506

inputs
states_0
states_1
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3799122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
'__inference_lstm_4_layer_call_fn_382698
inputs_0
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3798492
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_380567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380567___redundant_placeholder04
0while_while_cond_380567___redundant_placeholder14
0while_while_cond_380567___redundant_placeholder24
0while_while_cond_380567___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?%
?
while_body_379360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_6_379384_0:	?.
while_lstm_cell_6_379386_0:
??)
while_lstm_cell_6_379388_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_6_379384:	?,
while_lstm_cell_6_379386:
??'
while_lstm_cell_6_379388:	???)while/lstm_cell_6/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_6_379384_0while_lstm_cell_6_379386_0while_lstm_cell_6_379388_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3792822+
)while/lstm_cell_6/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_6/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_6/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_6/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_6_379384while_lstm_cell_6_379384_0"6
while_lstm_cell_6_379386while_lstm_cell_6_379386_0"6
while_lstm_cell_6_379388while_lstm_cell_6_379388_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_6/StatefulPartitionedCall)while/lstm_cell_6/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_382127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382127___redundant_placeholder04
0while_while_cond_382127___redundant_placeholder14
0while_while_cond_382127___redundant_placeholder24
0while_while_cond_382127___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382514

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382430*
condR
while_cond_382429*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_lstm_3_layer_call_fn_382028
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3792192
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
E
)__inference_lambda_4_layer_call_fn_382670

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3805002
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_380687

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?%
?
while_body_379780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_7_379804_0:
??.
while_lstm_cell_7_379806_0:
??)
while_lstm_cell_7_379808_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_7_379804:
??,
while_lstm_cell_7_379806:
??'
while_lstm_cell_7_379808:	???)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_379804_0while_lstm_cell_7_379806_0while_lstm_cell_7_379808_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3797662+
)while/lstm_cell_7/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_7_379804while_lstm_cell_7_379804_0"6
while_lstm_cell_7_379806while_lstm_cell_7_379806_0"6
while_lstm_cell_7_379808while_lstm_cell_7_379808_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_lstm_cell_7_layer_call_fn_383489

inputs
states_0
states_1
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3797662
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
C__inference_dense_3_layer_call_and_return_conditional_losses_383355

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_380059

inputs&
lstm_cell_7_379977:
??&
lstm_cell_7_379979:
??!
lstm_cell_7_379981:	?
identity??#lstm_cell_7/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_379977lstm_cell_7_379979lstm_cell_7_379981*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3799122%
#lstm_cell_7/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_379977lstm_cell_7_379979lstm_cell_7_379981*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_379990*
condR
while_cond_379989*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity|
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_4_layer_call_and_return_conditional_losses_383374

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
while_cond_379989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379989___redundant_placeholder04
0while_while_cond_379989___redundant_placeholder14
0while_while_cond_379989___redundant_placeholder24
0while_while_cond_379989___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_382798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383335

inputs>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_383251*
condR
while_cond_383250*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?

lstm_3_while_body_381434*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0:	?O
;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??I
:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_6_matmul_readvariableop_resource:	?M
9lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource:
??G
8lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem?
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_3/while/lstm_cell_6/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_3/while/lstm_cell_6/MatMul?
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_3/while/lstm_cell_6/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_3/while/lstm_cell_6/MatMul_1?
lstm_3/while/lstm_cell_6/addAddV2)lstm_3/while/lstm_cell_6/MatMul:product:0+lstm_3/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/add?
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_3/while/lstm_cell_6/BiasAddBiasAdd lstm_3/while/lstm_cell_6/add:z:07lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_3/while/lstm_cell_6/BiasAdd?
(lstm_3/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_6/split/split_dim?
lstm_3/while/lstm_cell_6/splitSplit1lstm_3/while/lstm_cell_6/split/split_dim:output:0)lstm_3/while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_3/while/lstm_cell_6/split?
 lstm_3/while/lstm_cell_6/SigmoidSigmoid'lstm_3/while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_3/while/lstm_cell_6/Sigmoid?
"lstm_3/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_3/while/lstm_cell_6/Sigmoid_1?
lstm_3/while/lstm_cell_6/mulMul&lstm_3/while/lstm_cell_6/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/mul?
lstm_3/while/lstm_cell_6/ReluRelu'lstm_3/while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/Relu?
lstm_3/while/lstm_cell_6/mul_1Mul$lstm_3/while/lstm_cell_6/Sigmoid:y:0+lstm_3/while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/mul_1?
lstm_3/while/lstm_cell_6/add_1AddV2 lstm_3/while/lstm_cell_6/mul:z:0"lstm_3/while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/add_1?
"lstm_3/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_3/while/lstm_cell_6/Sigmoid_2?
lstm_3/while/lstm_cell_6/Relu_1Relu"lstm_3/while/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2!
lstm_3/while/lstm_cell_6/Relu_1?
lstm_3/while/lstm_cell_6/mul_2Mul&lstm_3/while/lstm_cell_6/Sigmoid_2:y:0-lstm_3/while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/mul_2?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y?
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1?
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1?
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_6/mul_2:z:0^lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_3/while/Identity_4?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_6/add_1:z:0^lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_3/while/Identity_5?
lstm_3/while/NoOpNoOp0^lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_3/while/NoOp"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_6_matmul_readvariableop_resource9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2b
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_381006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_381006___redundant_placeholder04
0while_while_cond_381006___redundant_placeholder14
0while_while_cond_381006___redundant_placeholder24
0while_while_cond_381006___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381174

inputs 
lstm_3_381148:	?!
lstm_3_381150:
??
lstm_3_381152:	?!
lstm_4_381156:
??!
lstm_4_381158:
??
lstm_4_381160:	?!
dense_3_381163:	?@
dense_3_381165:@ 
dense_4_381168:@
dense_4_381170:
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?lstm_3/StatefulPartitionedCall?lstm_4/StatefulPartitionedCall?
lambda_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3811142
lambda_3/PartitionedCall?
lstm_3/StatefulPartitionedCallStatefulPartitionedCall!lambda_3/PartitionedCall:output:0lstm_3_381148lstm_3_381150lstm_3_381152*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3810912 
lstm_3/StatefulPartitionedCall?
lambda_4/PartitionedCallPartitionedCall'lstm_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_4_layer_call_and_return_conditional_losses_3809242
lambda_4/PartitionedCall?
lstm_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0lstm_4_381156lstm_4_381158lstm_4_381160*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3809012 
lstm_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_3_381163dense_3_381165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_3806712!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_381168dense_4_381170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3806872!
dense_4/StatefulPartitionedCall?
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_382580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382580___redundant_placeholder04
0while_while_cond_382580___redundant_placeholder14
0while_while_cond_382580___redundant_placeholder24
0while_while_cond_382580___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383440

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?>
?
while_body_383251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_4_layer_call_fn_382720

inputs
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3806522
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%model_3_lstm_lstm_4_while_cond_378963D
@model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_loop_counterJ
Fmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_maximum_iterations)
%model_3_lstm_lstm_4_while_placeholder+
'model_3_lstm_lstm_4_while_placeholder_1+
'model_3_lstm_lstm_4_while_placeholder_2+
'model_3_lstm_lstm_4_while_placeholder_3F
Bmodel_3_lstm_lstm_4_while_less_model_3_lstm_lstm_4_strided_slice_1\
Xmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_cond_378963___redundant_placeholder0\
Xmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_cond_378963___redundant_placeholder1\
Xmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_cond_378963___redundant_placeholder2\
Xmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_cond_378963___redundant_placeholder3&
"model_3_lstm_lstm_4_while_identity
?
model_3_lstm/lstm_4/while/LessLess%model_3_lstm_lstm_4_while_placeholderBmodel_3_lstm_lstm_4_while_less_model_3_lstm_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2 
model_3_lstm/lstm_4/while/Less?
"model_3_lstm/lstm_4/while/IdentityIdentity"model_3_lstm/lstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2$
"model_3_lstm/lstm_4/while/Identity"Q
"model_3_lstm_lstm_4_while_identity+model_3_lstm/lstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_380817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_380901

inputs>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_380817*
condR
while_cond_380816*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
while_body_380402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_380816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380816___redundant_placeholder04
0while_while_cond_380816___redundant_placeholder14
0while_while_cond_380816___redundant_placeholder24
0while_while_cond_380816___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
'__inference_lstm_4_layer_call_fn_382709
inputs_0
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_4_layer_call_and_return_conditional_losses_3800592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_382948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382948___redundant_placeholder04
0while_while_cond_382948___redundant_placeholder14
0while_while_cond_382948___redundant_placeholder24
0while_while_cond_382948___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?>
?
while_body_383100
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_7_matmul_readvariableop_resource_0:
??H
4while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_7_matmul_readvariableop_resource:
??F
2while_lstm_cell_7_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_7_biasadd_readvariableop_resource:	???(while/lstm_cell_7/BiasAdd/ReadVariableOp?'while/lstm_cell_7/MatMul/ReadVariableOp?)while/lstm_cell_7/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'while/lstm_cell_7/MatMul/ReadVariableOp?
while/lstm_cell_7/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul?
)while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_7/MatMul_1/ReadVariableOp?
while/lstm_cell_7/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/MatMul_1?
while/lstm_cell_7/addAddV2"while/lstm_cell_7/MatMul:product:0$while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add?
(while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_7/BiasAdd/ReadVariableOp?
while/lstm_cell_7/BiasAddBiasAddwhile/lstm_cell_7/add:z:00while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/BiasAdd?
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_7/split/split_dim?
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0"while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_7/split?
while/lstm_cell_7/SigmoidSigmoid while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid?
while/lstm_cell_7/Sigmoid_1Sigmoid while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_1?
while/lstm_cell_7/mulMulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul?
while/lstm_cell_7/ReluRelu while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu?
while/lstm_cell_7/mul_1Mulwhile/lstm_cell_7/Sigmoid:y:0$while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_1?
while/lstm_cell_7/add_1AddV2while/lstm_cell_7/mul:z:0while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/add_1?
while/lstm_cell_7/Sigmoid_2Sigmoid while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Sigmoid_2?
while/lstm_cell_7/Relu_1Reluwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/Relu_1?
while/lstm_cell_7/mul_2Mulwhile/lstm_cell_7/Sigmoid_2:y:0&while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_7/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_7/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_7/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_7/BiasAdd/ReadVariableOp(^while/lstm_cell_7/MatMul/ReadVariableOp*^while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_7_biasadd_readvariableop_resource3while_lstm_cell_7_biasadd_readvariableop_resource_0"j
2while_lstm_cell_7_matmul_1_readvariableop_resource4while_lstm_cell_7_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_7_matmul_readvariableop_resource2while_lstm_cell_7_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_7/BiasAdd/ReadVariableOp(while/lstm_cell_7/BiasAdd/ReadVariableOp2R
'while/lstm_cell_7/MatMul/ReadVariableOp'while/lstm_cell_7/MatMul/ReadVariableOp2V
)while/lstm_cell_7/MatMul_1/ReadVariableOp)while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
-__inference_model_3_lstm_layer_call_fn_381365

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_3811742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_383099
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_383099___redundant_placeholder04
0while_while_cond_383099___redundant_placeholder14
0while_while_cond_383099___redundant_placeholder24
0while_while_cond_383099___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
%model_3_lstm_lstm_3_while_cond_378814D
@model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_loop_counterJ
Fmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_maximum_iterations)
%model_3_lstm_lstm_3_while_placeholder+
'model_3_lstm_lstm_3_while_placeholder_1+
'model_3_lstm_lstm_3_while_placeholder_2+
'model_3_lstm_lstm_3_while_placeholder_3F
Bmodel_3_lstm_lstm_3_while_less_model_3_lstm_lstm_3_strided_slice_1\
Xmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_cond_378814___redundant_placeholder0\
Xmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_cond_378814___redundant_placeholder1\
Xmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_cond_378814___redundant_placeholder2\
Xmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_cond_378814___redundant_placeholder3&
"model_3_lstm_lstm_3_while_identity
?
model_3_lstm/lstm_3/while/LessLess%model_3_lstm_lstm_3_while_placeholderBmodel_3_lstm_lstm_3_while_less_model_3_lstm_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2 
model_3_lstm/lstm_3/while/Less?
"model_3_lstm/lstm_3/while/IdentityIdentity"model_3_lstm/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2$
"model_3_lstm/lstm_3/while/Identity"Q
"model_3_lstm_lstm_3_while_identity+model_3_lstm/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?S
?
__inference__traced_save_383704
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_3_lstm_cell_6_kernel_read_readvariableopB
>savev2_lstm_3_lstm_cell_6_recurrent_kernel_read_readvariableop6
2savev2_lstm_3_lstm_cell_6_bias_read_readvariableop8
4savev2_lstm_4_lstm_cell_7_kernel_read_readvariableopB
>savev2_lstm_4_lstm_cell_7_recurrent_kernel_read_readvariableop6
2savev2_lstm_4_lstm_cell_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_6_kernel_m_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_6_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_6_bias_m_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_7_kernel_m_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_7_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_7_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop?
;savev2_adam_lstm_3_lstm_cell_6_kernel_v_read_readvariableopI
Esavev2_adam_lstm_3_lstm_cell_6_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_3_lstm_cell_6_bias_v_read_readvariableop?
;savev2_adam_lstm_4_lstm_cell_7_kernel_v_read_readvariableopI
Esavev2_adam_lstm_4_lstm_cell_7_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_4_lstm_cell_7_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_3_lstm_cell_6_kernel_read_readvariableop>savev2_lstm_3_lstm_cell_6_recurrent_kernel_read_readvariableop2savev2_lstm_3_lstm_cell_6_bias_read_readvariableop4savev2_lstm_4_lstm_cell_7_kernel_read_readvariableop>savev2_lstm_4_lstm_cell_7_recurrent_kernel_read_readvariableop2savev2_lstm_4_lstm_cell_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop;savev2_adam_lstm_3_lstm_cell_6_kernel_m_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_6_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_3_lstm_cell_6_bias_m_read_readvariableop;savev2_adam_lstm_4_lstm_cell_7_kernel_m_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_7_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_4_lstm_cell_7_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop;savev2_adam_lstm_3_lstm_cell_6_kernel_v_read_readvariableopEsavev2_adam_lstm_3_lstm_cell_6_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_3_lstm_cell_6_bias_v_read_readvariableop;savev2_adam_lstm_4_lstm_cell_7_kernel_v_read_readvariableopEsavev2_adam_lstm_4_lstm_cell_7_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_4_lstm_cell_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?@:@:@:: : : : : :	?:
??:?:
??:
??:?: : :	?@:@:@::	?:
??:?:
??:
??:?:	?@:@:@::	?:
??:?:
??:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::% !

_output_shapes
:	?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&

_output_shapes
: 
?F
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_379849

inputs&
lstm_cell_7_379767:
??&
lstm_cell_7_379769:
??!
lstm_cell_7_379771:	?
identity??#lstm_cell_7/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_379767lstm_cell_7_379769lstm_cell_7_379771*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3797662%
#lstm_cell_7/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_379767lstm_cell_7_379769lstm_cell_7_379771*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_379780*
condR
while_cond_379779*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity|
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?>
?
while_body_382128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383570

inputs
states_0
states_12
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?>
?
while_body_381007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?F
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_379429

inputs%
lstm_cell_6_379347:	?&
lstm_cell_6_379349:
??!
lstm_cell_6_379351:	?
identity??#lstm_cell_6/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_6/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_6_379347lstm_cell_6_379349lstm_cell_6_379351*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3792822%
#lstm_cell_6/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_6_379347lstm_cell_6_379349lstm_cell_6_379351*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_379360*
condR
while_cond_379359*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity|
NoOpNoOp$^lstm_cell_6/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_6/StatefulPartitionedCall#lstm_cell_6/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?[
?
%model_3_lstm_lstm_3_while_body_378815D
@model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_loop_counterJ
Fmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_maximum_iterations)
%model_3_lstm_lstm_3_while_placeholder+
'model_3_lstm_lstm_3_while_placeholder_1+
'model_3_lstm_lstm_3_while_placeholder_2+
'model_3_lstm_lstm_3_while_placeholder_3C
?model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_strided_slice_1_0
{model_3_lstm_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_3_tensorarrayunstack_tensorlistfromtensor_0Y
Fmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0:	?\
Hmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??V
Gmodel_3_lstm_lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?&
"model_3_lstm_lstm_3_while_identity(
$model_3_lstm_lstm_3_while_identity_1(
$model_3_lstm_lstm_3_while_identity_2(
$model_3_lstm_lstm_3_while_identity_3(
$model_3_lstm_lstm_3_while_identity_4(
$model_3_lstm_lstm_3_while_identity_5A
=model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_strided_slice_1}
ymodel_3_lstm_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_3_tensorarrayunstack_tensorlistfromtensorW
Dmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_readvariableop_resource:	?Z
Fmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource:
??T
Emodel_3_lstm_lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource:	???<model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?;model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?=model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
Kmodel_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Kmodel_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=model_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{model_3_lstm_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%model_3_lstm_lstm_3_while_placeholderTmodel_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02?
=model_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItem?
;model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOpFmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02=
;model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?
,model_3_lstm/lstm_3/while/lstm_cell_6/MatMulMatMulDmodel_3_lstm/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0Cmodel_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,model_3_lstm/lstm_3/while/lstm_cell_6/MatMul?
=model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOpHmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
.model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1MatMul'model_3_lstm_lstm_3_while_placeholder_2Emodel_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1?
)model_3_lstm/lstm_3/while/lstm_cell_6/addAddV26model_3_lstm/lstm_3/while/lstm_cell_6/MatMul:product:08model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_3/while/lstm_cell_6/add?
<model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOpGmodel_3_lstm_lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?
-model_3_lstm/lstm_3/while/lstm_cell_6/BiasAddBiasAdd-model_3_lstm/lstm_3/while/lstm_cell_6/add:z:0Dmodel_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd?
5model_3_lstm/lstm_3/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5model_3_lstm/lstm_3/while/lstm_cell_6/split/split_dim?
+model_3_lstm/lstm_3/while/lstm_cell_6/splitSplit>model_3_lstm/lstm_3/while/lstm_cell_6/split/split_dim:output:06model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+model_3_lstm/lstm_3/while/lstm_cell_6/split?
-model_3_lstm/lstm_3/while/lstm_cell_6/SigmoidSigmoid4model_3_lstm/lstm_3/while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2/
-model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid?
/model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_1Sigmoid4model_3_lstm/lstm_3/while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????21
/model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_1?
)model_3_lstm/lstm_3/while/lstm_cell_6/mulMul3model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_1:y:0'model_3_lstm_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_3/while/lstm_cell_6/mul?
*model_3_lstm/lstm_3/while/lstm_cell_6/ReluRelu4model_3_lstm/lstm_3/while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2,
*model_3_lstm/lstm_3/while/lstm_cell_6/Relu?
+model_3_lstm/lstm_3/while/lstm_cell_6/mul_1Mul1model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid:y:08model_3_lstm/lstm_3/while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_3/while/lstm_cell_6/mul_1?
+model_3_lstm/lstm_3/while/lstm_cell_6/add_1AddV2-model_3_lstm/lstm_3/while/lstm_cell_6/mul:z:0/model_3_lstm/lstm_3/while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_3/while/lstm_cell_6/add_1?
/model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_2Sigmoid4model_3_lstm/lstm_3/while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????21
/model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_2?
,model_3_lstm/lstm_3/while/lstm_cell_6/Relu_1Relu/model_3_lstm/lstm_3/while/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,model_3_lstm/lstm_3/while/lstm_cell_6/Relu_1?
+model_3_lstm/lstm_3/while/lstm_cell_6/mul_2Mul3model_3_lstm/lstm_3/while/lstm_cell_6/Sigmoid_2:y:0:model_3_lstm/lstm_3/while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_3/while/lstm_cell_6/mul_2?
>model_3_lstm/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'model_3_lstm_lstm_3_while_placeholder_1%model_3_lstm_lstm_3_while_placeholder/model_3_lstm/lstm_3/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>model_3_lstm/lstm_3/while/TensorArrayV2Write/TensorListSetItem?
model_3_lstm/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
model_3_lstm/lstm_3/while/add/y?
model_3_lstm/lstm_3/while/addAddV2%model_3_lstm_lstm_3_while_placeholder(model_3_lstm/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
model_3_lstm/lstm_3/while/add?
!model_3_lstm/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3_lstm/lstm_3/while/add_1/y?
model_3_lstm/lstm_3/while/add_1AddV2@model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_loop_counter*model_3_lstm/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
model_3_lstm/lstm_3/while/add_1?
"model_3_lstm/lstm_3/while/IdentityIdentity#model_3_lstm/lstm_3/while/add_1:z:0^model_3_lstm/lstm_3/while/NoOp*
T0*
_output_shapes
: 2$
"model_3_lstm/lstm_3/while/Identity?
$model_3_lstm/lstm_3/while/Identity_1IdentityFmodel_3_lstm_lstm_3_while_model_3_lstm_lstm_3_while_maximum_iterations^model_3_lstm/lstm_3/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_3/while/Identity_1?
$model_3_lstm/lstm_3/while/Identity_2Identity!model_3_lstm/lstm_3/while/add:z:0^model_3_lstm/lstm_3/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_3/while/Identity_2?
$model_3_lstm/lstm_3/while/Identity_3IdentityNmodel_3_lstm/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_3_lstm/lstm_3/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_3/while/Identity_3?
$model_3_lstm/lstm_3/while/Identity_4Identity/model_3_lstm/lstm_3/while/lstm_cell_6/mul_2:z:0^model_3_lstm/lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_3/while/Identity_4?
$model_3_lstm/lstm_3/while/Identity_5Identity/model_3_lstm/lstm_3/while/lstm_cell_6/add_1:z:0^model_3_lstm/lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_3/while/Identity_5?
model_3_lstm/lstm_3/while/NoOpNoOp=^model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp<^model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp>^model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
model_3_lstm/lstm_3/while/NoOp"Q
"model_3_lstm_lstm_3_while_identity+model_3_lstm/lstm_3/while/Identity:output:0"U
$model_3_lstm_lstm_3_while_identity_1-model_3_lstm/lstm_3/while/Identity_1:output:0"U
$model_3_lstm_lstm_3_while_identity_2-model_3_lstm/lstm_3/while/Identity_2:output:0"U
$model_3_lstm_lstm_3_while_identity_3-model_3_lstm/lstm_3/while/Identity_3:output:0"U
$model_3_lstm_lstm_3_while_identity_4-model_3_lstm/lstm_3/while/Identity_4:output:0"U
$model_3_lstm_lstm_3_while_identity_5-model_3_lstm/lstm_3/while/Identity_5:output:0"?
Emodel_3_lstm_lstm_3_while_lstm_cell_6_biasadd_readvariableop_resourceGmodel_3_lstm_lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0"?
Fmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resourceHmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0"?
Dmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_readvariableop_resourceFmodel_3_lstm_lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0"?
=model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_strided_slice_1?model_3_lstm_lstm_3_while_model_3_lstm_lstm_3_strided_slice_1_0"?
ymodel_3_lstm_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_3_tensorarrayunstack_tensorlistfromtensor{model_3_lstm_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2|
<model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp<model_3_lstm/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp2z
;model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp;model_3_lstm/lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp2~
=model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp=model_3_lstm/lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
-__inference_model_3_lstm_layer_call_fn_380717
input_3
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_3806942
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?
E
)__inference_lambda_3_layer_call_fn_382000

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_lambda_3_layer_call_and_return_conditional_losses_3803342
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_381315
input_3
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_3790612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_3
?
?
,__inference_lstm_cell_6_layer_call_fn_383408

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3792822
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?%
?
while_body_379990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_7_380014_0:
??.
while_lstm_cell_7_380016_0:
??)
while_lstm_cell_7_380018_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_7_380014:
??,
while_lstm_cell_7_380016:
??'
while_lstm_cell_7_380018:	???)while/lstm_cell_7/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_380014_0while_lstm_cell_7_380016_0while_lstm_cell_7_380018_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_3799122+
)while/lstm_cell_7/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_7_380014while_lstm_cell_7_380014_0"6
while_lstm_cell_7_380016while_lstm_cell_7_380016_0"6
while_lstm_cell_7_380018while_lstm_cell_7_380018_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
%model_3_lstm_lstm_4_while_body_378964D
@model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_loop_counterJ
Fmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_maximum_iterations)
%model_3_lstm_lstm_4_while_placeholder+
'model_3_lstm_lstm_4_while_placeholder_1+
'model_3_lstm_lstm_4_while_placeholder_2+
'model_3_lstm_lstm_4_while_placeholder_3C
?model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_strided_slice_1_0
{model_3_lstm_lstm_4_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_4_tensorarrayunstack_tensorlistfromtensor_0Z
Fmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0:
??\
Hmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??V
Gmodel_3_lstm_lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?&
"model_3_lstm_lstm_4_while_identity(
$model_3_lstm_lstm_4_while_identity_1(
$model_3_lstm_lstm_4_while_identity_2(
$model_3_lstm_lstm_4_while_identity_3(
$model_3_lstm_lstm_4_while_identity_4(
$model_3_lstm_lstm_4_while_identity_5A
=model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_strided_slice_1}
ymodel_3_lstm_lstm_4_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_4_tensorarrayunstack_tensorlistfromtensorX
Dmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_readvariableop_resource:
??Z
Fmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource:
??T
Emodel_3_lstm_lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource:	???<model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?;model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?=model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
Kmodel_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2M
Kmodel_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
=model_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{model_3_lstm_lstm_4_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_4_tensorarrayunstack_tensorlistfromtensor_0%model_3_lstm_lstm_4_while_placeholderTmodel_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02?
=model_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItem?
;model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOpFmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02=
;model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?
,model_3_lstm/lstm_4/while/lstm_cell_7/MatMulMatMulDmodel_3_lstm/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0Cmodel_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,model_3_lstm/lstm_4/while/lstm_cell_7/MatMul?
=model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOpHmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
.model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1MatMul'model_3_lstm_lstm_4_while_placeholder_2Emodel_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1?
)model_3_lstm/lstm_4/while/lstm_cell_7/addAddV26model_3_lstm/lstm_4/while/lstm_cell_7/MatMul:product:08model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_4/while/lstm_cell_7/add?
<model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOpGmodel_3_lstm_lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02>
<model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?
-model_3_lstm/lstm_4/while/lstm_cell_7/BiasAddBiasAdd-model_3_lstm/lstm_4/while/lstm_cell_7/add:z:0Dmodel_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd?
5model_3_lstm/lstm_4/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5model_3_lstm/lstm_4/while/lstm_cell_7/split/split_dim?
+model_3_lstm/lstm_4/while/lstm_cell_7/splitSplit>model_3_lstm/lstm_4/while/lstm_cell_7/split/split_dim:output:06model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+model_3_lstm/lstm_4/while/lstm_cell_7/split?
-model_3_lstm/lstm_4/while/lstm_cell_7/SigmoidSigmoid4model_3_lstm/lstm_4/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2/
-model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid?
/model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_1Sigmoid4model_3_lstm/lstm_4/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????21
/model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_1?
)model_3_lstm/lstm_4/while/lstm_cell_7/mulMul3model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_1:y:0'model_3_lstm_lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2+
)model_3_lstm/lstm_4/while/lstm_cell_7/mul?
*model_3_lstm/lstm_4/while/lstm_cell_7/ReluRelu4model_3_lstm/lstm_4/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2,
*model_3_lstm/lstm_4/while/lstm_cell_7/Relu?
+model_3_lstm/lstm_4/while/lstm_cell_7/mul_1Mul1model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid:y:08model_3_lstm/lstm_4/while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_4/while/lstm_cell_7/mul_1?
+model_3_lstm/lstm_4/while/lstm_cell_7/add_1AddV2-model_3_lstm/lstm_4/while/lstm_cell_7/mul:z:0/model_3_lstm/lstm_4/while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_4/while/lstm_cell_7/add_1?
/model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_2Sigmoid4model_3_lstm/lstm_4/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????21
/model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_2?
,model_3_lstm/lstm_4/while/lstm_cell_7/Relu_1Relu/model_3_lstm/lstm_4/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,model_3_lstm/lstm_4/while/lstm_cell_7/Relu_1?
+model_3_lstm/lstm_4/while/lstm_cell_7/mul_2Mul3model_3_lstm/lstm_4/while/lstm_cell_7/Sigmoid_2:y:0:model_3_lstm/lstm_4/while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2-
+model_3_lstm/lstm_4/while/lstm_cell_7/mul_2?
>model_3_lstm/lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'model_3_lstm_lstm_4_while_placeholder_1%model_3_lstm_lstm_4_while_placeholder/model_3_lstm/lstm_4/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>model_3_lstm/lstm_4/while/TensorArrayV2Write/TensorListSetItem?
model_3_lstm/lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
model_3_lstm/lstm_4/while/add/y?
model_3_lstm/lstm_4/while/addAddV2%model_3_lstm_lstm_4_while_placeholder(model_3_lstm/lstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
model_3_lstm/lstm_4/while/add?
!model_3_lstm/lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3_lstm/lstm_4/while/add_1/y?
model_3_lstm/lstm_4/while/add_1AddV2@model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_loop_counter*model_3_lstm/lstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
model_3_lstm/lstm_4/while/add_1?
"model_3_lstm/lstm_4/while/IdentityIdentity#model_3_lstm/lstm_4/while/add_1:z:0^model_3_lstm/lstm_4/while/NoOp*
T0*
_output_shapes
: 2$
"model_3_lstm/lstm_4/while/Identity?
$model_3_lstm/lstm_4/while/Identity_1IdentityFmodel_3_lstm_lstm_4_while_model_3_lstm_lstm_4_while_maximum_iterations^model_3_lstm/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_4/while/Identity_1?
$model_3_lstm/lstm_4/while/Identity_2Identity!model_3_lstm/lstm_4/while/add:z:0^model_3_lstm/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_4/while/Identity_2?
$model_3_lstm/lstm_4/while/Identity_3IdentityNmodel_3_lstm/lstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_3_lstm/lstm_4/while/NoOp*
T0*
_output_shapes
: 2&
$model_3_lstm/lstm_4/while/Identity_3?
$model_3_lstm/lstm_4/while/Identity_4Identity/model_3_lstm/lstm_4/while/lstm_cell_7/mul_2:z:0^model_3_lstm/lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_4/while/Identity_4?
$model_3_lstm/lstm_4/while/Identity_5Identity/model_3_lstm/lstm_4/while/lstm_cell_7/add_1:z:0^model_3_lstm/lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2&
$model_3_lstm/lstm_4/while/Identity_5?
model_3_lstm/lstm_4/while/NoOpNoOp=^model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp<^model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp>^model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
model_3_lstm/lstm_4/while/NoOp"Q
"model_3_lstm_lstm_4_while_identity+model_3_lstm/lstm_4/while/Identity:output:0"U
$model_3_lstm_lstm_4_while_identity_1-model_3_lstm/lstm_4/while/Identity_1:output:0"U
$model_3_lstm_lstm_4_while_identity_2-model_3_lstm/lstm_4/while/Identity_2:output:0"U
$model_3_lstm_lstm_4_while_identity_3-model_3_lstm/lstm_4/while/Identity_3:output:0"U
$model_3_lstm_lstm_4_while_identity_4-model_3_lstm/lstm_4/while/Identity_4:output:0"U
$model_3_lstm_lstm_4_while_identity_5-model_3_lstm/lstm_4/while/Identity_5:output:0"?
Emodel_3_lstm_lstm_4_while_lstm_cell_7_biasadd_readvariableop_resourceGmodel_3_lstm_lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0"?
Fmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resourceHmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0"?
Dmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_readvariableop_resourceFmodel_3_lstm_lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0"?
=model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_strided_slice_1?model_3_lstm_lstm_4_while_model_3_lstm_lstm_4_strided_slice_1_0"?
ymodel_3_lstm_lstm_4_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_4_tensorarrayunstack_tensorlistfromtensor{model_3_lstm_lstm_4_while_tensorarrayv2read_tensorlistgetitem_model_3_lstm_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2|
<model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp<model_3_lstm/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp2z
;model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp;model_3_lstm/lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp2~
=model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp=model_3_lstm/lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_lambda_3_layer_call_and_return_conditional_losses_382011

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382665

inputs=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382581*
condR
while_cond_382580*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_380401
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_380401___redundant_placeholder04
0while_while_cond_380401___redundant_placeholder14
0while_while_cond_380401___redundant_placeholder24
0while_while_cond_380401___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383184

inputs>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_383100*
condR
while_cond_383099*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
lstm_4_while_cond_381897*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1B
>lstm_4_while_lstm_4_while_cond_381897___redundant_placeholder0B
>lstm_4_while_lstm_4_while_cond_381897___redundant_placeholder1B
>lstm_4_while_lstm_4_while_cond_381897___redundant_placeholder2B
>lstm_4_while_lstm_4_while_cond_381897___redundant_placeholder3
lstm_4_while_identity
?
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383033
inputs_0>
*lstm_cell_7_matmul_readvariableop_resource:
??@
,lstm_cell_7_matmul_1_readvariableop_resource:
??:
+lstm_cell_7_biasadd_readvariableop_resource:	?
identity??"lstm_cell_7/BiasAdd/ReadVariableOp?!lstm_cell_7/MatMul/ReadVariableOp?#lstm_cell_7/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_7/MatMul/ReadVariableOpReadVariableOp*lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!lstm_cell_7/MatMul/ReadVariableOp?
lstm_cell_7/MatMulMatMulstrided_slice_2:output:0)lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul?
#lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_cell_7/MatMul_1MatMulzeros:output:0+lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/MatMul_1?
lstm_cell_7/addAddV2lstm_cell_7/MatMul:product:0lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add?
"lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_cell_7/BiasAddBiasAddlstm_cell_7/add:z:0*lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/BiasAdd|
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_7/split/split_dim?
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_7/split?
lstm_cell_7/SigmoidSigmoidlstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid?
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_1?
lstm_cell_7/mulMullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul{
lstm_cell_7/ReluRelulstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu?
lstm_cell_7/mul_1Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_1?
lstm_cell_7/add_1AddV2lstm_cell_7/mul:z:0lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/add_1?
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Sigmoid_2z
lstm_cell_7/Relu_1Relulstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/Relu_1?
lstm_cell_7/mul_2Mullstm_cell_7/Sigmoid_2:y:0 lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_7/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_7_matmul_readvariableop_resource,lstm_cell_7_matmul_1_readvariableop_resource+lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382949*
condR
while_cond_382948*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_7/BiasAdd/ReadVariableOp"^lstm_cell_7/MatMul/ReadVariableOp$^lstm_cell_7/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2H
"lstm_cell_7/BiasAdd/ReadVariableOp"lstm_cell_7/BiasAdd/ReadVariableOp2F
!lstm_cell_7/MatMul/ReadVariableOp!lstm_cell_7/MatMul/ReadVariableOp2J
#lstm_cell_7/MatMul_1/ReadVariableOp#lstm_cell_7/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_383250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_383250___redundant_placeholder04
0while_while_cond_383250___redundant_placeholder14
0while_while_cond_383250___redundant_placeholder24
0while_while_cond_383250___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
,__inference_lstm_cell_6_layer_call_fn_383391

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_3791362
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?	
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381680

inputsD
1lstm_3_lstm_cell_6_matmul_readvariableop_resource:	?G
3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource:
??A
2lstm_3_lstm_cell_6_biasadd_readvariableop_resource:	?E
1lstm_4_lstm_cell_7_matmul_readvariableop_resource:
??G
3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource:
??A
2lstm_4_lstm_cell_7_biasadd_readvariableop_resource:	?9
&dense_3_matmul_readvariableop_resource:	?@5
'dense_3_biasadd_readvariableop_resource:@8
&dense_4_matmul_readvariableop_resource:@5
'dense_4_biasadd_readvariableop_resource:
identity??dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?(lstm_3/lstm_cell_6/MatMul/ReadVariableOp?*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?lstm_3/while?)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?(lstm_4/lstm_cell_7/MatMul/ReadVariableOp?*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?lstm_4/whilet
lambda_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_3/ExpandDims/dim?
lambda_3/ExpandDims
ExpandDimsinputs lambda_3/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_3/ExpandDimsh
lstm_3/ShapeShapelambda_3/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_3/Shape?
lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice/stack?
lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_1?
lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_3/strided_slice/stack_2?
lstm_3/strided_sliceStridedSlicelstm_3/Shape:output:0#lstm_3/strided_slice/stack:output:0%lstm_3/strided_slice/stack_1:output:0%lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slicek
lstm_3/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/mul/y?
lstm_3/zeros/mulMullstm_3/strided_slice:output:0lstm_3/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/mulm
lstm_3/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/Less/y?
lstm_3/zeros/LessLesslstm_3/zeros/mul:z:0lstm_3/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros/Lessq
lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros/packed/1?
lstm_3/zeros/packedPacklstm_3/strided_slice:output:0lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros/packedm
lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros/Const?
lstm_3/zerosFilllstm_3/zeros/packed:output:0lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/zeroso
lstm_3/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/mul/y?
lstm_3/zeros_1/mulMullstm_3/strided_slice:output:0lstm_3/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/mulq
lstm_3/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/Less/y?
lstm_3/zeros_1/LessLesslstm_3/zeros_1/mul:z:0lstm_3/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_3/zeros_1/Lessu
lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_3/zeros_1/packed/1?
lstm_3/zeros_1/packedPacklstm_3/strided_slice:output:0 lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_3/zeros_1/packedq
lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/zeros_1/Const?
lstm_3/zeros_1Filllstm_3/zeros_1/packed:output:0lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/zeros_1?
lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose/perm?
lstm_3/transpose	Transposelambda_3/ExpandDims:output:0lstm_3/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_3/transposed
lstm_3/Shape_1Shapelstm_3/transpose:y:0*
T0*
_output_shapes
:2
lstm_3/Shape_1?
lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_1/stack?
lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_1?
lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_1/stack_2?
lstm_3/strided_slice_1StridedSlicelstm_3/Shape_1:output:0%lstm_3/strided_slice_1/stack:output:0'lstm_3/strided_slice_1/stack_1:output:0'lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_3/strided_slice_1?
"lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_3/TensorArrayV2/element_shape?
lstm_3/TensorArrayV2TensorListReserve+lstm_3/TensorArrayV2/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2?
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_3/transpose:y:0Elstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_3/TensorArrayUnstack/TensorListFromTensor?
lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_3/strided_slice_2/stack?
lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_1?
lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_2/stack_2?
lstm_3/strided_slice_2StridedSlicelstm_3/transpose:y:0%lstm_3/strided_slice_2/stack:output:0'lstm_3/strided_slice_2/stack_1:output:0'lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_3/strided_slice_2?
(lstm_3/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp1lstm_3_lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(lstm_3/lstm_cell_6/MatMul/ReadVariableOp?
lstm_3/lstm_cell_6/MatMulMatMullstm_3/strided_slice_2:output:00lstm_3/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/MatMul?
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_3/lstm_cell_6/MatMul_1MatMullstm_3/zeros:output:02lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/MatMul_1?
lstm_3/lstm_cell_6/addAddV2#lstm_3/lstm_cell_6/MatMul:product:0%lstm_3/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/add?
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp2lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_3/lstm_cell_6/BiasAddBiasAddlstm_3/lstm_cell_6/add:z:01lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/BiasAdd?
"lstm_3/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_3/lstm_cell_6/split/split_dim?
lstm_3/lstm_cell_6/splitSplit+lstm_3/lstm_cell_6/split/split_dim:output:0#lstm_3/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_3/lstm_cell_6/split?
lstm_3/lstm_cell_6/SigmoidSigmoid!lstm_3/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid?
lstm_3/lstm_cell_6/Sigmoid_1Sigmoid!lstm_3/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid_1?
lstm_3/lstm_cell_6/mulMul lstm_3/lstm_cell_6/Sigmoid_1:y:0lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul?
lstm_3/lstm_cell_6/ReluRelu!lstm_3/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Relu?
lstm_3/lstm_cell_6/mul_1Mullstm_3/lstm_cell_6/Sigmoid:y:0%lstm_3/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul_1?
lstm_3/lstm_cell_6/add_1AddV2lstm_3/lstm_cell_6/mul:z:0lstm_3/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/add_1?
lstm_3/lstm_cell_6/Sigmoid_2Sigmoid!lstm_3/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Sigmoid_2?
lstm_3/lstm_cell_6/Relu_1Relulstm_3/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/Relu_1?
lstm_3/lstm_cell_6/mul_2Mul lstm_3/lstm_cell_6/Sigmoid_2:y:0'lstm_3/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_3/lstm_cell_6/mul_2?
$lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_3/TensorArrayV2_1/element_shape?
lstm_3/TensorArrayV2_1TensorListReserve-lstm_3/TensorArrayV2_1/element_shape:output:0lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_3/TensorArrayV2_1\
lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/time?
lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_3/while/maximum_iterationsx
lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_3/while/loop_counter?
lstm_3/whileWhile"lstm_3/while/loop_counter:output:0(lstm_3/while/maximum_iterations:output:0lstm_3/time:output:0lstm_3/TensorArrayV2_1:handle:0lstm_3/zeros:output:0lstm_3/zeros_1:output:0lstm_3/strided_slice_1:output:0>lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_3_lstm_cell_6_matmul_readvariableop_resource3lstm_3_lstm_cell_6_matmul_1_readvariableop_resource2lstm_3_lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_3_while_body_381434*$
condR
lstm_3_while_cond_381433*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_3/while?
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_3/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_3/TensorArrayV2Stack/TensorListStackTensorListStacklstm_3/while:output:3@lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_3/TensorArrayV2Stack/TensorListStack?
lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_3/strided_slice_3/stack?
lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_3/strided_slice_3/stack_1?
lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_3/strided_slice_3/stack_2?
lstm_3/strided_slice_3StridedSlice2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_3/strided_slice_3/stack:output:0'lstm_3/strided_slice_3/stack_1:output:0'lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_3/strided_slice_3?
lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_3/transpose_1/perm?
lstm_3/transpose_1	Transpose2lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_3/transpose_1t
lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_3/runtimet
lambda_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_4/ExpandDims/dim?
lambda_4/ExpandDims
ExpandDimslstm_3/strided_slice_3:output:0 lambda_4/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
lambda_4/ExpandDimsh
lstm_4/ShapeShapelambda_4/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_4/Shape?
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice/stack?
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_1?
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_4/strided_slice/stack_2?
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slicek
lstm_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/mul/y?
lstm_4/zeros/mulMullstm_4/strided_slice:output:0lstm_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/mulm
lstm_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/Less/y?
lstm_4/zeros/LessLesslstm_4/zeros/mul:z:0lstm_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros/Lessq
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros/packed/1?
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros/packedm
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros/Const?
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeroso
lstm_4/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/mul/y?
lstm_4/zeros_1/mulMullstm_4/strided_slice:output:0lstm_4/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/mulq
lstm_4/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/Less/y?
lstm_4/zeros_1/LessLesslstm_4/zeros_1/mul:z:0lstm_4/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_4/zeros_1/Lessu
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_4/zeros_1/packed/1?
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_4/zeros_1/packedq
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/zeros_1/Const?
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/zeros_1?
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose/perm?
lstm_4/transpose	Transposelambda_4/ExpandDims:output:0lstm_4/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transposed
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:2
lstm_4/Shape_1?
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_1/stack?
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_1?
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_1/stack_2?
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_4/strided_slice_1?
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"lstm_4/TensorArrayV2/element_shape?
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2?
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2>
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape?
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_4/TensorArrayUnstack/TensorListFromTensor?
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_4/strided_slice_2/stack?
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_1?
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_2/stack_2?
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_2?
(lstm_4/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp1lstm_4_lstm_cell_7_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(lstm_4/lstm_cell_7/MatMul/ReadVariableOp?
lstm_4/lstm_cell_7/MatMulMatMullstm_4/strided_slice_2:output:00lstm_4/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/MatMul?
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp?
lstm_4/lstm_cell_7/MatMul_1MatMullstm_4/zeros:output:02lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/MatMul_1?
lstm_4/lstm_cell_7/addAddV2#lstm_4/lstm_cell_7/MatMul:product:0%lstm_4/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/add?
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp?
lstm_4/lstm_cell_7/BiasAddBiasAddlstm_4/lstm_cell_7/add:z:01lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/BiasAdd?
"lstm_4/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_4/lstm_cell_7/split/split_dim?
lstm_4/lstm_cell_7/splitSplit+lstm_4/lstm_cell_7/split/split_dim:output:0#lstm_4/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_4/lstm_cell_7/split?
lstm_4/lstm_cell_7/SigmoidSigmoid!lstm_4/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid?
lstm_4/lstm_cell_7/Sigmoid_1Sigmoid!lstm_4/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid_1?
lstm_4/lstm_cell_7/mulMul lstm_4/lstm_cell_7/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul?
lstm_4/lstm_cell_7/ReluRelu!lstm_4/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Relu?
lstm_4/lstm_cell_7/mul_1Mullstm_4/lstm_cell_7/Sigmoid:y:0%lstm_4/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul_1?
lstm_4/lstm_cell_7/add_1AddV2lstm_4/lstm_cell_7/mul:z:0lstm_4/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/add_1?
lstm_4/lstm_cell_7/Sigmoid_2Sigmoid!lstm_4/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Sigmoid_2?
lstm_4/lstm_cell_7/Relu_1Relulstm_4/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/Relu_1?
lstm_4/lstm_cell_7/mul_2Mul lstm_4/lstm_cell_7/Sigmoid_2:y:0'lstm_4/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_4/lstm_cell_7/mul_2?
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$lstm_4/TensorArrayV2_1/element_shape?
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_4/TensorArrayV2_1\
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/time?
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
lstm_4/while/maximum_iterationsx
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_4/while/loop_counter?
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_4_lstm_cell_7_matmul_readvariableop_resource3lstm_4_lstm_cell_7_matmul_1_readvariableop_resource2lstm_4_lstm_cell_7_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_4_while_body_381583*$
condR
lstm_4_while_cond_381582*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_4/while?
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shape?
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)lstm_4/TensorArrayV2Stack/TensorListStack?
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_4/strided_slice_3/stack?
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_4/strided_slice_3/stack_1?
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_4/strided_slice_3/stack_2?
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_4/strided_slice_3?
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_4/transpose_1/perm?
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_4/transpose_1t
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_4/runtime?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMullstm_4/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_3/BiasAddp
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_3/Relu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_4/BiasAdds
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*^lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp)^lstm_3/lstm_cell_6/MatMul/ReadVariableOp+^lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp^lstm_3/while*^lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp)^lstm_4/lstm_cell_7/MatMul/ReadVariableOp+^lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2V
)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp)lstm_3/lstm_cell_6/BiasAdd/ReadVariableOp2T
(lstm_3/lstm_cell_6/MatMul/ReadVariableOp(lstm_3/lstm_cell_6/MatMul/ReadVariableOp2X
*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp*lstm_3/lstm_cell_6/MatMul_1/ReadVariableOp2
lstm_3/whilelstm_3/while2V
)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp)lstm_4/lstm_cell_7/BiasAdd/ReadVariableOp2T
(lstm_4/lstm_cell_7/MatMul/ReadVariableOp(lstm_4/lstm_cell_7/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp*lstm_4/lstm_cell_7/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_lambda_3_layer_call_and_return_conditional_losses_380334

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
while_body_382581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_6_matmul_readvariableop_resource_0:	?H
4while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??B
3while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_6_matmul_readvariableop_resource:	?F
2while_lstm_cell_6_matmul_1_readvariableop_resource:
??@
1while_lstm_cell_6_biasadd_readvariableop_resource:	???(while/lstm_cell_6/BiasAdd/ReadVariableOp?'while/lstm_cell_6/MatMul/ReadVariableOp?)while/lstm_cell_6/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
'while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/lstm_cell_6/MatMul/ReadVariableOp?
while/lstm_cell_6/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul?
)while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)while/lstm_cell_6/MatMul_1/ReadVariableOp?
while/lstm_cell_6/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/MatMul_1?
while/lstm_cell_6/addAddV2"while/lstm_cell_6/MatMul:product:0$while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add?
(while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/lstm_cell_6/BiasAdd/ReadVariableOp?
while/lstm_cell_6/BiasAddBiasAddwhile/lstm_cell_6/add:z:00while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/BiasAdd?
!while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_6/split/split_dim?
while/lstm_cell_6/splitSplit*while/lstm_cell_6/split/split_dim:output:0"while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_6/split?
while/lstm_cell_6/SigmoidSigmoid while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid?
while/lstm_cell_6/Sigmoid_1Sigmoid while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_1?
while/lstm_cell_6/mulMulwhile/lstm_cell_6/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul?
while/lstm_cell_6/ReluRelu while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu?
while/lstm_cell_6/mul_1Mulwhile/lstm_cell_6/Sigmoid:y:0$while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_1?
while/lstm_cell_6/add_1AddV2while/lstm_cell_6/mul:z:0while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/add_1?
while/lstm_cell_6/Sigmoid_2Sigmoid while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Sigmoid_2?
while/lstm_cell_6/Relu_1Reluwhile/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/Relu_1?
while/lstm_cell_6/mul_2Mulwhile/lstm_cell_6/Sigmoid_2:y:0&while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_6/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_6/mul_2:z:0*
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
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_6/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_6/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_5?

while/NoOpNoOp)^while/lstm_cell_6/BiasAdd/ReadVariableOp(^while/lstm_cell_6/MatMul/ReadVariableOp*^while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_6_biasadd_readvariableop_resource3while_lstm_cell_6_biasadd_readvariableop_resource_0"j
2while_lstm_cell_6_matmul_1_readvariableop_resource4while_lstm_cell_6_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_6_matmul_readvariableop_resource2while_lstm_cell_6_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2T
(while/lstm_cell_6/BiasAdd/ReadVariableOp(while/lstm_cell_6/BiasAdd/ReadVariableOp2R
'while/lstm_cell_6/MatMul/ReadVariableOp'while/lstm_cell_6/MatMul/ReadVariableOp2V
)while/lstm_cell_6/MatMul_1/ReadVariableOp)while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383538

inputs
states_0
states_12
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_382429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_382429___redundant_placeholder04
0while_while_cond_382429___redundant_placeholder14
0while_while_cond_382429___redundant_placeholder24
0while_while_cond_382429___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
`
D__inference_lambda_3_layer_call_and_return_conditional_losses_381114

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_3_while_cond_381433*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_381433___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_381433___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_381433___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_381433___redundant_placeholder3
lstm_3_while_identity
?
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382212
inputs_0=
*lstm_cell_6_matmul_readvariableop_resource:	?@
,lstm_cell_6_matmul_1_readvariableop_resource:
??:
+lstm_cell_6_biasadd_readvariableop_resource:	?
identity??"lstm_cell_6/BiasAdd/ReadVariableOp?!lstm_cell_6/MatMul/ReadVariableOp?#lstm_cell_6/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
!lstm_cell_6/MatMul/ReadVariableOpReadVariableOp*lstm_cell_6_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!lstm_cell_6/MatMul/ReadVariableOp?
lstm_cell_6/MatMulMatMulstrided_slice_2:output:0)lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul?
#lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_6_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#lstm_cell_6/MatMul_1/ReadVariableOp?
lstm_cell_6/MatMul_1MatMulzeros:output:0+lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/MatMul_1?
lstm_cell_6/addAddV2lstm_cell_6/MatMul:product:0lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add?
"lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"lstm_cell_6/BiasAdd/ReadVariableOp?
lstm_cell_6/BiasAddBiasAddlstm_cell_6/add:z:0*lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/BiasAdd|
lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_6/split/split_dim?
lstm_cell_6/splitSplit$lstm_cell_6/split/split_dim:output:0lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_6/split?
lstm_cell_6/SigmoidSigmoidlstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid?
lstm_cell_6/Sigmoid_1Sigmoidlstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_1?
lstm_cell_6/mulMullstm_cell_6/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul{
lstm_cell_6/ReluRelulstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu?
lstm_cell_6/mul_1Mullstm_cell_6/Sigmoid:y:0lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_1?
lstm_cell_6/add_1AddV2lstm_cell_6/mul:z:0lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/add_1?
lstm_cell_6/Sigmoid_2Sigmoidlstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Sigmoid_2z
lstm_cell_6/Relu_1Relulstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/Relu_1?
lstm_cell_6/mul_2Mullstm_cell_6/Sigmoid_2:y:0 lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_6/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_6_matmul_readvariableop_resource,lstm_cell_6_matmul_1_readvariableop_resource+lstm_cell_6_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_382128*
condR
while_cond_382127*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp#^lstm_cell_6/BiasAdd/ReadVariableOp"^lstm_cell_6/MatMul/ReadVariableOp$^lstm_cell_6/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"lstm_cell_6/BiasAdd/ReadVariableOp"lstm_cell_6/BiasAdd/ReadVariableOp2F
!lstm_cell_6/MatMul/ReadVariableOp!lstm_cell_6/MatMul/ReadVariableOp2J
#lstm_cell_6/MatMul_1/ReadVariableOp#lstm_cell_6/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_379359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_379359___redundant_placeholder04
0while_while_cond_379359___redundant_placeholder14
0while_while_cond_379359___redundant_placeholder24
0while_while_cond_379359___redundant_placeholder3
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
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_3_while_cond_381748*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3,
(lstm_3_while_less_lstm_3_strided_slice_1B
>lstm_3_while_lstm_3_while_cond_381748___redundant_placeholder0B
>lstm_3_while_lstm_3_while_cond_381748___redundant_placeholder1B
>lstm_3_while_lstm_3_while_cond_381748___redundant_placeholder2B
>lstm_3_while_lstm_3_while_cond_381748___redundant_placeholder3
lstm_3_while_identity
?
lstm_3/while/LessLesslstm_3_while_placeholder(lstm_3_while_less_lstm_3_strided_slice_1*
T0*
_output_shapes
: 2
lstm_3/while/Lessr
lstm_3/while/IdentityIdentitylstm_3/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_3/while/Identity"7
lstm_3_while_identitylstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
`
D__inference_lambda_4_layer_call_and_return_conditional_losses_382687

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim~

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?

lstm_3_while_body_381749*
&lstm_3_while_lstm_3_while_loop_counter0
,lstm_3_while_lstm_3_while_maximum_iterations
lstm_3_while_placeholder
lstm_3_while_placeholder_1
lstm_3_while_placeholder_2
lstm_3_while_placeholder_3)
%lstm_3_while_lstm_3_strided_slice_1_0e
alstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0:	?O
;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0:
??I
:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0:	?
lstm_3_while_identity
lstm_3_while_identity_1
lstm_3_while_identity_2
lstm_3_while_identity_3
lstm_3_while_identity_4
lstm_3_while_identity_5'
#lstm_3_while_lstm_3_strided_slice_1c
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensorJ
7lstm_3_while_lstm_cell_6_matmul_readvariableop_resource:	?M
9lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource:
??G
8lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource:	???/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0lstm_3_while_placeholderGlstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0lstm_3/while/TensorArrayV2Read/TensorListGetItem?
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOpReadVariableOp9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp?
lstm_3/while/lstm_cell_6/MatMulMatMul7lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_3/while/lstm_cell_6/MatMul?
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOpReadVariableOp;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp?
!lstm_3/while/lstm_cell_6/MatMul_1MatMullstm_3_while_placeholder_28lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_3/while/lstm_cell_6/MatMul_1?
lstm_3/while/lstm_cell_6/addAddV2)lstm_3/while/lstm_cell_6/MatMul:product:0+lstm_3/while/lstm_cell_6/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/add?
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOpReadVariableOp:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp?
 lstm_3/while/lstm_cell_6/BiasAddBiasAdd lstm_3/while/lstm_cell_6/add:z:07lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_3/while/lstm_cell_6/BiasAdd?
(lstm_3/while/lstm_cell_6/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_3/while/lstm_cell_6/split/split_dim?
lstm_3/while/lstm_cell_6/splitSplit1lstm_3/while/lstm_cell_6/split/split_dim:output:0)lstm_3/while/lstm_cell_6/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_3/while/lstm_cell_6/split?
 lstm_3/while/lstm_cell_6/SigmoidSigmoid'lstm_3/while/lstm_cell_6/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_3/while/lstm_cell_6/Sigmoid?
"lstm_3/while/lstm_cell_6/Sigmoid_1Sigmoid'lstm_3/while/lstm_cell_6/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_3/while/lstm_cell_6/Sigmoid_1?
lstm_3/while/lstm_cell_6/mulMul&lstm_3/while/lstm_cell_6/Sigmoid_1:y:0lstm_3_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/mul?
lstm_3/while/lstm_cell_6/ReluRelu'lstm_3/while/lstm_cell_6/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_3/while/lstm_cell_6/Relu?
lstm_3/while/lstm_cell_6/mul_1Mul$lstm_3/while/lstm_cell_6/Sigmoid:y:0+lstm_3/while/lstm_cell_6/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/mul_1?
lstm_3/while/lstm_cell_6/add_1AddV2 lstm_3/while/lstm_cell_6/mul:z:0"lstm_3/while/lstm_cell_6/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/add_1?
"lstm_3/while/lstm_cell_6/Sigmoid_2Sigmoid'lstm_3/while/lstm_cell_6/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_3/while/lstm_cell_6/Sigmoid_2?
lstm_3/while/lstm_cell_6/Relu_1Relu"lstm_3/while/lstm_cell_6/add_1:z:0*
T0*(
_output_shapes
:??????????2!
lstm_3/while/lstm_cell_6/Relu_1?
lstm_3/while/lstm_cell_6/mul_2Mul&lstm_3/while/lstm_cell_6/Sigmoid_2:y:0-lstm_3/while/lstm_cell_6/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_3/while/lstm_cell_6/mul_2?
1lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_3_while_placeholder_1lstm_3_while_placeholder"lstm_3/while/lstm_cell_6/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_3/while/TensorArrayV2Write/TensorListSetItemj
lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add/y?
lstm_3/while/addAddV2lstm_3_while_placeholderlstm_3/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/addn
lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_3/while/add_1/y?
lstm_3/while/add_1AddV2&lstm_3_while_lstm_3_while_loop_counterlstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_3/while/add_1?
lstm_3/while/IdentityIdentitylstm_3/while/add_1:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity?
lstm_3/while/Identity_1Identity,lstm_3_while_lstm_3_while_maximum_iterations^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_1?
lstm_3/while/Identity_2Identitylstm_3/while/add:z:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_2?
lstm_3/while/Identity_3IdentityAlstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_3/while/NoOp*
T0*
_output_shapes
: 2
lstm_3/while/Identity_3?
lstm_3/while/Identity_4Identity"lstm_3/while/lstm_cell_6/mul_2:z:0^lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_3/while/Identity_4?
lstm_3/while/Identity_5Identity"lstm_3/while/lstm_cell_6/add_1:z:0^lstm_3/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_3/while/Identity_5?
lstm_3/while/NoOpNoOp0^lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp/^lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp1^lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_3/while/NoOp"7
lstm_3_while_identitylstm_3/while/Identity:output:0";
lstm_3_while_identity_1 lstm_3/while/Identity_1:output:0";
lstm_3_while_identity_2 lstm_3/while/Identity_2:output:0";
lstm_3_while_identity_3 lstm_3/while/Identity_3:output:0";
lstm_3_while_identity_4 lstm_3/while/Identity_4:output:0";
lstm_3_while_identity_5 lstm_3/while/Identity_5:output:0"L
#lstm_3_while_lstm_3_strided_slice_1%lstm_3_while_lstm_3_strided_slice_1_0"v
8lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource:lstm_3_while_lstm_cell_6_biasadd_readvariableop_resource_0"x
9lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource;lstm_3_while_lstm_cell_6_matmul_1_readvariableop_resource_0"t
7lstm_3_while_lstm_cell_6_matmul_readvariableop_resource9lstm_3_while_lstm_cell_6_matmul_readvariableop_resource_0"?
_lstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensoralstm_3_while_tensorarrayv2read_tensorlistgetitem_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2b
/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp/lstm_3/while/lstm_cell_6/BiasAdd/ReadVariableOp2`
.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp.lstm_3/while/lstm_cell_6/MatMul/ReadVariableOp2d
0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp0lstm_3/while/lstm_cell_6/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_lstm_3_layer_call_fn_382050

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_3804862
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_4_layer_call_fn_383364

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_3806872
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_dense_3_layer_call_fn_383344

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_3806712
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?

lstm_4_while_body_381583*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0:
??O
;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0:
??I
:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0:	?
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorK
7lstm_4_while_lstm_cell_7_matmul_readvariableop_resource:
??M
9lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource:
??G
8lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource:	???/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2@
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype022
0lstm_4/while/TensorArrayV2Read/TensorListGetItem?
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOpReadVariableOp9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp?
lstm_4/while/lstm_cell_7/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_7/MatMul?
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp?
!lstm_4/while/lstm_cell_7/MatMul_1MatMullstm_4_while_placeholder_28lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_4/while/lstm_cell_7/MatMul_1?
lstm_4/while/lstm_cell_7/addAddV2)lstm_4/while/lstm_cell_7/MatMul:product:0+lstm_4/while/lstm_cell_7/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/add?
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp?
 lstm_4/while/lstm_cell_7/BiasAddBiasAdd lstm_4/while/lstm_cell_7/add:z:07lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_7/BiasAdd?
(lstm_4/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_4/while/lstm_cell_7/split/split_dim?
lstm_4/while/lstm_cell_7/splitSplit1lstm_4/while/lstm_cell_7/split/split_dim:output:0)lstm_4/while/lstm_cell_7/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2 
lstm_4/while/lstm_cell_7/split?
 lstm_4/while/lstm_cell_7/SigmoidSigmoid'lstm_4/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:??????????2"
 lstm_4/while/lstm_cell_7/Sigmoid?
"lstm_4/while/lstm_cell_7/Sigmoid_1Sigmoid'lstm_4/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_7/Sigmoid_1?
lstm_4/while/lstm_cell_7/mulMul&lstm_4/while/lstm_cell_7/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/mul?
lstm_4/while/lstm_cell_7/ReluRelu'lstm_4/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_4/while/lstm_cell_7/Relu?
lstm_4/while/lstm_cell_7/mul_1Mul$lstm_4/while/lstm_cell_7/Sigmoid:y:0+lstm_4/while/lstm_cell_7/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/mul_1?
lstm_4/while/lstm_cell_7/add_1AddV2 lstm_4/while/lstm_cell_7/mul:z:0"lstm_4/while/lstm_cell_7/mul_1:z:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/add_1?
"lstm_4/while/lstm_cell_7/Sigmoid_2Sigmoid'lstm_4/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:??????????2$
"lstm_4/while/lstm_cell_7/Sigmoid_2?
lstm_4/while/lstm_cell_7/Relu_1Relu"lstm_4/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:??????????2!
lstm_4/while/lstm_cell_7/Relu_1?
lstm_4/while/lstm_cell_7/mul_2Mul&lstm_4/while/lstm_cell_7/Sigmoid_2:y:0-lstm_4/while/lstm_cell_7/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2 
lstm_4/while/lstm_cell_7/mul_2?
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1lstm_4_while_placeholder"lstm_4/while/lstm_cell_7/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_4/while/TensorArrayV2Write/TensorListSetItemj
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add/y?
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/addn
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/while/add_1/y?
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_4/while/add_1?
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity?
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_1?
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_2?
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 2
lstm_4/while/Identity_3?
lstm_4/while/Identity_4Identity"lstm_4/while/lstm_cell_7/mul_2:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_4?
lstm_4/while/Identity_5Identity"lstm_4/while/lstm_cell_7/add_1:z:0^lstm_4/while/NoOp*
T0*(
_output_shapes
:??????????2
lstm_4/while/Identity_5?
lstm_4/while/NoOpNoOp0^lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp/^lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp1^lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_4/while/NoOp"7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"v
8lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource:lstm_4_while_lstm_cell_7_biasadd_readvariableop_resource_0"x
9lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource;lstm_4_while_lstm_cell_7_matmul_1_readvariableop_resource_0"t
7lstm_4_while_lstm_cell_7_matmul_readvariableop_resource9lstm_4_while_lstm_cell_7_matmul_readvariableop_resource_0"?
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2b
/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp/lstm_4/while/lstm_cell_7/BiasAdd/ReadVariableOp2`
.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp.lstm_4/while/lstm_cell_7/MatMul/ReadVariableOp2d
0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp0lstm_4/while/lstm_cell_7/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_379766

inputs

states
states_12
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?

?
lstm_4_while_cond_381582*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1B
>lstm_4_while_lstm_4_while_cond_381582___redundant_placeholder0B
>lstm_4_while_lstm_4_while_cond_381582___redundant_placeholder1B
>lstm_4_while_lstm_4_while_cond_381582___redundant_placeholder2B
>lstm_4_while_lstm_4_while_cond_381582___redundant_placeholder3
lstm_4_while_identity
?
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: 2
lstm_4/while/Lessr
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_4/while/Identity"7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_30
serving_default_input_3:0?????????;
dense_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
trainable_variables
	variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.iter

/beta_1

0beta_2
	1decay
2learning_rate"mw#mx(my)mz3m{4m|5m}6m~7m8m?"v?#v?(v?)v?3v?4v?5v?6v?7v?8v?"
	optimizer
f
30
41
52
63
74
85
"6
#7
(8
)9"
trackable_list_wrapper
f
30
41
52
63
74
85
"6
#7
(8
)9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
9metrics
	trainable_variables
:non_trainable_variables

	variables
regularization_losses
;layer_metrics
<layer_regularization_losses

=layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
>metrics
trainable_variables
?non_trainable_variables
	variables
regularization_losses
@layer_metrics
Alayer_regularization_losses

Blayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
C
state_size

3kernel
4recurrent_kernel
5bias
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hmetrics
trainable_variables
Inon_trainable_variables
	variables

Jstates
regularization_losses
Klayer_metrics
Llayer_regularization_losses

Mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nmetrics
trainable_variables
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qlayer_regularization_losses

Rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
S
state_size

6kernel
7recurrent_kernel
8bias
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xmetrics
trainable_variables
Ynon_trainable_variables
	variables

Zstates
 regularization_losses
[layer_metrics
\layer_regularization_losses

]layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2dense_3/kernel
:@2dense_3/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^metrics
$trainable_variables
_non_trainable_variables
%	variables
&regularization_losses
`layer_metrics
alayer_regularization_losses

blayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_4/kernel
:2dense_4/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
cmetrics
*trainable_variables
dnon_trainable_variables
+	variables
,regularization_losses
elayer_metrics
flayer_regularization_losses

glayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
,:*	?2lstm_3/lstm_cell_6/kernel
7:5
??2#lstm_3/lstm_cell_6/recurrent_kernel
&:$?2lstm_3/lstm_cell_6/bias
-:+
??2lstm_4/lstm_cell_7/kernel
7:5
??2#lstm_4/lstm_cell_7/recurrent_kernel
&:$?2lstm_4/lstm_cell_7/bias
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
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
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
imetrics
Dtrainable_variables
jnon_trainable_variables
E	variables
Fregularization_losses
klayer_metrics
llayer_regularization_losses

mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?
nmetrics
Ttrainable_variables
onon_trainable_variables
U	variables
Vregularization_losses
player_metrics
qlayer_regularization_losses

rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
N
	stotal
	tcount
u	variables
v	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
s0
t1"
trackable_list_wrapper
-
u	variables"
_generic_user_object
&:$	?@2Adam/dense_3/kernel/m
:@2Adam/dense_3/bias/m
%:#@2Adam/dense_4/kernel/m
:2Adam/dense_4/bias/m
1:/	?2 Adam/lstm_3/lstm_cell_6/kernel/m
<::
??2*Adam/lstm_3/lstm_cell_6/recurrent_kernel/m
+:)?2Adam/lstm_3/lstm_cell_6/bias/m
2:0
??2 Adam/lstm_4/lstm_cell_7/kernel/m
<::
??2*Adam/lstm_4/lstm_cell_7/recurrent_kernel/m
+:)?2Adam/lstm_4/lstm_cell_7/bias/m
&:$	?@2Adam/dense_3/kernel/v
:@2Adam/dense_3/bias/v
%:#@2Adam/dense_4/kernel/v
:2Adam/dense_4/bias/v
1:/	?2 Adam/lstm_3/lstm_cell_6/kernel/v
<::
??2*Adam/lstm_3/lstm_cell_6/recurrent_kernel/v
+:)?2Adam/lstm_3/lstm_cell_6/bias/v
2:0
??2 Adam/lstm_4/lstm_cell_7/kernel/v
<::
??2*Adam/lstm_4/lstm_cell_7/recurrent_kernel/v
+:)?2Adam/lstm_4/lstm_cell_7/bias/v
?B?
!__inference__wrapped_model_379061input_3"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_model_3_lstm_layer_call_fn_380717
-__inference_model_3_lstm_layer_call_fn_381340
-__inference_model_3_lstm_layer_call_fn_381365
-__inference_model_3_lstm_layer_call_fn_381222?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381680
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381995
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381252
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381282?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lambda_3_layer_call_fn_382000
)__inference_lambda_3_layer_call_fn_382005?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lambda_3_layer_call_and_return_conditional_losses_382011
D__inference_lambda_3_layer_call_and_return_conditional_losses_382017?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_lstm_3_layer_call_fn_382028
'__inference_lstm_3_layer_call_fn_382039
'__inference_lstm_3_layer_call_fn_382050
'__inference_lstm_3_layer_call_fn_382061?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382212
B__inference_lstm_3_layer_call_and_return_conditional_losses_382363
B__inference_lstm_3_layer_call_and_return_conditional_losses_382514
B__inference_lstm_3_layer_call_and_return_conditional_losses_382665?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_lambda_4_layer_call_fn_382670
)__inference_lambda_4_layer_call_fn_382675?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lambda_4_layer_call_and_return_conditional_losses_382681
D__inference_lambda_4_layer_call_and_return_conditional_losses_382687?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_lstm_4_layer_call_fn_382698
'__inference_lstm_4_layer_call_fn_382709
'__inference_lstm_4_layer_call_fn_382720
'__inference_lstm_4_layer_call_fn_382731?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lstm_4_layer_call_and_return_conditional_losses_382882
B__inference_lstm_4_layer_call_and_return_conditional_losses_383033
B__inference_lstm_4_layer_call_and_return_conditional_losses_383184
B__inference_lstm_4_layer_call_and_return_conditional_losses_383335?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_3_layer_call_fn_383344?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_383355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_4_layer_call_fn_383364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_383374?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_381315input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_lstm_cell_6_layer_call_fn_383391
,__inference_lstm_cell_6_layer_call_fn_383408?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383440
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383472?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_lstm_cell_7_layer_call_fn_383489
,__inference_lstm_cell_7_layer_call_fn_383506?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383538
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383570?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_379061q
345678"#()0?-
&?#
!?
input_3?????????
? "1?.
,
dense_4!?
dense_4??????????
C__inference_dense_3_layer_call_and_return_conditional_losses_383355]"#0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? |
(__inference_dense_3_layer_call_fn_383344P"#0?-
&?#
!?
inputs??????????
? "??????????@?
C__inference_dense_4_layer_call_and_return_conditional_losses_383374\()/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? {
(__inference_dense_4_layer_call_fn_383364O()/?,
%?"
 ?
inputs?????????@
? "???????????
D__inference_lambda_3_layer_call_and_return_conditional_losses_382011d7?4
-?*
 ?
inputs?????????

 
p 
? ")?&
?
0?????????
? ?
D__inference_lambda_3_layer_call_and_return_conditional_losses_382017d7?4
-?*
 ?
inputs?????????

 
p
? ")?&
?
0?????????
? ?
)__inference_lambda_3_layer_call_fn_382000W7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
)__inference_lambda_3_layer_call_fn_382005W7?4
-?*
 ?
inputs?????????

 
p
? "???????????
D__inference_lambda_4_layer_call_and_return_conditional_losses_382681f8?5
.?+
!?
inputs??????????

 
p 
? "*?'
 ?
0??????????
? ?
D__inference_lambda_4_layer_call_and_return_conditional_losses_382687f8?5
.?+
!?
inputs??????????

 
p
? "*?'
 ?
0??????????
? ?
)__inference_lambda_4_layer_call_fn_382670Y8?5
.?+
!?
inputs??????????

 
p 
? "????????????
)__inference_lambda_4_layer_call_fn_382675Y8?5
.?+
!?
inputs??????????

 
p
? "????????????
B__inference_lstm_3_layer_call_and_return_conditional_losses_382212~345O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382363~345O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#
?
0??????????
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382514n345??<
5?2
$?!
inputs?????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_lstm_3_layer_call_and_return_conditional_losses_382665n345??<
5?2
$?!
inputs?????????

 
p

 
? "&?#
?
0??????????
? ?
'__inference_lstm_3_layer_call_fn_382028q345O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "????????????
'__inference_lstm_3_layer_call_fn_382039q345O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "????????????
'__inference_lstm_3_layer_call_fn_382050a345??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
'__inference_lstm_3_layer_call_fn_382061a345??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
B__inference_lstm_4_layer_call_and_return_conditional_losses_382882678P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383033678P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#
?
0??????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383184o678@?=
6?3
%?"
inputs??????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_lstm_4_layer_call_and_return_conditional_losses_383335o678@?=
6?3
%?"
inputs??????????

 
p

 
? "&?#
?
0??????????
? ?
'__inference_lstm_4_layer_call_fn_382698r678P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "????????????
'__inference_lstm_4_layer_call_fn_382709r678P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "????????????
'__inference_lstm_4_layer_call_fn_382720b678@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
'__inference_lstm_4_layer_call_fn_382731b678@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383440?345??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
G__inference_lstm_cell_6_layer_call_and_return_conditional_losses_383472?345??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
,__inference_lstm_cell_6_layer_call_fn_383391?345??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
,__inference_lstm_cell_6_layer_call_fn_383408?345??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383538?678???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_383570?678???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
,__inference_lstm_cell_7_layer_call_fn_383489?678???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
,__inference_lstm_cell_7_layer_call_fn_383506?678???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381252m
345678"#()8?5
.?+
!?
input_3?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381282m
345678"#()8?5
.?+
!?
input_3?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381680l
345678"#()7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_model_3_lstm_layer_call_and_return_conditional_losses_381995l
345678"#()7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_model_3_lstm_layer_call_fn_380717`
345678"#()8?5
.?+
!?
input_3?????????
p 

 
? "???????????
-__inference_model_3_lstm_layer_call_fn_381222`
345678"#()8?5
.?+
!?
input_3?????????
p

 
? "???????????
-__inference_model_3_lstm_layer_call_fn_381340_
345678"#()7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
-__inference_model_3_lstm_layer_call_fn_381365_
345678"#()7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_381315|
345678"#();?8
? 
1?.
,
input_3!?
input_3?????????"1?.
,
dense_4!?
dense_4?????????