'
Ç
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
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
"serve*2.6.02v2.6.0-rc2-32-g919f693420e8É¸%
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	@*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:@*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
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

lstm_5/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_namelstm_5/lstm_cell_10/kernel

.lstm_5/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_10/kernel*
_output_shapes
:	*
dtype0
¦
$lstm_5/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$lstm_5/lstm_cell_10/recurrent_kernel

8lstm_5/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_5/lstm_cell_10/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_5/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelstm_5/lstm_cell_10/bias

,lstm_5/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_10/bias*
_output_shapes	
:*
dtype0

lstm_6/lstm_cell_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_namelstm_6/lstm_cell_11/kernel

.lstm_6/lstm_cell_11/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_11/kernel* 
_output_shapes
:
*
dtype0
¦
$lstm_6/lstm_cell_11/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$lstm_6/lstm_cell_11/recurrent_kernel

8lstm_6/lstm_cell_11/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_6/lstm_cell_11/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_6/lstm_cell_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelstm_6/lstm_cell_11/bias

,lstm_6/lstm_cell_11/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_11/bias*
_output_shapes	
:*
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

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	@*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0

!Adam/lstm_5/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/lstm_5/lstm_cell_10/kernel/m

5Adam/lstm_5/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_5/lstm_cell_10/kernel/m*
_output_shapes
:	*
dtype0
´
+Adam/lstm_5/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/lstm_5/lstm_cell_10/recurrent_kernel/m
­
?Adam/lstm_5/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_5/lstm_cell_10/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/lstm_5/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_5/lstm_cell_10/bias/m

3Adam/lstm_5/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_10/bias/m*
_output_shapes	
:*
dtype0
 
!Adam/lstm_6/lstm_cell_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/lstm_6/lstm_cell_11/kernel/m

5Adam/lstm_6/lstm_cell_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_6/lstm_cell_11/kernel/m* 
_output_shapes
:
*
dtype0
´
+Adam/lstm_6/lstm_cell_11/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/lstm_6/lstm_cell_11/recurrent_kernel/m
­
?Adam/lstm_6/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_6/lstm_cell_11/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/lstm_6/lstm_cell_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_6/lstm_cell_11/bias/m

3Adam/lstm_6/lstm_cell_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_11/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	@*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0

!Adam/lstm_5/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/lstm_5/lstm_cell_10/kernel/v

5Adam/lstm_5/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_5/lstm_cell_10/kernel/v*
_output_shapes
:	*
dtype0
´
+Adam/lstm_5/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/lstm_5/lstm_cell_10/recurrent_kernel/v
­
?Adam/lstm_5/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_5/lstm_cell_10/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm_5/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_5/lstm_cell_10/bias/v

3Adam/lstm_5/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_10/bias/v*
_output_shapes	
:*
dtype0
 
!Adam/lstm_6/lstm_cell_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adam/lstm_6/lstm_cell_11/kernel/v

5Adam/lstm_6/lstm_cell_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_6/lstm_cell_11/kernel/v* 
_output_shapes
:
*
dtype0
´
+Adam/lstm_6/lstm_cell_11/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+Adam/lstm_6/lstm_cell_11/recurrent_kernel/v
­
?Adam/lstm_6/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_6/lstm_cell_11/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm_6/lstm_cell_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_6/lstm_cell_11/bias/v

3Adam/lstm_6/lstm_cell_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_6/lstm_cell_11/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
É>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*>
valueú=B÷= Bð=
´
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
ÿ
.iter

/beta_1

0beta_2
	1decay
2learning_rate"mw#mx(my)mz3m{4m|5m}6m~7m8m"v#v(v)v3v4v5v6v7v8v
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
­
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
­
>metrics
trainable_variables
?non_trainable_variables
	variables
regularization_losses
@layer_metrics
Alayer_regularization_losses

Blayers

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
¹
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
­
Nmetrics
trainable_variables
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qlayer_regularization_losses

Rlayers

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
¹
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
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
­
^metrics
$trainable_variables
_non_trainable_variables
%	variables
&regularization_losses
`layer_metrics
alayer_regularization_losses

blayers
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
­
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
`^
VARIABLE_VALUElstm_5/lstm_cell_10/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE$lstm_5/lstm_cell_10/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUElstm_5/lstm_cell_10/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUElstm_6/lstm_cell_11/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE$lstm_6/lstm_cell_11/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUElstm_6/lstm_cell_11/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/lstm_5/lstm_cell_10/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_5/lstm_cell_10/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/lstm_5/lstm_cell_10/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/lstm_6/lstm_cell_11/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_6/lstm_cell_11/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/lstm_6/lstm_cell_11/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/lstm_5/lstm_cell_10/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_5/lstm_cell_10/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/lstm_5/lstm_cell_10/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/lstm_6/lstm_cell_11/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE+Adam/lstm_6/lstm_cell_11/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/lstm_6/lstm_cell_11/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_4Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
½
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4lstm_5/lstm_cell_10/kernel$lstm_5/lstm_cell_10/recurrent_kernellstm_5/lstm_cell_10/biaslstm_6/lstm_cell_11/kernel$lstm_6/lstm_cell_11/recurrent_kernellstm_6/lstm_cell_11/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_442162
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
â
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp.lstm_5/lstm_cell_10/kernel/Read/ReadVariableOp8lstm_5/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp,lstm_5/lstm_cell_10/bias/Read/ReadVariableOp.lstm_6/lstm_cell_11/kernel/Read/ReadVariableOp8lstm_6/lstm_cell_11/recurrent_kernel/Read/ReadVariableOp,lstm_6/lstm_cell_11/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp5Adam/lstm_5/lstm_cell_10/kernel/m/Read/ReadVariableOp?Adam/lstm_5/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_5/lstm_cell_10/bias/m/Read/ReadVariableOp5Adam/lstm_6/lstm_cell_11/kernel/m/Read/ReadVariableOp?Adam/lstm_6/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_6/lstm_cell_11/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp5Adam/lstm_5/lstm_cell_10/kernel/v/Read/ReadVariableOp?Adam/lstm_5/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_5/lstm_cell_10/bias/v/Read/ReadVariableOp5Adam/lstm_6/lstm_cell_11/kernel/v/Read/ReadVariableOp?Adam/lstm_6/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_6/lstm_cell_11/bias/v/Read/ReadVariableOpConst*2
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_444551
ù	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasdense_6/kerneldense_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_5/lstm_cell_10/kernel$lstm_5/lstm_cell_10/recurrent_kernellstm_5/lstm_cell_10/biaslstm_6/lstm_cell_11/kernel$lstm_6/lstm_cell_11/recurrent_kernellstm_6/lstm_cell_11/biastotalcountAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/m!Adam/lstm_5/lstm_cell_10/kernel/m+Adam/lstm_5/lstm_cell_10/recurrent_kernel/mAdam/lstm_5/lstm_cell_10/bias/m!Adam/lstm_6/lstm_cell_11/kernel/m+Adam/lstm_6/lstm_cell_11/recurrent_kernel/mAdam/lstm_6/lstm_cell_11/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/v!Adam/lstm_5/lstm_cell_10/kernel/v+Adam/lstm_5/lstm_cell_10/recurrent_kernel/vAdam/lstm_5/lstm_cell_10/bias/v!Adam/lstm_6/lstm_cell_11/kernel/v+Adam/lstm_6/lstm_cell_11/recurrent_kernel/vAdam/lstm_6/lstm_cell_11/bias/v*1
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_444672ó$
¬

Ï
lstm_5_while_cond_442280*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_442280___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_442280___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_442280___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_442280___redundant_placeholder3
lstm_5_while_identity

lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
®?
Ò
while_body_443126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
³
Ó
%model_4_lstm_lstm_5_while_cond_439661D
@model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_loop_counterJ
Fmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_maximum_iterations)
%model_4_lstm_lstm_5_while_placeholder+
'model_4_lstm_lstm_5_while_placeholder_1+
'model_4_lstm_lstm_5_while_placeholder_2+
'model_4_lstm_lstm_5_while_placeholder_3F
Bmodel_4_lstm_lstm_5_while_less_model_4_lstm_lstm_5_strided_slice_1\
Xmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_cond_439661___redundant_placeholder0\
Xmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_cond_439661___redundant_placeholder1\
Xmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_cond_439661___redundant_placeholder2\
Xmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_cond_439661___redundant_placeholder3&
"model_4_lstm_lstm_5_while_identity
Ô
model_4_lstm/lstm_5/while/LessLess%model_4_lstm_lstm_5_while_placeholderBmodel_4_lstm_lstm_5_while_less_model_4_lstm_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2 
model_4_lstm/lstm_5/while/Less
"model_4_lstm/lstm_5/while/IdentityIdentity"model_4_lstm/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2$
"model_4_lstm/lstm_5/while/Identity"Q
"model_4_lstm_lstm_5_while_identity+model_4_lstm/lstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_440129

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¬

Ï
lstm_6_while_cond_442744*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_442744___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_442744___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_442744___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_442744___redundant_placeholder3
lstm_6_while_identity

lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ë
E
)__inference_lambda_6_layer_call_fn_443517

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4413472
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
¶
'__inference_lstm_6_layer_call_fn_443567

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4414992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®?
Ò
while_body_443428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

B__inference_lstm_6_layer_call_and_return_conditional_losses_444182

inputs?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_444098*
condR
while_cond_444097*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

ø
$__inference_signature_wrapper_442162
input_4
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_4399082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
¥

ô
C__inference_dense_6_layer_call_and_return_conditional_losses_444221

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ù
Ã
while_cond_443125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443125___redundant_placeholder04
0while_while_cond_443125___redundant_placeholder14
0while_while_cond_443125___redundant_placeholder24
0while_while_cond_443125___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
æ%
å
while_body_440207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_440231_0:	/
while_lstm_cell_10_440233_0:
*
while_lstm_cell_10_440235_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_440231:	-
while_lstm_cell_10_440233:
(
while_lstm_cell_10_440235:	¢*while/lstm_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemç
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_440231_0while_lstm_cell_10_440233_0while_lstm_cell_10_440235_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4401292,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¥
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¥
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_440231while_lstm_cell_10_440231_0"8
while_lstm_cell_10_440233while_lstm_cell_10_440233_0"8
while_lstm_cell_10_440235while_lstm_cell_10_440235_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ïS
¢
__inference__traced_save_444551
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop9
5savev2_lstm_5_lstm_cell_10_kernel_read_readvariableopC
?savev2_lstm_5_lstm_cell_10_recurrent_kernel_read_readvariableop7
3savev2_lstm_5_lstm_cell_10_bias_read_readvariableop9
5savev2_lstm_6_lstm_cell_11_kernel_read_readvariableopC
?savev2_lstm_6_lstm_cell_11_recurrent_kernel_read_readvariableop7
3savev2_lstm_6_lstm_cell_11_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop@
<savev2_adam_lstm_5_lstm_cell_10_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_5_lstm_cell_10_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_5_lstm_cell_10_bias_m_read_readvariableop@
<savev2_adam_lstm_6_lstm_cell_11_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_6_lstm_cell_11_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_6_lstm_cell_11_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop@
<savev2_adam_lstm_5_lstm_cell_10_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_5_lstm_cell_10_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_5_lstm_cell_10_bias_v_read_readvariableop@
<savev2_adam_lstm_6_lstm_cell_11_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_6_lstm_cell_11_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_6_lstm_cell_11_bias_v_read_readvariableop
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
ShardedFilenameº
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*Ì
valueÂB¿&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÔ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop5savev2_lstm_5_lstm_cell_10_kernel_read_readvariableop?savev2_lstm_5_lstm_cell_10_recurrent_kernel_read_readvariableop3savev2_lstm_5_lstm_cell_10_bias_read_readvariableop5savev2_lstm_6_lstm_cell_11_kernel_read_readvariableop?savev2_lstm_6_lstm_cell_11_recurrent_kernel_read_readvariableop3savev2_lstm_6_lstm_cell_11_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop<savev2_adam_lstm_5_lstm_cell_10_kernel_m_read_readvariableopFsavev2_adam_lstm_5_lstm_cell_10_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_5_lstm_cell_10_bias_m_read_readvariableop<savev2_adam_lstm_6_lstm_cell_11_kernel_m_read_readvariableopFsavev2_adam_lstm_6_lstm_cell_11_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_6_lstm_cell_11_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop<savev2_adam_lstm_5_lstm_cell_10_kernel_v_read_readvariableopFsavev2_adam_lstm_5_lstm_cell_10_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_5_lstm_cell_10_bias_v_read_readvariableop<savev2_adam_lstm_6_lstm_cell_11_kernel_v_read_readvariableopFsavev2_adam_lstm_6_lstm_cell_11_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_6_lstm_cell_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*Á
_input_shapes¯
¬: :	@:@:@:: : : : : :	:
::
:
:: : :	@:@:@::	:
::
:
::	@:@:@::	:
::
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	@: 
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
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::% !

_output_shapes
:	:&!"
 
_output_shapes
:
:!"

_output_shapes	
::&#"
 
_output_shapes
:
:&$"
 
_output_shapes
:
:!%

_output_shapes	
::&

_output_shapes
: 
\

B__inference_lstm_6_layer_call_and_return_conditional_losses_441748

inputs?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_441664*
condR
while_cond_441663*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸\

B__inference_lstm_5_layer_call_and_return_conditional_losses_443210
inputs_0>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443126*
condR
while_cond_443125*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ö[
Ô
%model_4_lstm_lstm_6_while_body_439811D
@model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_loop_counterJ
Fmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_maximum_iterations)
%model_4_lstm_lstm_6_while_placeholder+
'model_4_lstm_lstm_6_while_placeholder_1+
'model_4_lstm_lstm_6_while_placeholder_2+
'model_4_lstm_lstm_6_while_placeholder_3C
?model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_strided_slice_1_0
{model_4_lstm_lstm_6_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_6_tensorarrayunstack_tensorlistfromtensor_0[
Gmodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0:
]
Imodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0:
W
Hmodel_4_lstm_lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0:	&
"model_4_lstm_lstm_6_while_identity(
$model_4_lstm_lstm_6_while_identity_1(
$model_4_lstm_lstm_6_while_identity_2(
$model_4_lstm_lstm_6_while_identity_3(
$model_4_lstm_lstm_6_while_identity_4(
$model_4_lstm_lstm_6_while_identity_5A
=model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_strided_slice_1}
ymodel_4_lstm_lstm_6_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_6_tensorarrayunstack_tensorlistfromtensorY
Emodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_readvariableop_resource:
[
Gmodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource:
U
Fmodel_4_lstm_lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource:	¢=model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp¢<model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp¢>model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpë
Kmodel_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kmodel_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeÌ
=model_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{model_4_lstm_lstm_6_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%model_4_lstm_lstm_6_while_placeholderTmodel_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02?
=model_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItem
<model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOpGmodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02>
<model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp§
-model_4_lstm/lstm_6/while/lstm_cell_11/MatMulMatMulDmodel_4_lstm/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Dmodel_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_4_lstm/lstm_6/while/lstm_cell_11/MatMul
>model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpImodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp
/model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1MatMul'model_4_lstm_lstm_6_while_placeholder_2Fmodel_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1
*model_4_lstm/lstm_6/while/lstm_cell_11/addAddV27model_4_lstm/lstm_6/while/lstm_cell_11/MatMul:product:09model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_6/while/lstm_cell_11/add
=model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOpHmodel_4_lstm_lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp
.model_4_lstm/lstm_6/while/lstm_cell_11/BiasAddBiasAdd.model_4_lstm/lstm_6/while/lstm_cell_11/add:z:0Emodel_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd²
6model_4_lstm/lstm_6/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6model_4_lstm/lstm_6/while/lstm_cell_11/split/split_dimß
,model_4_lstm/lstm_6/while/lstm_cell_11/splitSplit?model_4_lstm/lstm_6/while/lstm_cell_11/split/split_dim:output:07model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2.
,model_4_lstm/lstm_6/while/lstm_cell_11/splitÕ
.model_4_lstm/lstm_6/while/lstm_cell_11/SigmoidSigmoid5model_4_lstm/lstm_6/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.model_4_lstm/lstm_6/while/lstm_cell_11/SigmoidÙ
0model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_1Sigmoid5model_4_lstm/lstm_6/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_1ñ
*model_4_lstm/lstm_6/while/lstm_cell_11/mulMul4model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_1:y:0'model_4_lstm_lstm_6_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_6/while/lstm_cell_11/mulÌ
+model_4_lstm/lstm_6/while/lstm_cell_11/ReluRelu5model_4_lstm/lstm_6/while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_4_lstm/lstm_6/while/lstm_cell_11/Relu
,model_4_lstm/lstm_6/while/lstm_cell_11/mul_1Mul2model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid:y:09model_4_lstm/lstm_6/while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_6/while/lstm_cell_11/mul_1ú
,model_4_lstm/lstm_6/while/lstm_cell_11/add_1AddV2.model_4_lstm/lstm_6/while/lstm_cell_11/mul:z:00model_4_lstm/lstm_6/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_6/while/lstm_cell_11/add_1Ù
0model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_2Sigmoid5model_4_lstm/lstm_6/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_2Ë
-model_4_lstm/lstm_6/while/lstm_cell_11/Relu_1Relu0model_4_lstm/lstm_6/while/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_4_lstm/lstm_6/while/lstm_cell_11/Relu_1
,model_4_lstm/lstm_6/while/lstm_cell_11/mul_2Mul4model_4_lstm/lstm_6/while/lstm_cell_11/Sigmoid_2:y:0;model_4_lstm/lstm_6/while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_6/while/lstm_cell_11/mul_2Ä
>model_4_lstm/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'model_4_lstm_lstm_6_while_placeholder_1%model_4_lstm_lstm_6_while_placeholder0model_4_lstm/lstm_6/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>model_4_lstm/lstm_6/while/TensorArrayV2Write/TensorListSetItem
model_4_lstm/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
model_4_lstm/lstm_6/while/add/y¹
model_4_lstm/lstm_6/while/addAddV2%model_4_lstm_lstm_6_while_placeholder(model_4_lstm/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
model_4_lstm/lstm_6/while/add
!model_4_lstm/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4_lstm/lstm_6/while/add_1/yÚ
model_4_lstm/lstm_6/while/add_1AddV2@model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_loop_counter*model_4_lstm/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
model_4_lstm/lstm_6/while/add_1»
"model_4_lstm/lstm_6/while/IdentityIdentity#model_4_lstm/lstm_6/while/add_1:z:0^model_4_lstm/lstm_6/while/NoOp*
T0*
_output_shapes
: 2$
"model_4_lstm/lstm_6/while/Identityâ
$model_4_lstm/lstm_6/while/Identity_1IdentityFmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_maximum_iterations^model_4_lstm/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_6/while/Identity_1½
$model_4_lstm/lstm_6/while/Identity_2Identity!model_4_lstm/lstm_6/while/add:z:0^model_4_lstm/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_6/while/Identity_2ê
$model_4_lstm/lstm_6/while/Identity_3IdentityNmodel_4_lstm/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_4_lstm/lstm_6/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_6/while/Identity_3Þ
$model_4_lstm/lstm_6/while/Identity_4Identity0model_4_lstm/lstm_6/while/lstm_cell_11/mul_2:z:0^model_4_lstm/lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_6/while/Identity_4Þ
$model_4_lstm/lstm_6/while/Identity_5Identity0model_4_lstm/lstm_6/while/lstm_cell_11/add_1:z:0^model_4_lstm/lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_6/while/Identity_5Â
model_4_lstm/lstm_6/while/NoOpNoOp>^model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp=^model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp?^model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
model_4_lstm/lstm_6/while/NoOp"Q
"model_4_lstm_lstm_6_while_identity+model_4_lstm/lstm_6/while/Identity:output:0"U
$model_4_lstm_lstm_6_while_identity_1-model_4_lstm/lstm_6/while/Identity_1:output:0"U
$model_4_lstm_lstm_6_while_identity_2-model_4_lstm/lstm_6/while/Identity_2:output:0"U
$model_4_lstm_lstm_6_while_identity_3-model_4_lstm/lstm_6/while/Identity_3:output:0"U
$model_4_lstm_lstm_6_while_identity_4-model_4_lstm/lstm_6/while/Identity_4:output:0"U
$model_4_lstm_lstm_6_while_identity_5-model_4_lstm/lstm_6/while/Identity_5:output:0"
Fmodel_4_lstm_lstm_6_while_lstm_cell_11_biasadd_readvariableop_resourceHmodel_4_lstm_lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0"
Gmodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resourceImodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0"
Emodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_readvariableop_resourceGmodel_4_lstm_lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0"
=model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_strided_slice_1?model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_strided_slice_1_0"ø
ymodel_4_lstm_lstm_6_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_6_tensorarrayunstack_tensorlistfromtensor{model_4_lstm_lstm_6_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp=model_4_lstm/lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp2|
<model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp<model_4_lstm/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp2
>model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp>model_4_lstm/lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ù
Ã
while_cond_441414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_441414___redundant_placeholder04
0while_while_cond_441414___redundant_placeholder14
0while_while_cond_441414___redundant_placeholder24
0while_while_cond_441414___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ô
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_441961

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú


-__inference_model_4_lstm_layer_call_fn_442212

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_4420212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

Ï
lstm_6_while_cond_442429*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1B
>lstm_6_while_lstm_6_while_cond_442429___redundant_placeholder0B
>lstm_6_while_lstm_6_while_cond_442429___redundant_placeholder1B
>lstm_6_while_lstm_6_while_cond_442429___redundant_placeholder2B
>lstm_6_while_lstm_6_while_cond_442429___redundant_placeholder3
lstm_6_while_identity

lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2
lstm_6/while/Lessr
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_6/while/Identity"7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ù
Ã
while_cond_440206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_440206___redundant_placeholder04
0while_while_cond_440206___redundant_placeholder14
0while_while_cond_440206___redundant_placeholder24
0while_while_cond_440206___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¾\

B__inference_lstm_6_layer_call_and_return_conditional_losses_443729
inputs_0?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443645*
condR
while_cond_443644*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
®?
Ò
while_body_442975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444319

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¬

Ï
lstm_5_while_cond_442595*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_442595___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_442595___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_442595___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_442595___redundant_placeholder3
lstm_5_while_identity

lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: 2
lstm_5/while/Lessr
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_5/while/Identity"7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

B__inference_lstm_6_layer_call_and_return_conditional_losses_444031

inputs?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443947*
condR
while_cond_443946*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
¸
'__inference_lstm_6_layer_call_fn_443545
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4406962
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ô
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_442864

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²?
Ô
while_body_443947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

B__inference_lstm_5_layer_call_and_return_conditional_losses_441333

inputs>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_441249*
condR
while_cond_441248*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®?
Ò
while_body_443277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
õ

(__inference_dense_5_layer_call_fn_444191

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4415182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý


-__inference_model_4_lstm_layer_call_fn_442069
input_4
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_4420212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
´F

B__inference_lstm_6_layer_call_and_return_conditional_losses_440906

inputs'
lstm_cell_11_440824:
'
lstm_cell_11_440826:
"
lstm_cell_11_440828:	
identity¢$lstm_cell_11/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2£
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_440824lstm_cell_11_440826lstm_cell_11_440828*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4407592&
$lstm_cell_11/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÄ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_440824lstm_cell_11_440826lstm_cell_11_440828*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_440837*
condR
while_cond_440836*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯F

B__inference_lstm_5_layer_call_and_return_conditional_losses_440066

inputs&
lstm_cell_10_439984:	'
lstm_cell_10_439986:
"
lstm_cell_10_439988:	
identity¢$lstm_cell_10/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2£
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_439984lstm_cell_10_439986lstm_cell_10_439988*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4399832&
$lstm_cell_10/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÄ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_439984lstm_cell_10_439986lstm_cell_10_439988*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_439997*
condR
while_cond_439996*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_442858

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_443534

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ã
while_cond_441663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_441663___redundant_placeholder04
0while_while_cond_441663___redundant_placeholder14
0while_while_cond_441663___redundant_placeholder24
0while_while_cond_441663___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

B__inference_lstm_5_layer_call_and_return_conditional_losses_443361

inputs>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443277*
condR
while_cond_443276*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ã
while_cond_444097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_444097___redundant_placeholder04
0while_while_cond_444097___redundant_placeholder14
0while_while_cond_444097___redundant_placeholder24
0while_while_cond_444097___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²?
Ô
while_body_443645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
\

B__inference_lstm_6_layer_call_and_return_conditional_losses_441499

inputs?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_441415*
condR
while_cond_441414*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

õ
C__inference_dense_5_layer_call_and_return_conditional_losses_441518

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯F

B__inference_lstm_5_layer_call_and_return_conditional_losses_440276

inputs&
lstm_cell_10_440194:	'
lstm_cell_10_440196:
"
lstm_cell_10_440198:	
identity¢$lstm_cell_10/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2£
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_440194lstm_cell_10_440196lstm_cell_10_440198*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4401292&
$lstm_cell_10/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÄ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_440194lstm_cell_10_440196lstm_cell_10_440198*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_440207*
condR
while_cond_440206*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_10/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444385

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
é%
ç
while_body_440627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_11_440651_0:
/
while_lstm_cell_11_440653_0:
*
while_lstm_cell_11_440655_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_11_440651:
-
while_lstm_cell_11_440653:
(
while_lstm_cell_11_440655:	¢*while/lstm_cell_11/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemç
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_440651_0while_lstm_cell_11_440653_0while_lstm_cell_11_440655_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4406132,
*while/lstm_cell_11/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¥
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¥
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_11_440651while_lstm_cell_11_440651_0"8
while_lstm_cell_11_440653while_lstm_cell_11_440653_0"8
while_lstm_cell_11_440655while_lstm_cell_11_440655_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¼
µ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442021

inputs 
lstm_5_441995:	!
lstm_5_441997:

lstm_5_441999:	!
lstm_6_442003:
!
lstm_6_442005:

lstm_6_442007:	!
dense_5_442010:	@
dense_5_442012:@ 
dense_6_442015:@
dense_6_442017:
identity¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCallÛ
lambda_5/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4419612
lambda_5/PartitionedCallº
lstm_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0lstm_5_441995lstm_5_441997lstm_5_441999*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4419382 
lstm_5/StatefulPartitionedCallý
lambda_6/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4417712
lambda_6/PartitionedCallº
lstm_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0lstm_6_442003lstm_6_442005lstm_6_442007*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4417482 
lstm_6/StatefulPartitionedCall³
dense_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_5_442010dense_5_442012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4415182!
dense_5/StatefulPartitionedCall´
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_442015dense_6_442017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4415342!
dense_6/StatefulPartitionedCall
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÔ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
E
)__inference_lambda_5_layer_call_fn_442847

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4411812
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú


-__inference_model_4_lstm_layer_call_fn_442187

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_4415412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
ø
-__inference_lstm_cell_11_layer_call_fn_444353

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4407592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
\

B__inference_lstm_5_layer_call_and_return_conditional_losses_441938

inputs>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_441854*
condR
while_cond_441853*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±I
´

lstm_6_while_body_442745*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0:
P
<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0:
J
;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0:	
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorL
8lstm_6_while_lstm_cell_11_matmul_readvariableop_resource:
N
:lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource:
H
9lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource:	¢0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp¢/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp¢1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpÑ
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItemß
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype021
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOpó
 lstm_6/while/lstm_cell_11/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_6/while/lstm_cell_11/MatMulå
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype023
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpÜ
"lstm_6/while/lstm_cell_11/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_6/while/lstm_cell_11/MatMul_1Ô
lstm_6/while/lstm_cell_11/addAddV2*lstm_6/while/lstm_cell_11/MatMul:product:0,lstm_6/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/lstm_cell_11/addÝ
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOpá
!lstm_6/while/lstm_cell_11/BiasAddBiasAdd!lstm_6/while/lstm_cell_11/add:z:08lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_6/while/lstm_cell_11/BiasAdd
)lstm_6/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_6/while/lstm_cell_11/split/split_dim«
lstm_6/while/lstm_cell_11/splitSplit2lstm_6/while/lstm_cell_11/split/split_dim:output:0*lstm_6/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2!
lstm_6/while/lstm_cell_11/split®
!lstm_6/while/lstm_cell_11/SigmoidSigmoid(lstm_6/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_6/while/lstm_cell_11/Sigmoid²
#lstm_6/while/lstm_cell_11/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_6/while/lstm_cell_11/Sigmoid_1½
lstm_6/while/lstm_cell_11/mulMul'lstm_6/while/lstm_cell_11/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/lstm_cell_11/mul¥
lstm_6/while/lstm_cell_11/ReluRelu(lstm_6/while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_6/while/lstm_cell_11/ReluÑ
lstm_6/while/lstm_cell_11/mul_1Mul%lstm_6/while/lstm_cell_11/Sigmoid:y:0,lstm_6/while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/mul_1Æ
lstm_6/while/lstm_cell_11/add_1AddV2!lstm_6/while/lstm_cell_11/mul:z:0#lstm_6/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/add_1²
#lstm_6/while/lstm_cell_11/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_6/while/lstm_cell_11/Sigmoid_2¤
 lstm_6/while/lstm_cell_11/Relu_1Relu#lstm_6/while/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_6/while/lstm_cell_11/Relu_1Õ
lstm_6/while/lstm_cell_11/mul_2Mul'lstm_6/while/lstm_cell_11/Sigmoid_2:y:0.lstm_6/while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/mul_2
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/y
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/y
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity¡
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2¶
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3ª
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_11/mul_2:z:0^lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/Identity_4ª
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_11/add_1:z:0^lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/Identity_5
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_11_matmul_readvariableop_resource:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0"Ä
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Æ
÷
-__inference_lstm_cell_10_layer_call_fn_444255

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4401292
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¿
¶
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442129
input_4 
lstm_5_442103:	!
lstm_5_442105:

lstm_5_442107:	!
lstm_6_442111:
!
lstm_6_442113:

lstm_6_442115:	!
dense_5_442118:	@
dense_5_442120:@ 
dense_6_442123:@
dense_6_442125:
identity¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCallÜ
lambda_5/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4419612
lambda_5/PartitionedCallº
lstm_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0lstm_5_442103lstm_5_442105lstm_5_442107*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4419382 
lstm_5/StatefulPartitionedCallý
lambda_6/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4417712
lambda_6/PartitionedCallº
lstm_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0lstm_6_442111lstm_6_442113lstm_6_442115*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4417482 
lstm_6/StatefulPartitionedCall³
dense_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_5_442118dense_5_442120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4415182!
dense_5/StatefulPartitionedCall´
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_442123dense_6_442125*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4415342!
dense_6/StatefulPartitionedCall
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÔ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
ø
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_441771

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
µ
'__inference_lstm_5_layer_call_fn_442908

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4419382
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ã
while_cond_441853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_441853___redundant_placeholder04
0while_while_cond_441853___redundant_placeholder14
0while_while_cond_441853___redundant_placeholder24
0while_while_cond_441853___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ù
Ã
while_cond_442974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_442974___redundant_placeholder04
0while_while_cond_442974___redundant_placeholder14
0while_while_cond_442974___redundant_placeholder24
0while_while_cond_442974___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ç
E
)__inference_lambda_5_layer_call_fn_442852

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4419612
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444287

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Å
¸
'__inference_lstm_6_layer_call_fn_443556
inputs_0
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4409062
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Æ
÷
-__inference_lstm_cell_10_layer_call_fn_444238

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4399832
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
­I
²

lstm_5_while_body_442281*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0:	P
<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
J
;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0:	
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorK
8lstm_5_while_lstm_cell_10_matmul_readvariableop_resource:	N
:lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource:
H
9lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource:	¢0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp¢/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp¢1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpÑ
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItemÞ
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOpó
 lstm_5/while/lstm_cell_10/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_5/while/lstm_cell_10/MatMulå
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype023
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpÜ
"lstm_5/while/lstm_cell_10/MatMul_1MatMullstm_5_while_placeholder_29lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_5/while/lstm_cell_10/MatMul_1Ô
lstm_5/while/lstm_cell_10/addAddV2*lstm_5/while/lstm_cell_10/MatMul:product:0,lstm_5/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/lstm_cell_10/addÝ
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOpá
!lstm_5/while/lstm_cell_10/BiasAddBiasAdd!lstm_5/while/lstm_cell_10/add:z:08lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_5/while/lstm_cell_10/BiasAdd
)lstm_5/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_5/while/lstm_cell_10/split/split_dim«
lstm_5/while/lstm_cell_10/splitSplit2lstm_5/while/lstm_cell_10/split/split_dim:output:0*lstm_5/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2!
lstm_5/while/lstm_cell_10/split®
!lstm_5/while/lstm_cell_10/SigmoidSigmoid(lstm_5/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_5/while/lstm_cell_10/Sigmoid²
#lstm_5/while/lstm_cell_10/Sigmoid_1Sigmoid(lstm_5/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_5/while/lstm_cell_10/Sigmoid_1½
lstm_5/while/lstm_cell_10/mulMul'lstm_5/while/lstm_cell_10/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/lstm_cell_10/mul¥
lstm_5/while/lstm_cell_10/ReluRelu(lstm_5/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_5/while/lstm_cell_10/ReluÑ
lstm_5/while/lstm_cell_10/mul_1Mul%lstm_5/while/lstm_cell_10/Sigmoid:y:0,lstm_5/while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/mul_1Æ
lstm_5/while/lstm_cell_10/add_1AddV2!lstm_5/while/lstm_cell_10/mul:z:0#lstm_5/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/add_1²
#lstm_5/while/lstm_cell_10/Sigmoid_2Sigmoid(lstm_5/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_5/while/lstm_cell_10/Sigmoid_2¤
 lstm_5/while/lstm_cell_10/Relu_1Relu#lstm_5/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_5/while/lstm_cell_10/Relu_1Õ
lstm_5/while/lstm_cell_10/mul_2Mul'lstm_5/while/lstm_cell_10/Sigmoid_2:y:0.lstm_5/while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/mul_2
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder#lstm_5/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity¡
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2¶
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3ª
lstm_5/while/Identity_4Identity#lstm_5/while/lstm_cell_10/mul_2:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/Identity_4ª
lstm_5/while/Identity_5Identity#lstm_5/while/lstm_cell_10/add_1:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/Identity_5
lstm_5/while/NoOpNoOp1^lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp0^lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp2^lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_5/while/NoOp"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"x
9lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0"z
:lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_10_matmul_readvariableop_resource:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0"Ä
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp2b
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp2f
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ý


-__inference_model_4_lstm_layer_call_fn_441564
input_4
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_4415412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
®?
Ò
while_body_441249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ô
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_441181

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
£	
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442527

inputsE
2lstm_5_lstm_cell_10_matmul_readvariableop_resource:	H
4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource:
B
3lstm_5_lstm_cell_10_biasadd_readvariableop_resource:	F
2lstm_6_lstm_cell_11_matmul_readvariableop_resource:
H
4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource:
B
3lstm_6_lstm_cell_11_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@5
'dense_6_biasadd_readvariableop_resource:
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp¢)lstm_5/lstm_cell_10/MatMul/ReadVariableOp¢+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp¢lstm_5/while¢*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp¢)lstm_6/lstm_cell_11/MatMul/ReadVariableOp¢+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp¢lstm_6/whilet
lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_5/ExpandDims/dim
lambda_5/ExpandDims
ExpandDimsinputs lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_5/ExpandDimsh
lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_5/Shape
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros/mul/y
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_5/zeros/Less/y
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros/packed/1
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros_1/mul/y
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_5/zeros_1/Less/y
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros_1/packed/1¥
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/zeros_1
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm¥
lstm_5/transpose	Transposelambda_5/ExpandDims:output:0lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_5/TensorArrayV2/element_shapeÎ
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2Í
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2¦
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_5/strided_slice_2Ê
)lstm_5/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_5/lstm_cell_10/MatMul/ReadVariableOpÉ
lstm_5/lstm_cell_10/MatMulMatMullstm_5/strided_slice_2:output:01lstm_5/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/MatMulÑ
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpÅ
lstm_5/lstm_cell_10/MatMul_1MatMullstm_5/zeros:output:03lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/MatMul_1¼
lstm_5/lstm_cell_10/addAddV2$lstm_5/lstm_cell_10/MatMul:product:0&lstm_5/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/addÉ
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpÉ
lstm_5/lstm_cell_10/BiasAddBiasAddlstm_5/lstm_cell_10/add:z:02lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/BiasAdd
#lstm_5/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_5/lstm_cell_10/split/split_dim
lstm_5/lstm_cell_10/splitSplit,lstm_5/lstm_cell_10/split/split_dim:output:0$lstm_5/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_5/lstm_cell_10/split
lstm_5/lstm_cell_10/SigmoidSigmoid"lstm_5/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid 
lstm_5/lstm_cell_10/Sigmoid_1Sigmoid"lstm_5/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid_1¨
lstm_5/lstm_cell_10/mulMul!lstm_5/lstm_cell_10/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul
lstm_5/lstm_cell_10/ReluRelu"lstm_5/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Relu¹
lstm_5/lstm_cell_10/mul_1Mullstm_5/lstm_cell_10/Sigmoid:y:0&lstm_5/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul_1®
lstm_5/lstm_cell_10/add_1AddV2lstm_5/lstm_cell_10/mul:z:0lstm_5/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/add_1 
lstm_5/lstm_cell_10/Sigmoid_2Sigmoid"lstm_5/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid_2
lstm_5/lstm_cell_10/Relu_1Relulstm_5/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Relu_1½
lstm_5/lstm_cell_10/mul_2Mul!lstm_5/lstm_cell_10/Sigmoid_2:y:0(lstm_5/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul_2
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$lstm_5/TensorArrayV2_1/element_shapeÔ
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counterø
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_5_lstm_cell_10_matmul_readvariableop_resource4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource3lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_5_while_body_442281*$
condR
lstm_5_while_cond_442280*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_5/whileÃ
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_5/strided_slice_3/stack
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2Å
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_5/strided_slice_3
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/permÂ
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtimet
lambda_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_6/ExpandDims/dim²
lambda_6/ExpandDims
ExpandDimslstm_5/strided_slice_3:output:0 lambda_6/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_6/ExpandDimsh
lstm_6/ShapeShapelambda_6/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_6/Shape
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicek
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros/mul/y
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_6/zeros/Less/y
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessq
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros/packed/1
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/Const
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/zeroso
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros_1/mul/y
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_6/zeros_1/Less/y
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lessu
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros_1/packed/1¥
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/Const
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/zeros_1
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm¦
lstm_6/transpose	Transposelambda_6/ExpandDims:output:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_6/TensorArrayV2/element_shapeÎ
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2Í
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2§
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_6/strided_slice_2Ë
)lstm_6/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02+
)lstm_6/lstm_cell_11/MatMul/ReadVariableOpÉ
lstm_6/lstm_cell_11/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/MatMulÑ
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpÅ
lstm_6/lstm_cell_11/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/MatMul_1¼
lstm_6/lstm_cell_11/addAddV2$lstm_6/lstm_cell_11/MatMul:product:0&lstm_6/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/addÉ
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpÉ
lstm_6/lstm_cell_11/BiasAddBiasAddlstm_6/lstm_cell_11/add:z:02lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/BiasAdd
#lstm_6/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_6/lstm_cell_11/split/split_dim
lstm_6/lstm_cell_11/splitSplit,lstm_6/lstm_cell_11/split/split_dim:output:0$lstm_6/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_6/lstm_cell_11/split
lstm_6/lstm_cell_11/SigmoidSigmoid"lstm_6/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid 
lstm_6/lstm_cell_11/Sigmoid_1Sigmoid"lstm_6/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid_1¨
lstm_6/lstm_cell_11/mulMul!lstm_6/lstm_cell_11/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul
lstm_6/lstm_cell_11/ReluRelu"lstm_6/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Relu¹
lstm_6/lstm_cell_11/mul_1Mullstm_6/lstm_cell_11/Sigmoid:y:0&lstm_6/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul_1®
lstm_6/lstm_cell_11/add_1AddV2lstm_6/lstm_cell_11/mul:z:0lstm_6/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/add_1 
lstm_6/lstm_cell_11/Sigmoid_2Sigmoid"lstm_6/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid_2
lstm_6/lstm_cell_11/Relu_1Relulstm_6/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Relu_1½
lstm_6/lstm_cell_11/mul_2Mul!lstm_6/lstm_cell_11/Sigmoid_2:y:0(lstm_6/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul_2
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$lstm_6/TensorArrayV2_1/element_shapeÔ
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/time
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counterø
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_11_matmul_readvariableop_resource4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource3lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_442430*$
condR
lstm_6_while_cond_442429*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_6/whileÃ
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_6/strided_slice_3/stack
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2Å
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_6/strided_slice_3
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/permÂ
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtime¦
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_5/MatMul/ReadVariableOp¤
dense_5/MatMulMatMullstm_6/strided_slice_3:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/MatMul¤
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOp¡
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/Relu¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/BiasAdds
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityü
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp+^lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp*^lstm_5/lstm_cell_10/MatMul/ReadVariableOp,^lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_5/while+^lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_11/MatMul/ReadVariableOp,^lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp2V
)lstm_5/lstm_cell_10/MatMul/ReadVariableOp)lstm_5/lstm_cell_10/MatMul/ReadVariableOp2Z
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2X
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_11/MatMul/ReadVariableOp)lstm_6/lstm_cell_11/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´F

B__inference_lstm_6_layer_call_and_return_conditional_losses_440696

inputs'
lstm_cell_11_440614:
'
lstm_cell_11_440616:
"
lstm_cell_11_440618:	
identity¢$lstm_cell_11/StatefulPartitionedCall¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2£
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_440614lstm_cell_11_440616lstm_cell_11_440618*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4406132&
$lstm_cell_11/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÄ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_440614lstm_cell_11_440616lstm_cell_11_440618*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_440627*
condR
while_cond_440626*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

Identity}
NoOpNoOp%^lstm_cell_11/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±I
´

lstm_6_while_body_442430*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0N
:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0:
P
<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0:
J
;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0:	
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorL
8lstm_6_while_lstm_cell_11_matmul_readvariableop_resource:
N
:lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource:
H
9lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource:	¢0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp¢/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp¢1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpÑ
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_6/while/TensorArrayV2Read/TensorListGetItemß
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype021
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOpó
 lstm_6/while/lstm_cell_11/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_6/while/lstm_cell_11/MatMulå
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype023
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOpÜ
"lstm_6/while/lstm_cell_11/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_6/while/lstm_cell_11/MatMul_1Ô
lstm_6/while/lstm_cell_11/addAddV2*lstm_6/while/lstm_cell_11/MatMul:product:0,lstm_6/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/lstm_cell_11/addÝ
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOpá
!lstm_6/while/lstm_cell_11/BiasAddBiasAdd!lstm_6/while/lstm_cell_11/add:z:08lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_6/while/lstm_cell_11/BiasAdd
)lstm_6/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_6/while/lstm_cell_11/split/split_dim«
lstm_6/while/lstm_cell_11/splitSplit2lstm_6/while/lstm_cell_11/split/split_dim:output:0*lstm_6/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2!
lstm_6/while/lstm_cell_11/split®
!lstm_6/while/lstm_cell_11/SigmoidSigmoid(lstm_6/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_6/while/lstm_cell_11/Sigmoid²
#lstm_6/while/lstm_cell_11/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_6/while/lstm_cell_11/Sigmoid_1½
lstm_6/while/lstm_cell_11/mulMul'lstm_6/while/lstm_cell_11/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/lstm_cell_11/mul¥
lstm_6/while/lstm_cell_11/ReluRelu(lstm_6/while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_6/while/lstm_cell_11/ReluÑ
lstm_6/while/lstm_cell_11/mul_1Mul%lstm_6/while/lstm_cell_11/Sigmoid:y:0,lstm_6/while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/mul_1Æ
lstm_6/while/lstm_cell_11/add_1AddV2!lstm_6/while/lstm_cell_11/mul:z:0#lstm_6/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/add_1²
#lstm_6/while/lstm_cell_11/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_6/while/lstm_cell_11/Sigmoid_2¤
 lstm_6/while/lstm_cell_11/Relu_1Relu#lstm_6/while/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_6/while/lstm_cell_11/Relu_1Õ
lstm_6/while/lstm_cell_11/mul_2Mul'lstm_6/while/lstm_cell_11/Sigmoid_2:y:0.lstm_6/while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/lstm_cell_11/mul_2
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_6/while/TensorArrayV2Write/TensorListSetItemj
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add/y
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/addn
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_6/while/add_1/y
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_6/while/add_1
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity¡
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_1
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_2¶
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: 2
lstm_6/while/Identity_3ª
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_11/mul_2:z:0^lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/Identity_4ª
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_11/add_1:z:0^lstm_6/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/while/Identity_5
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_6/while/NoOp"7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_11_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_11_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_11_matmul_readvariableop_resource:lstm_6_while_lstm_cell_11_matmul_readvariableop_resource_0"Ä
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_11/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_11/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¿
¶
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442099
input_4 
lstm_5_442073:	!
lstm_5_442075:

lstm_5_442077:	!
lstm_6_442081:
!
lstm_6_442083:

lstm_6_442085:	!
dense_5_442088:	@
dense_5_442090:@ 
dense_6_442093:@
dense_6_442095:
identity¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCallÜ
lambda_5/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4411812
lambda_5/PartitionedCallº
lstm_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0lstm_5_442073lstm_5_442075lstm_5_442077*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4413332 
lstm_5/StatefulPartitionedCallý
lambda_6/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4413472
lambda_6/PartitionedCallº
lstm_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0lstm_6_442081lstm_6_442083lstm_6_442085*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4414992 
lstm_6/StatefulPartitionedCall³
dense_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_5_442088dense_5_442090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4415182!
dense_5/StatefulPartitionedCall´
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_442093dense_6_442095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4415342!
dense_6/StatefulPartitionedCall
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÔ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
ò[
Ò
%model_4_lstm_lstm_5_while_body_439662D
@model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_loop_counterJ
Fmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_maximum_iterations)
%model_4_lstm_lstm_5_while_placeholder+
'model_4_lstm_lstm_5_while_placeholder_1+
'model_4_lstm_lstm_5_while_placeholder_2+
'model_4_lstm_lstm_5_while_placeholder_3C
?model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_strided_slice_1_0
{model_4_lstm_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_5_tensorarrayunstack_tensorlistfromtensor_0Z
Gmodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0:	]
Imodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
W
Hmodel_4_lstm_lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0:	&
"model_4_lstm_lstm_5_while_identity(
$model_4_lstm_lstm_5_while_identity_1(
$model_4_lstm_lstm_5_while_identity_2(
$model_4_lstm_lstm_5_while_identity_3(
$model_4_lstm_lstm_5_while_identity_4(
$model_4_lstm_lstm_5_while_identity_5A
=model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_strided_slice_1}
ymodel_4_lstm_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_5_tensorarrayunstack_tensorlistfromtensorX
Emodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_readvariableop_resource:	[
Gmodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource:
U
Fmodel_4_lstm_lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource:	¢=model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp¢<model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp¢>model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpë
Kmodel_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Kmodel_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeË
=model_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{model_4_lstm_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%model_4_lstm_lstm_5_while_placeholderTmodel_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02?
=model_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItem
<model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOpGmodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02>
<model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp§
-model_4_lstm/lstm_5/while/lstm_cell_10/MatMulMatMulDmodel_4_lstm/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Dmodel_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_4_lstm/lstm_5/while/lstm_cell_10/MatMul
>model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpImodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02@
>model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp
/model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1MatMul'model_4_lstm_lstm_5_while_placeholder_2Fmodel_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1
*model_4_lstm/lstm_5/while/lstm_cell_10/addAddV27model_4_lstm/lstm_5/while/lstm_cell_10/MatMul:product:09model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_5/while/lstm_cell_10/add
=model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpHmodel_4_lstm_lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02?
=model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp
.model_4_lstm/lstm_5/while/lstm_cell_10/BiasAddBiasAdd.model_4_lstm/lstm_5/while/lstm_cell_10/add:z:0Emodel_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd²
6model_4_lstm/lstm_5/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :28
6model_4_lstm/lstm_5/while/lstm_cell_10/split/split_dimß
,model_4_lstm/lstm_5/while/lstm_cell_10/splitSplit?model_4_lstm/lstm_5/while/lstm_cell_10/split/split_dim:output:07model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2.
,model_4_lstm/lstm_5/while/lstm_cell_10/splitÕ
.model_4_lstm/lstm_5/while/lstm_cell_10/SigmoidSigmoid5model_4_lstm/lstm_5/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.model_4_lstm/lstm_5/while/lstm_cell_10/SigmoidÙ
0model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_1Sigmoid5model_4_lstm/lstm_5/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_1ñ
*model_4_lstm/lstm_5/while/lstm_cell_10/mulMul4model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_1:y:0'model_4_lstm_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_5/while/lstm_cell_10/mulÌ
+model_4_lstm/lstm_5/while/lstm_cell_10/ReluRelu5model_4_lstm/lstm_5/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model_4_lstm/lstm_5/while/lstm_cell_10/Relu
,model_4_lstm/lstm_5/while/lstm_cell_10/mul_1Mul2model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid:y:09model_4_lstm/lstm_5/while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_5/while/lstm_cell_10/mul_1ú
,model_4_lstm/lstm_5/while/lstm_cell_10/add_1AddV2.model_4_lstm/lstm_5/while/lstm_cell_10/mul:z:00model_4_lstm/lstm_5/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_5/while/lstm_cell_10/add_1Ù
0model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_2Sigmoid5model_4_lstm/lstm_5/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_2Ë
-model_4_lstm/lstm_5/while/lstm_cell_10/Relu_1Relu0model_4_lstm/lstm_5/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-model_4_lstm/lstm_5/while/lstm_cell_10/Relu_1
,model_4_lstm/lstm_5/while/lstm_cell_10/mul_2Mul4model_4_lstm/lstm_5/while/lstm_cell_10/Sigmoid_2:y:0;model_4_lstm/lstm_5/while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_5/while/lstm_cell_10/mul_2Ä
>model_4_lstm/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'model_4_lstm_lstm_5_while_placeholder_1%model_4_lstm_lstm_5_while_placeholder0model_4_lstm/lstm_5/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02@
>model_4_lstm/lstm_5/while/TensorArrayV2Write/TensorListSetItem
model_4_lstm/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
model_4_lstm/lstm_5/while/add/y¹
model_4_lstm/lstm_5/while/addAddV2%model_4_lstm_lstm_5_while_placeholder(model_4_lstm/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
model_4_lstm/lstm_5/while/add
!model_4_lstm/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_4_lstm/lstm_5/while/add_1/yÚ
model_4_lstm/lstm_5/while/add_1AddV2@model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_loop_counter*model_4_lstm/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
model_4_lstm/lstm_5/while/add_1»
"model_4_lstm/lstm_5/while/IdentityIdentity#model_4_lstm/lstm_5/while/add_1:z:0^model_4_lstm/lstm_5/while/NoOp*
T0*
_output_shapes
: 2$
"model_4_lstm/lstm_5/while/Identityâ
$model_4_lstm/lstm_5/while/Identity_1IdentityFmodel_4_lstm_lstm_5_while_model_4_lstm_lstm_5_while_maximum_iterations^model_4_lstm/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_5/while/Identity_1½
$model_4_lstm/lstm_5/while/Identity_2Identity!model_4_lstm/lstm_5/while/add:z:0^model_4_lstm/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_5/while/Identity_2ê
$model_4_lstm/lstm_5/while/Identity_3IdentityNmodel_4_lstm/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_4_lstm/lstm_5/while/NoOp*
T0*
_output_shapes
: 2&
$model_4_lstm/lstm_5/while/Identity_3Þ
$model_4_lstm/lstm_5/while/Identity_4Identity0model_4_lstm/lstm_5/while/lstm_cell_10/mul_2:z:0^model_4_lstm/lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_5/while/Identity_4Þ
$model_4_lstm/lstm_5/while/Identity_5Identity0model_4_lstm/lstm_5/while/lstm_cell_10/add_1:z:0^model_4_lstm/lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_5/while/Identity_5Â
model_4_lstm/lstm_5/while/NoOpNoOp>^model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp=^model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp?^model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2 
model_4_lstm/lstm_5/while/NoOp"Q
"model_4_lstm_lstm_5_while_identity+model_4_lstm/lstm_5/while/Identity:output:0"U
$model_4_lstm_lstm_5_while_identity_1-model_4_lstm/lstm_5/while/Identity_1:output:0"U
$model_4_lstm_lstm_5_while_identity_2-model_4_lstm/lstm_5/while/Identity_2:output:0"U
$model_4_lstm_lstm_5_while_identity_3-model_4_lstm/lstm_5/while/Identity_3:output:0"U
$model_4_lstm_lstm_5_while_identity_4-model_4_lstm/lstm_5/while/Identity_4:output:0"U
$model_4_lstm_lstm_5_while_identity_5-model_4_lstm/lstm_5/while/Identity_5:output:0"
Fmodel_4_lstm_lstm_5_while_lstm_cell_10_biasadd_readvariableop_resourceHmodel_4_lstm_lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0"
Gmodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resourceImodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0"
Emodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_readvariableop_resourceGmodel_4_lstm_lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0"
=model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_strided_slice_1?model_4_lstm_lstm_5_while_model_4_lstm_lstm_5_strided_slice_1_0"ø
ymodel_4_lstm_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_5_tensorarrayunstack_tensorlistfromtensor{model_4_lstm_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_4_lstm_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2~
=model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp=model_4_lstm/lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp2|
<model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp<model_4_lstm/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp2
>model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp>model_4_lstm/lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¼
µ
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_441541

inputs 
lstm_5_441334:	!
lstm_5_441336:

lstm_5_441338:	!
lstm_6_441500:
!
lstm_6_441502:

lstm_6_441504:	!
dense_5_441519:	@
dense_5_441521:@ 
dense_6_441535:@
dense_6_441537:
identity¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢lstm_6/StatefulPartitionedCallÛ
lambda_5/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_4411812
lambda_5/PartitionedCallº
lstm_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0lstm_5_441334lstm_5_441336lstm_5_441338*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4413332 
lstm_5/StatefulPartitionedCallý
lambda_6/PartitionedCallPartitionedCall'lstm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4413472
lambda_6/PartitionedCallº
lstm_6/StatefulPartitionedCallStatefulPartitionedCall!lambda_6/PartitionedCall:output:0lstm_6_441500lstm_6_441502lstm_6_441504*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4414992 
lstm_6/StatefulPartitionedCall³
dense_5/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0dense_5_441519dense_5_441521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_4415182!
dense_5/StatefulPartitionedCall´
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_441535dense_6_441537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4415342!
dense_6/StatefulPartitionedCall
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÔ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
·
'__inference_lstm_5_layer_call_fn_442875
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4400662
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
æ%
å
while_body_439997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_10_440021_0:	/
while_lstm_cell_10_440023_0:
*
while_lstm_cell_10_440025_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_10_440021:	-
while_lstm_cell_10_440023:
(
while_lstm_cell_10_440025:	¢*while/lstm_cell_10/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemç
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_440021_0while_lstm_cell_10_440023_0while_lstm_cell_10_440025_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_4399832,
*while/lstm_cell_10/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¥
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¥
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_440021while_lstm_cell_10_440021_0"8
while_lstm_cell_10_440023while_lstm_cell_10_440023_0"8
while_lstm_cell_10_440025while_lstm_cell_10_440025_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ù
Ã
while_cond_443427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443427___redundant_placeholder04
0while_while_cond_443427___redundant_placeholder14
0while_while_cond_443427___redundant_placeholder24
0while_while_cond_443427___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ù
Ã
while_cond_440626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_440626___redundant_placeholder04
0while_while_cond_440626___redundant_placeholder14
0while_while_cond_440626___redundant_placeholder24
0while_while_cond_440626___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ù
Ã
while_cond_443276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443276___redundant_placeholder04
0while_while_cond_443276___redundant_placeholder14
0while_while_cond_443276___redundant_placeholder24
0while_while_cond_443276___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
\

B__inference_lstm_5_layer_call_and_return_conditional_losses_443512

inputs>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileD
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
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
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443428*
condR
while_cond_443427*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
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
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_440613

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ù
Ã
while_cond_443795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443795___redundant_placeholder04
0while_while_cond_443795___redundant_placeholder14
0while_while_cond_443795___redundant_placeholder24
0while_while_cond_443795___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¸\

B__inference_lstm_5_layer_call_and_return_conditional_losses_443059
inputs_0>
+lstm_cell_10_matmul_readvariableop_resource:	A
-lstm_cell_10_matmul_1_readvariableop_resource:
;
,lstm_cell_10_biasadd_readvariableop_resource:	
identity¢#lstm_cell_10/BiasAdd/ReadVariableOp¢"lstm_cell_10/MatMul/ReadVariableOp¢$lstm_cell_10/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp­
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul¼
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp©
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/MatMul_1 
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add´
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp­
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/BiasAdd~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim÷
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_10/split
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_1
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul~
lstm_cell_10/ReluRelulstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_1
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/add_1
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Sigmoid_2}
lstm_cell_10/Relu_1Relulstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/Relu_1¡
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0!lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_10/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_442975*
condR
while_cond_442974*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
é%
ç
while_body_440837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_11_440861_0:
/
while_lstm_cell_11_440863_0:
*
while_lstm_cell_11_440865_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_11_440861:
-
while_lstm_cell_11_440863:
(
while_lstm_cell_11_440865:	¢*while/lstm_cell_11/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemç
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_440861_0while_lstm_cell_11_440863_0while_lstm_cell_11_440865_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4407592,
*while/lstm_cell_11/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3¥
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4¥
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5

while/NoOpNoOp+^while/lstm_cell_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_11_440861while_lstm_cell_11_440861_0"8
while_lstm_cell_11_440863while_lstm_cell_11_440863_0"8
while_lstm_cell_11_440865while_lstm_cell_11_440865_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

õ
C__inference_dense_5_layer_call_and_return_conditional_losses_444202

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­I
²

lstm_5_while_body_442596*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0:	P
<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0:
J
;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0:	
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorK
8lstm_5_while_lstm_cell_10_matmul_readvariableop_resource:	N
:lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource:
H
9lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource:	¢0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp¢/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp¢1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpÑ
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_5/while/TensorArrayV2Read/TensorListGetItemÞ
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype021
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOpó
 lstm_5/while/lstm_cell_10/MatMulMatMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_5/while/lstm_cell_10/MatMulå
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype023
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOpÜ
"lstm_5/while/lstm_cell_10/MatMul_1MatMullstm_5_while_placeholder_29lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_5/while/lstm_cell_10/MatMul_1Ô
lstm_5/while/lstm_cell_10/addAddV2*lstm_5/while/lstm_cell_10/MatMul:product:0,lstm_5/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/lstm_cell_10/addÝ
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype022
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOpá
!lstm_5/while/lstm_cell_10/BiasAddBiasAdd!lstm_5/while/lstm_cell_10/add:z:08lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_5/while/lstm_cell_10/BiasAdd
)lstm_5/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2+
)lstm_5/while/lstm_cell_10/split/split_dim«
lstm_5/while/lstm_cell_10/splitSplit2lstm_5/while/lstm_cell_10/split/split_dim:output:0*lstm_5/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2!
lstm_5/while/lstm_cell_10/split®
!lstm_5/while/lstm_cell_10/SigmoidSigmoid(lstm_5/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_5/while/lstm_cell_10/Sigmoid²
#lstm_5/while/lstm_cell_10/Sigmoid_1Sigmoid(lstm_5/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_5/while/lstm_cell_10/Sigmoid_1½
lstm_5/while/lstm_cell_10/mulMul'lstm_5/while/lstm_cell_10/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/lstm_cell_10/mul¥
lstm_5/while/lstm_cell_10/ReluRelu(lstm_5/while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_5/while/lstm_cell_10/ReluÑ
lstm_5/while/lstm_cell_10/mul_1Mul%lstm_5/while/lstm_cell_10/Sigmoid:y:0,lstm_5/while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/mul_1Æ
lstm_5/while/lstm_cell_10/add_1AddV2!lstm_5/while/lstm_cell_10/mul:z:0#lstm_5/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/add_1²
#lstm_5/while/lstm_cell_10/Sigmoid_2Sigmoid(lstm_5/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#lstm_5/while/lstm_cell_10/Sigmoid_2¤
 lstm_5/while/lstm_cell_10/Relu_1Relu#lstm_5/while/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_5/while/lstm_cell_10/Relu_1Õ
lstm_5/while/lstm_cell_10/mul_2Mul'lstm_5/while/lstm_cell_10/Sigmoid_2:y:0.lstm_5/while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/lstm_cell_10/mul_2
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder#lstm_5/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype023
1lstm_5/while/TensorArrayV2Write/TensorListSetItemj
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add/y
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/addn
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_5/while/add_1/y
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_5/while/add_1
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity¡
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_1
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_2¶
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 2
lstm_5/while/Identity_3ª
lstm_5/while/Identity_4Identity#lstm_5/while/lstm_cell_10/mul_2:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/Identity_4ª
lstm_5/while/Identity_5Identity#lstm_5/while/lstm_cell_10/add_1:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/while/Identity_5
lstm_5/while/NoOpNoOp1^lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp0^lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp2^lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_5/while/NoOp"7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"x
9lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource;lstm_5_while_lstm_cell_10_biasadd_readvariableop_resource_0"z
:lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource<lstm_5_while_lstm_cell_10_matmul_1_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_10_matmul_readvariableop_resource:lstm_5_while_lstm_cell_10_matmul_readvariableop_resource_0"Ä
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp0lstm_5/while/lstm_cell_10/BiasAdd/ReadVariableOp2b
/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp/lstm_5/while/lstm_cell_10/MatMul/ReadVariableOp2f
1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp1lstm_5/while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Ù
Ã
while_cond_440836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_440836___redundant_placeholder04
0while_while_cond_440836___redundant_placeholder14
0while_while_cond_440836___redundant_placeholder24
0while_while_cond_440836___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
å
£	
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442842

inputsE
2lstm_5_lstm_cell_10_matmul_readvariableop_resource:	H
4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource:
B
3lstm_5_lstm_cell_10_biasadd_readvariableop_resource:	F
2lstm_6_lstm_cell_11_matmul_readvariableop_resource:
H
4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource:
B
3lstm_6_lstm_cell_11_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	@5
'dense_5_biasadd_readvariableop_resource:@8
&dense_6_matmul_readvariableop_resource:@5
'dense_6_biasadd_readvariableop_resource:
identity¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp¢)lstm_5/lstm_cell_10/MatMul/ReadVariableOp¢+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp¢lstm_5/while¢*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp¢)lstm_6/lstm_cell_11/MatMul/ReadVariableOp¢+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp¢lstm_6/whilet
lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_5/ExpandDims/dim
lambda_5/ExpandDims
ExpandDimsinputs lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_5/ExpandDimsh
lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_5/Shape
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice/stack
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_1
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_5/strided_slice/stack_2
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slicek
lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros/mul/y
lstm_5/zeros/mulMullstm_5/strided_slice:output:0lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/mulm
lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_5/zeros/Less/y
lstm_5/zeros/LessLesslstm_5/zeros/mul:z:0lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros/Lessq
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros/packed/1
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros/packedm
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros/Const
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/zeroso
lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros_1/mul/y
lstm_5/zeros_1/mulMullstm_5/strided_slice:output:0lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/mulq
lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_5/zeros_1/Less/y
lstm_5/zeros_1/LessLesslstm_5/zeros_1/mul:z:0lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_5/zeros_1/Lessu
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_5/zeros_1/packed/1¥
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_5/zeros_1/packedq
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/zeros_1/Const
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/zeros_1
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose/perm¥
lstm_5/transpose	Transposelambda_5/ExpandDims:output:0lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/transposed
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:2
lstm_5/Shape_1
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_1/stack
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_1
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_1/stack_2
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_5/strided_slice_1
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_5/TensorArrayV2/element_shapeÎ
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2Í
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_5/TensorArrayUnstack/TensorListFromTensor
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_5/strided_slice_2/stack
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_1
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_2/stack_2¦
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_5/strided_slice_2Ê
)lstm_5/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02+
)lstm_5/lstm_cell_10/MatMul/ReadVariableOpÉ
lstm_5/lstm_cell_10/MatMulMatMullstm_5/strided_slice_2:output:01lstm_5/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/MatMulÑ
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpÅ
lstm_5/lstm_cell_10/MatMul_1MatMullstm_5/zeros:output:03lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/MatMul_1¼
lstm_5/lstm_cell_10/addAddV2$lstm_5/lstm_cell_10/MatMul:product:0&lstm_5/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/addÉ
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp3lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpÉ
lstm_5/lstm_cell_10/BiasAddBiasAddlstm_5/lstm_cell_10/add:z:02lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/BiasAdd
#lstm_5/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_5/lstm_cell_10/split/split_dim
lstm_5/lstm_cell_10/splitSplit,lstm_5/lstm_cell_10/split/split_dim:output:0$lstm_5/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_5/lstm_cell_10/split
lstm_5/lstm_cell_10/SigmoidSigmoid"lstm_5/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid 
lstm_5/lstm_cell_10/Sigmoid_1Sigmoid"lstm_5/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid_1¨
lstm_5/lstm_cell_10/mulMul!lstm_5/lstm_cell_10/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul
lstm_5/lstm_cell_10/ReluRelu"lstm_5/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Relu¹
lstm_5/lstm_cell_10/mul_1Mullstm_5/lstm_cell_10/Sigmoid:y:0&lstm_5/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul_1®
lstm_5/lstm_cell_10/add_1AddV2lstm_5/lstm_cell_10/mul:z:0lstm_5/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/add_1 
lstm_5/lstm_cell_10/Sigmoid_2Sigmoid"lstm_5/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Sigmoid_2
lstm_5/lstm_cell_10/Relu_1Relulstm_5/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/Relu_1½
lstm_5/lstm_cell_10/mul_2Mul!lstm_5/lstm_cell_10/Sigmoid_2:y:0(lstm_5/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/lstm_cell_10/mul_2
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$lstm_5/TensorArrayV2_1/element_shapeÔ
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_5/TensorArrayV2_1\
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/time
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_5/while/maximum_iterationsx
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_5/while/loop_counterø
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_5_lstm_cell_10_matmul_readvariableop_resource4lstm_5_lstm_cell_10_matmul_1_readvariableop_resource3lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_5_while_body_442596*$
condR
lstm_5_while_cond_442595*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_5/whileÃ
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)lstm_5/TensorArrayV2Stack/TensorListStack
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_5/strided_slice_3/stack
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_5/strided_slice_3/stack_1
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_5/strided_slice_3/stack_2Å
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_5/strided_slice_3
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_5/transpose_1/permÂ
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_5/transpose_1t
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_5/runtimet
lambda_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_6/ExpandDims/dim²
lambda_6/ExpandDims
ExpandDimslstm_5/strided_slice_3:output:0 lambda_6/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_6/ExpandDimsh
lstm_6/ShapeShapelambda_6/ExpandDims:output:0*
T0*
_output_shapes
:2
lstm_6/Shape
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice/stack
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_1
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_6/strided_slice/stack_2
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slicek
lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros/mul/y
lstm_6/zeros/mulMullstm_6/strided_slice:output:0lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/mulm
lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_6/zeros/Less/y
lstm_6/zeros/LessLesslstm_6/zeros/mul:z:0lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros/Lessq
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros/packed/1
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros/packedm
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros/Const
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/zeroso
lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros_1/mul/y
lstm_6/zeros_1/mulMullstm_6/strided_slice:output:0lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/mulq
lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_6/zeros_1/Less/y
lstm_6/zeros_1/LessLesslstm_6/zeros_1/mul:z:0lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_6/zeros_1/Lessu
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2
lstm_6/zeros_1/packed/1¥
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_6/zeros_1/packedq
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/zeros_1/Const
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/zeros_1
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose/perm¦
lstm_6/transpose	Transposelambda_6/ExpandDims:output:0lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/transposed
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
:2
lstm_6/Shape_1
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_1/stack
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_1
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_1/stack_2
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_6/strided_slice_1
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_6/TensorArrayV2/element_shapeÎ
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2Í
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_6/TensorArrayUnstack/TensorListFromTensor
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_6/strided_slice_2/stack
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_1
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_2/stack_2§
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_6/strided_slice_2Ë
)lstm_6/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02+
)lstm_6/lstm_cell_11/MatMul/ReadVariableOpÉ
lstm_6/lstm_cell_11/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/MatMulÑ
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02-
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpÅ
lstm_6/lstm_cell_11/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/MatMul_1¼
lstm_6/lstm_cell_11/addAddV2$lstm_6/lstm_cell_11/MatMul:product:0&lstm_6/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/addÉ
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpÉ
lstm_6/lstm_cell_11/BiasAddBiasAddlstm_6/lstm_cell_11/add:z:02lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/BiasAdd
#lstm_6/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#lstm_6/lstm_cell_11/split/split_dim
lstm_6/lstm_cell_11/splitSplit,lstm_6/lstm_cell_11/split/split_dim:output:0$lstm_6/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_6/lstm_cell_11/split
lstm_6/lstm_cell_11/SigmoidSigmoid"lstm_6/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid 
lstm_6/lstm_cell_11/Sigmoid_1Sigmoid"lstm_6/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid_1¨
lstm_6/lstm_cell_11/mulMul!lstm_6/lstm_cell_11/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul
lstm_6/lstm_cell_11/ReluRelu"lstm_6/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Relu¹
lstm_6/lstm_cell_11/mul_1Mullstm_6/lstm_cell_11/Sigmoid:y:0&lstm_6/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul_1®
lstm_6/lstm_cell_11/add_1AddV2lstm_6/lstm_cell_11/mul:z:0lstm_6/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/add_1 
lstm_6/lstm_cell_11/Sigmoid_2Sigmoid"lstm_6/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Sigmoid_2
lstm_6/lstm_cell_11/Relu_1Relulstm_6/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/Relu_1½
lstm_6/lstm_cell_11/mul_2Mul!lstm_6/lstm_cell_11/Sigmoid_2:y:0(lstm_6/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/lstm_cell_11/mul_2
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2&
$lstm_6/TensorArrayV2_1/element_shapeÔ
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_6/TensorArrayV2_1\
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/time
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_6/while/maximum_iterationsx
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_6/while/loop_counterø
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_11_matmul_readvariableop_resource4lstm_6_lstm_cell_11_matmul_1_readvariableop_resource3lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_6_while_body_442745*$
condR
lstm_6_while_cond_442744*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
lstm_6/whileÃ
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)lstm_6/TensorArrayV2Stack/TensorListStack
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_6/strided_slice_3/stack
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_6/strided_slice_3/stack_1
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_6/strided_slice_3/stack_2Å
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_6/strided_slice_3
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_6/transpose_1/permÂ
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_6/transpose_1t
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_6/runtime¦
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
dense_5/MatMul/ReadVariableOp¤
dense_5/MatMulMatMullstm_6/strided_slice_3:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/MatMul¤
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOp¡
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_5/Relu¥
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_6/MatMul/ReadVariableOp
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/MatMul¤
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp¡
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_6/BiasAdds
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityü
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp+^lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp*^lstm_5/lstm_cell_10/MatMul/ReadVariableOp,^lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_5/while+^lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_11/MatMul/ReadVariableOp,^lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2X
*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp*lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp2V
)lstm_5/lstm_cell_10/MatMul/ReadVariableOp)lstm_5/lstm_cell_10/MatMul/ReadVariableOp2Z
+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp+lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_5/whilelstm_5/while2X
*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_11/MatMul/ReadVariableOp)lstm_6/lstm_cell_11/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_443528

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
¶
'__inference_lstm_6_layer_call_fn_443578

inputs
unknown:

	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_4417482
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²?
Ô
while_body_441664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò

(__inference_dense_6_layer_call_fn_444211

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4415342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
®?
Ò
while_body_441854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_10_matmul_readvariableop_resource_0:	I
5while_lstm_cell_10_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_10_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_10_matmul_readvariableop_resource:	G
3while_lstm_cell_10_matmul_1_readvariableop_resource:
A
2while_lstm_cell_10_biasadd_readvariableop_resource:	¢)while/lstm_cell_10/BiasAdd/ReadVariableOp¢(while/lstm_cell_10/MatMul/ReadVariableOp¢*while/lstm_cell_10/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp×
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMulÐ
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOpÀ
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/MatMul_1¸
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/addÈ
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOpÅ
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/BiasAdd
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_10/split
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_1¡
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul
while/lstm_cell_10/ReluRelu!while/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Reluµ
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0%while/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_1ª
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/add_1
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Sigmoid_2
while/lstm_cell_10/Relu_1Reluwhile/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/Relu_1¹
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0'while/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_10/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
²?
Ô
while_body_444098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_440759

inputs

states
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¾\

B__inference_lstm_6_layer_call_and_return_conditional_losses_443880
inputs_0?
+lstm_cell_11_matmul_readvariableop_resource:
A
-lstm_cell_11_matmul_1_readvariableop_resource:
;
,lstm_cell_11_biasadd_readvariableop_resource:	
identity¢#lstm_cell_11/BiasAdd/ReadVariableOp¢"lstm_cell_11/MatMul/ReadVariableOp¢$lstm_cell_11/MatMul_1/ReadVariableOp¢whileF
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
strided_slice/stack_2â
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
B :2
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
B :è2
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
B :2
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
:ÿÿÿÿÿÿÿÿÿ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2
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
B :è2
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
B :2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
strided_slice_1/stack_2î
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
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2¶
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp­
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul¼
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp©
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/MatMul_1 
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add´
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp­
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/BiasAdd~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim÷
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
lstm_cell_11/split
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_1
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul~
lstm_cell_11/ReluRelulstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_1
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/add_1
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Sigmoid_2}
lstm_cell_11/Relu_1Relulstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/Relu_1¡
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0!lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_11/mul_2
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
TensorArrayV2_1/element_shape¸
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
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_443796*
condR
while_cond_443795*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2

IdentityÈ
NoOpNoOp$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
³
Ó
%model_4_lstm_lstm_6_while_cond_439810D
@model_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_loop_counterJ
Fmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_maximum_iterations)
%model_4_lstm_lstm_6_while_placeholder+
'model_4_lstm_lstm_6_while_placeholder_1+
'model_4_lstm_lstm_6_while_placeholder_2+
'model_4_lstm_lstm_6_while_placeholder_3F
Bmodel_4_lstm_lstm_6_while_less_model_4_lstm_lstm_6_strided_slice_1\
Xmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_cond_439810___redundant_placeholder0\
Xmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_cond_439810___redundant_placeholder1\
Xmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_cond_439810___redundant_placeholder2\
Xmodel_4_lstm_lstm_6_while_model_4_lstm_lstm_6_while_cond_439810___redundant_placeholder3&
"model_4_lstm_lstm_6_while_identity
Ô
model_4_lstm/lstm_6/while/LessLess%model_4_lstm_lstm_6_while_placeholderBmodel_4_lstm_lstm_6_while_less_model_4_lstm_lstm_6_strided_slice_1*
T0*
_output_shapes
: 2 
model_4_lstm/lstm_6/while/Less
"model_4_lstm/lstm_6/while/IdentityIdentity"model_4_lstm/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: 2$
"model_4_lstm/lstm_6/while/Identity"Q
"model_4_lstm_lstm_6_while_identity+model_4_lstm/lstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
É
ø
-__inference_lstm_cell_11_layer_call_fn_444336

inputs
states_0
states_1
unknown:

	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_4406132
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1


H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444417

inputs
states_0
states_12
matmul_readvariableop_resource:
4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ù
Ã
while_cond_443644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443644___redundant_placeholder04
0while_while_cond_443644___redundant_placeholder14
0while_while_cond_443644___redundant_placeholder24
0while_while_cond_443644___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_439983

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1i

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_2
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
¥

ô
C__inference_dense_6_layer_call_and_return_conditional_losses_441534

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ù
Ã
while_cond_443946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_443946___redundant_placeholder04
0while_while_cond_443946___redundant_placeholder14
0while_while_cond_443946___redundant_placeholder24
0while_while_cond_443946___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²?
Ô
while_body_441415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Â
·
'__inference_lstm_5_layer_call_fn_442886
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4402762
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ø
`
D__inference_lambda_6_layer_call_and_return_conditional_losses_441347

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
:ÿÿÿÿÿÿÿÿÿ2

ExpandDimsl
IdentityIdentityExpandDims:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²?
Ô
while_body_443796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
3while_lstm_cell_11_matmul_readvariableop_resource_0:
I
5while_lstm_cell_11_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_11_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
1while_lstm_cell_11_matmul_readvariableop_resource:
G
3while_lstm_cell_11_matmul_1_readvariableop_resource:
A
2while_lstm_cell_11_biasadd_readvariableop_resource:	¢)while/lstm_cell_11/BiasAdd/ReadVariableOp¢(while/lstm_cell_11/MatMul/ReadVariableOp¢*while/lstm_cell_11/MatMul_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÊ
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp×
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMulÐ
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOpÀ
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/MatMul_1¸
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/addÈ
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOpÅ
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/BiasAdd
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2
while/lstm_cell_11/split
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_1¡
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul
while/lstm_cell_11/ReluRelu!while/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Reluµ
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0%while/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_1ª
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/add_1
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Sigmoid_2
while/lstm_cell_11/Relu_1Reluwhile/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/Relu_1¹
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0'while/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_11/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
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
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/Identity_5Þ

while/NoOpNoOp*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ª
µ
'__inference_lstm_5_layer_call_fn_442897

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_4413332
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ã
while_cond_439996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_439996___redundant_placeholder04
0while_while_cond_439996___redundant_placeholder14
0while_while_cond_439996___redundant_placeholder24
0while_while_cond_439996___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
È

!__inference__wrapped_model_439908
input_4R
?model_4_lstm_lstm_5_lstm_cell_10_matmul_readvariableop_resource:	U
Amodel_4_lstm_lstm_5_lstm_cell_10_matmul_1_readvariableop_resource:
O
@model_4_lstm_lstm_5_lstm_cell_10_biasadd_readvariableop_resource:	S
?model_4_lstm_lstm_6_lstm_cell_11_matmul_readvariableop_resource:
U
Amodel_4_lstm_lstm_6_lstm_cell_11_matmul_1_readvariableop_resource:
O
@model_4_lstm_lstm_6_lstm_cell_11_biasadd_readvariableop_resource:	F
3model_4_lstm_dense_5_matmul_readvariableop_resource:	@B
4model_4_lstm_dense_5_biasadd_readvariableop_resource:@E
3model_4_lstm_dense_6_matmul_readvariableop_resource:@B
4model_4_lstm_dense_6_biasadd_readvariableop_resource:
identity¢+model_4_lstm/dense_5/BiasAdd/ReadVariableOp¢*model_4_lstm/dense_5/MatMul/ReadVariableOp¢+model_4_lstm/dense_6/BiasAdd/ReadVariableOp¢*model_4_lstm/dense_6/MatMul/ReadVariableOp¢7model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp¢6model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOp¢8model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp¢model_4_lstm/lstm_5/while¢7model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp¢6model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOp¢8model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp¢model_4_lstm/lstm_6/while
$model_4_lstm/lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_4_lstm/lambda_5/ExpandDims/dimÀ
 model_4_lstm/lambda_5/ExpandDims
ExpandDimsinput_4-model_4_lstm/lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_4_lstm/lambda_5/ExpandDims
model_4_lstm/lstm_5/ShapeShape)model_4_lstm/lambda_5/ExpandDims:output:0*
T0*
_output_shapes
:2
model_4_lstm/lstm_5/Shape
'model_4_lstm/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_4_lstm/lstm_5/strided_slice/stack 
)model_4_lstm/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_4_lstm/lstm_5/strided_slice/stack_1 
)model_4_lstm/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_4_lstm/lstm_5/strided_slice/stack_2Ú
!model_4_lstm/lstm_5/strided_sliceStridedSlice"model_4_lstm/lstm_5/Shape:output:00model_4_lstm/lstm_5/strided_slice/stack:output:02model_4_lstm/lstm_5/strided_slice/stack_1:output:02model_4_lstm/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_4_lstm/lstm_5/strided_slice
model_4_lstm/lstm_5/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2!
model_4_lstm/lstm_5/zeros/mul/y¼
model_4_lstm/lstm_5/zeros/mulMul*model_4_lstm/lstm_5/strided_slice:output:0(model_4_lstm/lstm_5/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model_4_lstm/lstm_5/zeros/mul
 model_4_lstm/lstm_5/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 model_4_lstm/lstm_5/zeros/Less/y·
model_4_lstm/lstm_5/zeros/LessLess!model_4_lstm/lstm_5/zeros/mul:z:0)model_4_lstm/lstm_5/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
model_4_lstm/lstm_5/zeros/Less
"model_4_lstm/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2$
"model_4_lstm/lstm_5/zeros/packed/1Ó
 model_4_lstm/lstm_5/zeros/packedPack*model_4_lstm/lstm_5/strided_slice:output:0+model_4_lstm/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 model_4_lstm/lstm_5/zeros/packed
model_4_lstm/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
model_4_lstm/lstm_5/zeros/ConstÆ
model_4_lstm/lstm_5/zerosFill)model_4_lstm/lstm_5/zeros/packed:output:0(model_4_lstm/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_5/zeros
!model_4_lstm/lstm_5/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2#
!model_4_lstm/lstm_5/zeros_1/mul/yÂ
model_4_lstm/lstm_5/zeros_1/mulMul*model_4_lstm/lstm_5/strided_slice:output:0*model_4_lstm/lstm_5/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
model_4_lstm/lstm_5/zeros_1/mul
"model_4_lstm/lstm_5/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"model_4_lstm/lstm_5/zeros_1/Less/y¿
 model_4_lstm/lstm_5/zeros_1/LessLess#model_4_lstm/lstm_5/zeros_1/mul:z:0+model_4_lstm/lstm_5/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 model_4_lstm/lstm_5/zeros_1/Less
$model_4_lstm/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2&
$model_4_lstm/lstm_5/zeros_1/packed/1Ù
"model_4_lstm/lstm_5/zeros_1/packedPack*model_4_lstm/lstm_5/strided_slice:output:0-model_4_lstm/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"model_4_lstm/lstm_5/zeros_1/packed
!model_4_lstm/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!model_4_lstm/lstm_5/zeros_1/ConstÎ
model_4_lstm/lstm_5/zeros_1Fill+model_4_lstm/lstm_5/zeros_1/packed:output:0*model_4_lstm/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_5/zeros_1
"model_4_lstm/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"model_4_lstm/lstm_5/transpose/permÙ
model_4_lstm/lstm_5/transpose	Transpose)model_4_lstm/lambda_5/ExpandDims:output:0+model_4_lstm/lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_5/transpose
model_4_lstm/lstm_5/Shape_1Shape!model_4_lstm/lstm_5/transpose:y:0*
T0*
_output_shapes
:2
model_4_lstm/lstm_5/Shape_1 
)model_4_lstm/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_4_lstm/lstm_5/strided_slice_1/stack¤
+model_4_lstm/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_5/strided_slice_1/stack_1¤
+model_4_lstm/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_5/strided_slice_1/stack_2æ
#model_4_lstm/lstm_5/strided_slice_1StridedSlice$model_4_lstm/lstm_5/Shape_1:output:02model_4_lstm/lstm_5/strided_slice_1/stack:output:04model_4_lstm/lstm_5/strided_slice_1/stack_1:output:04model_4_lstm/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_4_lstm/lstm_5/strided_slice_1­
/model_4_lstm/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/model_4_lstm/lstm_5/TensorArrayV2/element_shape
!model_4_lstm/lstm_5/TensorArrayV2TensorListReserve8model_4_lstm/lstm_5/TensorArrayV2/element_shape:output:0,model_4_lstm/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!model_4_lstm/lstm_5/TensorArrayV2ç
Imodel_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2K
Imodel_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;model_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!model_4_lstm/lstm_5/transpose:y:0Rmodel_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;model_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensor 
)model_4_lstm/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_4_lstm/lstm_5/strided_slice_2/stack¤
+model_4_lstm/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_5/strided_slice_2/stack_1¤
+model_4_lstm/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_5/strided_slice_2/stack_2ô
#model_4_lstm/lstm_5/strided_slice_2StridedSlice!model_4_lstm/lstm_5/transpose:y:02model_4_lstm/lstm_5/strided_slice_2/stack:output:04model_4_lstm/lstm_5/strided_slice_2/stack_1:output:04model_4_lstm/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2%
#model_4_lstm/lstm_5/strided_slice_2ñ
6model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp?model_4_lstm_lstm_5_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	*
dtype028
6model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOpý
'model_4_lstm/lstm_5/lstm_cell_10/MatMulMatMul,model_4_lstm/lstm_5/strided_slice_2:output:0>model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'model_4_lstm/lstm_5/lstm_cell_10/MatMulø
8model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpAmodel_4_lstm_lstm_5_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOpù
)model_4_lstm/lstm_5/lstm_cell_10/MatMul_1MatMul"model_4_lstm/lstm_5/zeros:output:0@model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model_4_lstm/lstm_5/lstm_cell_10/MatMul_1ð
$model_4_lstm/lstm_5/lstm_cell_10/addAddV21model_4_lstm/lstm_5/lstm_cell_10/MatMul:product:03model_4_lstm/lstm_5/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_5/lstm_cell_10/addð
7model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp@model_4_lstm_lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOpý
(model_4_lstm/lstm_5/lstm_cell_10/BiasAddBiasAdd(model_4_lstm/lstm_5/lstm_cell_10/add:z:0?model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(model_4_lstm/lstm_5/lstm_cell_10/BiasAdd¦
0model_4_lstm/lstm_5/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_4_lstm/lstm_5/lstm_cell_10/split/split_dimÇ
&model_4_lstm/lstm_5/lstm_cell_10/splitSplit9model_4_lstm/lstm_5/lstm_cell_10/split/split_dim:output:01model_4_lstm/lstm_5/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2(
&model_4_lstm/lstm_5/lstm_cell_10/splitÃ
(model_4_lstm/lstm_5/lstm_cell_10/SigmoidSigmoid/model_4_lstm/lstm_5/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(model_4_lstm/lstm_5/lstm_cell_10/SigmoidÇ
*model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_1Sigmoid/model_4_lstm/lstm_5/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_1Ü
$model_4_lstm/lstm_5/lstm_cell_10/mulMul.model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_1:y:0$model_4_lstm/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_5/lstm_cell_10/mulº
%model_4_lstm/lstm_5/lstm_cell_10/ReluRelu/model_4_lstm/lstm_5/lstm_cell_10/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%model_4_lstm/lstm_5/lstm_cell_10/Reluí
&model_4_lstm/lstm_5/lstm_cell_10/mul_1Mul,model_4_lstm/lstm_5/lstm_cell_10/Sigmoid:y:03model_4_lstm/lstm_5/lstm_cell_10/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_5/lstm_cell_10/mul_1â
&model_4_lstm/lstm_5/lstm_cell_10/add_1AddV2(model_4_lstm/lstm_5/lstm_cell_10/mul:z:0*model_4_lstm/lstm_5/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_5/lstm_cell_10/add_1Ç
*model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_2Sigmoid/model_4_lstm/lstm_5/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_2¹
'model_4_lstm/lstm_5/lstm_cell_10/Relu_1Relu*model_4_lstm/lstm_5/lstm_cell_10/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'model_4_lstm/lstm_5/lstm_cell_10/Relu_1ñ
&model_4_lstm/lstm_5/lstm_cell_10/mul_2Mul.model_4_lstm/lstm_5/lstm_cell_10/Sigmoid_2:y:05model_4_lstm/lstm_5/lstm_cell_10/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_5/lstm_cell_10/mul_2·
1model_4_lstm/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   23
1model_4_lstm/lstm_5/TensorArrayV2_1/element_shape
#model_4_lstm/lstm_5/TensorArrayV2_1TensorListReserve:model_4_lstm/lstm_5/TensorArrayV2_1/element_shape:output:0,model_4_lstm/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#model_4_lstm/lstm_5/TensorArrayV2_1v
model_4_lstm/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_4_lstm/lstm_5/time§
,model_4_lstm/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_5/while/maximum_iterations
&model_4_lstm/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model_4_lstm/lstm_5/while/loop_counter»
model_4_lstm/lstm_5/whileWhile/model_4_lstm/lstm_5/while/loop_counter:output:05model_4_lstm/lstm_5/while/maximum_iterations:output:0!model_4_lstm/lstm_5/time:output:0,model_4_lstm/lstm_5/TensorArrayV2_1:handle:0"model_4_lstm/lstm_5/zeros:output:0$model_4_lstm/lstm_5/zeros_1:output:0,model_4_lstm/lstm_5/strided_slice_1:output:0Kmodel_4_lstm/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0?model_4_lstm_lstm_5_lstm_cell_10_matmul_readvariableop_resourceAmodel_4_lstm_lstm_5_lstm_cell_10_matmul_1_readvariableop_resource@model_4_lstm_lstm_5_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%model_4_lstm_lstm_5_while_body_439662*1
cond)R'
%model_4_lstm_lstm_5_while_cond_439661*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
model_4_lstm/lstm_5/whileÝ
Dmodel_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dmodel_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape¹
6model_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"model_4_lstm/lstm_5/while:output:3Mmodel_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype028
6model_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack©
)model_4_lstm/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)model_4_lstm/lstm_5/strided_slice_3/stack¤
+model_4_lstm/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+model_4_lstm/lstm_5/strided_slice_3/stack_1¤
+model_4_lstm/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_5/strided_slice_3/stack_2
#model_4_lstm/lstm_5/strided_slice_3StridedSlice?model_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02model_4_lstm/lstm_5/strided_slice_3/stack:output:04model_4_lstm/lstm_5/strided_slice_3/stack_1:output:04model_4_lstm/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2%
#model_4_lstm/lstm_5/strided_slice_3¡
$model_4_lstm/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$model_4_lstm/lstm_5/transpose_1/permö
model_4_lstm/lstm_5/transpose_1	Transpose?model_4_lstm/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-model_4_lstm/lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model_4_lstm/lstm_5/transpose_1
model_4_lstm/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_4_lstm/lstm_5/runtime
$model_4_lstm/lambda_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_4_lstm/lambda_6/ExpandDims/dimæ
 model_4_lstm/lambda_6/ExpandDims
ExpandDims,model_4_lstm/lstm_5/strided_slice_3:output:0-model_4_lstm/lambda_6/ExpandDims/dim:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_4_lstm/lambda_6/ExpandDims
model_4_lstm/lstm_6/ShapeShape)model_4_lstm/lambda_6/ExpandDims:output:0*
T0*
_output_shapes
:2
model_4_lstm/lstm_6/Shape
'model_4_lstm/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_4_lstm/lstm_6/strided_slice/stack 
)model_4_lstm/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_4_lstm/lstm_6/strided_slice/stack_1 
)model_4_lstm/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_4_lstm/lstm_6/strided_slice/stack_2Ú
!model_4_lstm/lstm_6/strided_sliceStridedSlice"model_4_lstm/lstm_6/Shape:output:00model_4_lstm/lstm_6/strided_slice/stack:output:02model_4_lstm/lstm_6/strided_slice/stack_1:output:02model_4_lstm/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_4_lstm/lstm_6/strided_slice
model_4_lstm/lstm_6/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2!
model_4_lstm/lstm_6/zeros/mul/y¼
model_4_lstm/lstm_6/zeros/mulMul*model_4_lstm/lstm_6/strided_slice:output:0(model_4_lstm/lstm_6/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
model_4_lstm/lstm_6/zeros/mul
 model_4_lstm/lstm_6/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 model_4_lstm/lstm_6/zeros/Less/y·
model_4_lstm/lstm_6/zeros/LessLess!model_4_lstm/lstm_6/zeros/mul:z:0)model_4_lstm/lstm_6/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
model_4_lstm/lstm_6/zeros/Less
"model_4_lstm/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2$
"model_4_lstm/lstm_6/zeros/packed/1Ó
 model_4_lstm/lstm_6/zeros/packedPack*model_4_lstm/lstm_6/strided_slice:output:0+model_4_lstm/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 model_4_lstm/lstm_6/zeros/packed
model_4_lstm/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
model_4_lstm/lstm_6/zeros/ConstÆ
model_4_lstm/lstm_6/zerosFill)model_4_lstm/lstm_6/zeros/packed:output:0(model_4_lstm/lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_6/zeros
!model_4_lstm/lstm_6/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :2#
!model_4_lstm/lstm_6/zeros_1/mul/yÂ
model_4_lstm/lstm_6/zeros_1/mulMul*model_4_lstm/lstm_6/strided_slice:output:0*model_4_lstm/lstm_6/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
model_4_lstm/lstm_6/zeros_1/mul
"model_4_lstm/lstm_6/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"model_4_lstm/lstm_6/zeros_1/Less/y¿
 model_4_lstm/lstm_6/zeros_1/LessLess#model_4_lstm/lstm_6/zeros_1/mul:z:0+model_4_lstm/lstm_6/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 model_4_lstm/lstm_6/zeros_1/Less
$model_4_lstm/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :2&
$model_4_lstm/lstm_6/zeros_1/packed/1Ù
"model_4_lstm/lstm_6/zeros_1/packedPack*model_4_lstm/lstm_6/strided_slice:output:0-model_4_lstm/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"model_4_lstm/lstm_6/zeros_1/packed
!model_4_lstm/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!model_4_lstm/lstm_6/zeros_1/ConstÎ
model_4_lstm/lstm_6/zeros_1Fill+model_4_lstm/lstm_6/zeros_1/packed:output:0*model_4_lstm/lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_6/zeros_1
"model_4_lstm/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"model_4_lstm/lstm_6/transpose/permÚ
model_4_lstm/lstm_6/transpose	Transpose)model_4_lstm/lambda_6/ExpandDims:output:0+model_4_lstm/lstm_6/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/lstm_6/transpose
model_4_lstm/lstm_6/Shape_1Shape!model_4_lstm/lstm_6/transpose:y:0*
T0*
_output_shapes
:2
model_4_lstm/lstm_6/Shape_1 
)model_4_lstm/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_4_lstm/lstm_6/strided_slice_1/stack¤
+model_4_lstm/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_6/strided_slice_1/stack_1¤
+model_4_lstm/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_6/strided_slice_1/stack_2æ
#model_4_lstm/lstm_6/strided_slice_1StridedSlice$model_4_lstm/lstm_6/Shape_1:output:02model_4_lstm/lstm_6/strided_slice_1/stack:output:04model_4_lstm/lstm_6/strided_slice_1/stack_1:output:04model_4_lstm/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#model_4_lstm/lstm_6/strided_slice_1­
/model_4_lstm/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/model_4_lstm/lstm_6/TensorArrayV2/element_shape
!model_4_lstm/lstm_6/TensorArrayV2TensorListReserve8model_4_lstm/lstm_6/TensorArrayV2/element_shape:output:0,model_4_lstm/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!model_4_lstm/lstm_6/TensorArrayV2ç
Imodel_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2K
Imodel_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;model_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!model_4_lstm/lstm_6/transpose:y:0Rmodel_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;model_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensor 
)model_4_lstm/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)model_4_lstm/lstm_6/strided_slice_2/stack¤
+model_4_lstm/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_6/strided_slice_2/stack_1¤
+model_4_lstm/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_6/strided_slice_2/stack_2õ
#model_4_lstm/lstm_6/strided_slice_2StridedSlice!model_4_lstm/lstm_6/transpose:y:02model_4_lstm/lstm_6/strided_slice_2/stack:output:04model_4_lstm/lstm_6/strided_slice_2/stack_1:output:04model_4_lstm/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2%
#model_4_lstm/lstm_6/strided_slice_2ò
6model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp?model_4_lstm_lstm_6_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype028
6model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOpý
'model_4_lstm/lstm_6/lstm_cell_11/MatMulMatMul,model_4_lstm/lstm_6/strided_slice_2:output:0>model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'model_4_lstm/lstm_6/lstm_cell_11/MatMulø
8model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpAmodel_4_lstm_lstm_6_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype02:
8model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOpù
)model_4_lstm/lstm_6/lstm_cell_11/MatMul_1MatMul"model_4_lstm/lstm_6/zeros:output:0@model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)model_4_lstm/lstm_6/lstm_cell_11/MatMul_1ð
$model_4_lstm/lstm_6/lstm_cell_11/addAddV21model_4_lstm/lstm_6/lstm_cell_11/MatMul:product:03model_4_lstm/lstm_6/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_6/lstm_cell_11/addð
7model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp@model_4_lstm_lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype029
7model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOpý
(model_4_lstm/lstm_6/lstm_cell_11/BiasAddBiasAdd(model_4_lstm/lstm_6/lstm_cell_11/add:z:0?model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(model_4_lstm/lstm_6/lstm_cell_11/BiasAdd¦
0model_4_lstm/lstm_6/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :22
0model_4_lstm/lstm_6/lstm_cell_11/split/split_dimÇ
&model_4_lstm/lstm_6/lstm_cell_11/splitSplit9model_4_lstm/lstm_6/lstm_cell_11/split/split_dim:output:01model_4_lstm/lstm_6/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split2(
&model_4_lstm/lstm_6/lstm_cell_11/splitÃ
(model_4_lstm/lstm_6/lstm_cell_11/SigmoidSigmoid/model_4_lstm/lstm_6/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(model_4_lstm/lstm_6/lstm_cell_11/SigmoidÇ
*model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_1Sigmoid/model_4_lstm/lstm_6/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_1Ü
$model_4_lstm/lstm_6/lstm_cell_11/mulMul.model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_1:y:0$model_4_lstm/lstm_6/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$model_4_lstm/lstm_6/lstm_cell_11/mulº
%model_4_lstm/lstm_6/lstm_cell_11/ReluRelu/model_4_lstm/lstm_6/lstm_cell_11/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%model_4_lstm/lstm_6/lstm_cell_11/Reluí
&model_4_lstm/lstm_6/lstm_cell_11/mul_1Mul,model_4_lstm/lstm_6/lstm_cell_11/Sigmoid:y:03model_4_lstm/lstm_6/lstm_cell_11/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_6/lstm_cell_11/mul_1â
&model_4_lstm/lstm_6/lstm_cell_11/add_1AddV2(model_4_lstm/lstm_6/lstm_cell_11/mul:z:0*model_4_lstm/lstm_6/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_6/lstm_cell_11/add_1Ç
*model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_2Sigmoid/model_4_lstm/lstm_6/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_2¹
'model_4_lstm/lstm_6/lstm_cell_11/Relu_1Relu*model_4_lstm/lstm_6/lstm_cell_11/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'model_4_lstm/lstm_6/lstm_cell_11/Relu_1ñ
&model_4_lstm/lstm_6/lstm_cell_11/mul_2Mul.model_4_lstm/lstm_6/lstm_cell_11/Sigmoid_2:y:05model_4_lstm/lstm_6/lstm_cell_11/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&model_4_lstm/lstm_6/lstm_cell_11/mul_2·
1model_4_lstm/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   23
1model_4_lstm/lstm_6/TensorArrayV2_1/element_shape
#model_4_lstm/lstm_6/TensorArrayV2_1TensorListReserve:model_4_lstm/lstm_6/TensorArrayV2_1/element_shape:output:0,model_4_lstm/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#model_4_lstm/lstm_6/TensorArrayV2_1v
model_4_lstm/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_4_lstm/lstm_6/time§
,model_4_lstm/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,model_4_lstm/lstm_6/while/maximum_iterations
&model_4_lstm/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model_4_lstm/lstm_6/while/loop_counter»
model_4_lstm/lstm_6/whileWhile/model_4_lstm/lstm_6/while/loop_counter:output:05model_4_lstm/lstm_6/while/maximum_iterations:output:0!model_4_lstm/lstm_6/time:output:0,model_4_lstm/lstm_6/TensorArrayV2_1:handle:0"model_4_lstm/lstm_6/zeros:output:0$model_4_lstm/lstm_6/zeros_1:output:0,model_4_lstm/lstm_6/strided_slice_1:output:0Kmodel_4_lstm/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0?model_4_lstm_lstm_6_lstm_cell_11_matmul_readvariableop_resourceAmodel_4_lstm_lstm_6_lstm_cell_11_matmul_1_readvariableop_resource@model_4_lstm_lstm_6_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%model_4_lstm_lstm_6_while_body_439811*1
cond)R'
%model_4_lstm_lstm_6_while_cond_439810*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 2
model_4_lstm/lstm_6/whileÝ
Dmodel_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2F
Dmodel_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape¹
6model_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"model_4_lstm/lstm_6/while:output:3Mmodel_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype028
6model_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack©
)model_4_lstm/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)model_4_lstm/lstm_6/strided_slice_3/stack¤
+model_4_lstm/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+model_4_lstm/lstm_6/strided_slice_3/stack_1¤
+model_4_lstm/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+model_4_lstm/lstm_6/strided_slice_3/stack_2
#model_4_lstm/lstm_6/strided_slice_3StridedSlice?model_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02model_4_lstm/lstm_6/strided_slice_3/stack:output:04model_4_lstm/lstm_6/strided_slice_3/stack_1:output:04model_4_lstm/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2%
#model_4_lstm/lstm_6/strided_slice_3¡
$model_4_lstm/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$model_4_lstm/lstm_6/transpose_1/permö
model_4_lstm/lstm_6/transpose_1	Transpose?model_4_lstm/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-model_4_lstm/lstm_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
model_4_lstm/lstm_6/transpose_1
model_4_lstm/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_4_lstm/lstm_6/runtimeÍ
*model_4_lstm/dense_5/MatMul/ReadVariableOpReadVariableOp3model_4_lstm_dense_5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02,
*model_4_lstm/dense_5/MatMul/ReadVariableOpØ
model_4_lstm/dense_5/MatMulMatMul,model_4_lstm/lstm_6/strided_slice_3:output:02model_4_lstm/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_4_lstm/dense_5/MatMulË
+model_4_lstm/dense_5/BiasAdd/ReadVariableOpReadVariableOp4model_4_lstm_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+model_4_lstm/dense_5/BiasAdd/ReadVariableOpÕ
model_4_lstm/dense_5/BiasAddBiasAdd%model_4_lstm/dense_5/MatMul:product:03model_4_lstm/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_4_lstm/dense_5/BiasAdd
model_4_lstm/dense_5/ReluRelu%model_4_lstm/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
model_4_lstm/dense_5/ReluÌ
*model_4_lstm/dense_6/MatMul/ReadVariableOpReadVariableOp3model_4_lstm_dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02,
*model_4_lstm/dense_6/MatMul/ReadVariableOpÓ
model_4_lstm/dense_6/MatMulMatMul'model_4_lstm/dense_5/Relu:activations:02model_4_lstm/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/dense_6/MatMulË
+model_4_lstm/dense_6/BiasAdd/ReadVariableOpReadVariableOp4model_4_lstm_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_4_lstm/dense_6/BiasAdd/ReadVariableOpÕ
model_4_lstm/dense_6/BiasAddBiasAdd%model_4_lstm/dense_6/MatMul:product:03model_4_lstm/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_4_lstm/dense_6/BiasAdd
IdentityIdentity%model_4_lstm/dense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp,^model_4_lstm/dense_5/BiasAdd/ReadVariableOp+^model_4_lstm/dense_5/MatMul/ReadVariableOp,^model_4_lstm/dense_6/BiasAdd/ReadVariableOp+^model_4_lstm/dense_6/MatMul/ReadVariableOp8^model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp7^model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOp9^model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp^model_4_lstm/lstm_5/while8^model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp7^model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOp9^model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp^model_4_lstm/lstm_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : 2Z
+model_4_lstm/dense_5/BiasAdd/ReadVariableOp+model_4_lstm/dense_5/BiasAdd/ReadVariableOp2X
*model_4_lstm/dense_5/MatMul/ReadVariableOp*model_4_lstm/dense_5/MatMul/ReadVariableOp2Z
+model_4_lstm/dense_6/BiasAdd/ReadVariableOp+model_4_lstm/dense_6/BiasAdd/ReadVariableOp2X
*model_4_lstm/dense_6/MatMul/ReadVariableOp*model_4_lstm/dense_6/MatMul/ReadVariableOp2r
7model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp7model_4_lstm/lstm_5/lstm_cell_10/BiasAdd/ReadVariableOp2p
6model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOp6model_4_lstm/lstm_5/lstm_cell_10/MatMul/ReadVariableOp2t
8model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp8model_4_lstm/lstm_5/lstm_cell_10/MatMul_1/ReadVariableOp26
model_4_lstm/lstm_5/whilemodel_4_lstm/lstm_5/while2r
7model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp7model_4_lstm/lstm_6/lstm_cell_11/BiasAdd/ReadVariableOp2p
6model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOp6model_4_lstm/lstm_6/lstm_cell_11/MatMul/ReadVariableOp2t
8model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp8model_4_lstm/lstm_6/lstm_cell_11/MatMul_1/ReadVariableOp26
model_4_lstm/lstm_6/whilemodel_4_lstm/lstm_6/while:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_4
Ù
Ã
while_cond_441248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_441248___redundant_placeholder04
0while_while_cond_441248___redundant_placeholder14
0while_while_cond_441248___redundant_placeholder24
0while_while_cond_441248___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ë
E
)__inference_lambda_6_layer_call_fn_443522

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_lambda_6_layer_call_and_return_conditional_losses_4417712
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â£
Î
"__inference__traced_restore_444672
file_prefix2
assignvariableop_dense_5_kernel:	@-
assignvariableop_1_dense_5_bias:@3
!assignvariableop_2_dense_6_kernel:@-
assignvariableop_3_dense_6_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: @
-assignvariableop_9_lstm_5_lstm_cell_10_kernel:	L
8assignvariableop_10_lstm_5_lstm_cell_10_recurrent_kernel:
;
,assignvariableop_11_lstm_5_lstm_cell_10_bias:	B
.assignvariableop_12_lstm_6_lstm_cell_11_kernel:
L
8assignvariableop_13_lstm_6_lstm_cell_11_recurrent_kernel:
;
,assignvariableop_14_lstm_6_lstm_cell_11_bias:	#
assignvariableop_15_total: #
assignvariableop_16_count: <
)assignvariableop_17_adam_dense_5_kernel_m:	@5
'assignvariableop_18_adam_dense_5_bias_m:@;
)assignvariableop_19_adam_dense_6_kernel_m:@5
'assignvariableop_20_adam_dense_6_bias_m:H
5assignvariableop_21_adam_lstm_5_lstm_cell_10_kernel_m:	S
?assignvariableop_22_adam_lstm_5_lstm_cell_10_recurrent_kernel_m:
B
3assignvariableop_23_adam_lstm_5_lstm_cell_10_bias_m:	I
5assignvariableop_24_adam_lstm_6_lstm_cell_11_kernel_m:
S
?assignvariableop_25_adam_lstm_6_lstm_cell_11_recurrent_kernel_m:
B
3assignvariableop_26_adam_lstm_6_lstm_cell_11_bias_m:	<
)assignvariableop_27_adam_dense_5_kernel_v:	@5
'assignvariableop_28_adam_dense_5_bias_v:@;
)assignvariableop_29_adam_dense_6_kernel_v:@5
'assignvariableop_30_adam_dense_6_bias_v:H
5assignvariableop_31_adam_lstm_5_lstm_cell_10_kernel_v:	S
?assignvariableop_32_adam_lstm_5_lstm_cell_10_recurrent_kernel_v:
B
3assignvariableop_33_adam_lstm_5_lstm_cell_10_bias_v:	I
5assignvariableop_34_adam_lstm_6_lstm_cell_11_kernel_v:
S
?assignvariableop_35_adam_lstm_6_lstm_cell_11_recurrent_kernel_v:
B
3assignvariableop_36_adam_lstm_6_lstm_cell_11_bias_v:	
identity_38¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9À
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*Ì
valueÂB¿&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÚ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesì
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*®
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9²
AssignVariableOp_9AssignVariableOp-assignvariableop_9_lstm_5_lstm_cell_10_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10À
AssignVariableOp_10AssignVariableOp8assignvariableop_10_lstm_5_lstm_cell_10_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11´
AssignVariableOp_11AssignVariableOp,assignvariableop_11_lstm_5_lstm_cell_10_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¶
AssignVariableOp_12AssignVariableOp.assignvariableop_12_lstm_6_lstm_cell_11_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13À
AssignVariableOp_13AssignVariableOp8assignvariableop_13_lstm_6_lstm_cell_11_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14´
AssignVariableOp_14AssignVariableOp,assignvariableop_14_lstm_6_lstm_cell_11_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_5_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¯
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_5_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19±
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¯
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_6_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21½
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adam_lstm_5_lstm_cell_10_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ç
AssignVariableOp_22AssignVariableOp?assignvariableop_22_adam_lstm_5_lstm_cell_10_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23»
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_lstm_5_lstm_cell_10_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24½
AssignVariableOp_24AssignVariableOp5assignvariableop_24_adam_lstm_6_lstm_cell_11_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Ç
AssignVariableOp_25AssignVariableOp?assignvariableop_25_adam_lstm_6_lstm_cell_11_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26»
AssignVariableOp_26AssignVariableOp3assignvariableop_26_adam_lstm_6_lstm_cell_11_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27±
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_5_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¯
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_5_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29±
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_6_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¯
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_6_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31½
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_lstm_5_lstm_cell_10_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ç
AssignVariableOp_32AssignVariableOp?assignvariableop_32_adam_lstm_5_lstm_cell_10_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33»
AssignVariableOp_33AssignVariableOp3assignvariableop_33_adam_lstm_5_lstm_cell_10_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34½
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_lstm_6_lstm_cell_11_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Ç
AssignVariableOp_35AssignVariableOp?assignvariableop_35_adam_lstm_6_lstm_cell_11_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36»
AssignVariableOp_36AssignVariableOp3assignvariableop_36_adam_lstm_6_lstm_cell_11_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38ô
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
_user_specified_namefile_prefix"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ª
serving_default
;
input_40
serving_default_input_4:0ÿÿÿÿÿÿÿÿÿ;
dense_60
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Å
©
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
_default_save_signature
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
§
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
§
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Å
cell

state_spec
trainable_variables
	variables
 regularization_losses
!	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
½

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

.iter

/beta_1

0beta_2
	1decay
2learning_rate"mw#mx(my)mz3m{4m|5m}6m~7m8m"v#v(v)v3v4v5v6v7v8v"
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
Î
9metrics
	trainable_variables
:non_trainable_variables

	variables
regularization_losses
;layer_metrics
<layer_regularization_losses

=layers
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
>metrics
trainable_variables
?non_trainable_variables
	variables
regularization_losses
@layer_metrics
Alayer_regularization_losses

Blayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ã
C
state_size

3kernel
4recurrent_kernel
5bias
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
__call__
+&call_and_return_all_conditional_losses"
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
¼
Hmetrics
trainable_variables
Inon_trainable_variables
	variables

Jstates
regularization_losses
Klayer_metrics
Llayer_regularization_losses

Mlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Nmetrics
trainable_variables
Onon_trainable_variables
	variables
regularization_losses
Player_metrics
Qlayer_regularization_losses

Rlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ã
S
state_size

6kernel
7recurrent_kernel
8bias
Ttrainable_variables
U	variables
Vregularization_losses
W	keras_api
__call__
+&call_and_return_all_conditional_losses"
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
¼
Xmetrics
trainable_variables
Ynon_trainable_variables
	variables

Zstates
 regularization_losses
[layer_metrics
\layer_regularization_losses

]layers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_5/kernel
:@2dense_5/bias
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
°
^metrics
$trainable_variables
_non_trainable_variables
%	variables
&regularization_losses
`layer_metrics
alayer_regularization_losses

blayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_6/kernel
:2dense_6/bias
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
°
cmetrics
*trainable_variables
dnon_trainable_variables
+	variables
,regularization_losses
elayer_metrics
flayer_regularization_losses

glayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+	2lstm_5/lstm_cell_10/kernel
8:6
2$lstm_5/lstm_cell_10/recurrent_kernel
':%2lstm_5/lstm_cell_10/bias
.:,
2lstm_6/lstm_cell_11/kernel
8:6
2$lstm_6/lstm_cell_11/recurrent_kernel
':%2lstm_6/lstm_cell_11/bias
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
°
imetrics
Dtrainable_variables
jnon_trainable_variables
E	variables
Fregularization_losses
klayer_metrics
llayer_regularization_losses

mlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
°
nmetrics
Ttrainable_variables
onon_trainable_variables
U	variables
Vregularization_losses
player_metrics
qlayer_regularization_losses

rlayers
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
&:$	@2Adam/dense_5/kernel/m
:@2Adam/dense_5/bias/m
%:#@2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
2:0	2!Adam/lstm_5/lstm_cell_10/kernel/m
=:;
2+Adam/lstm_5/lstm_cell_10/recurrent_kernel/m
,:*2Adam/lstm_5/lstm_cell_10/bias/m
3:1
2!Adam/lstm_6/lstm_cell_11/kernel/m
=:;
2+Adam/lstm_6/lstm_cell_11/recurrent_kernel/m
,:*2Adam/lstm_6/lstm_cell_11/bias/m
&:$	@2Adam/dense_5/kernel/v
:@2Adam/dense_5/bias/v
%:#@2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
2:0	2!Adam/lstm_5/lstm_cell_10/kernel/v
=:;
2+Adam/lstm_5/lstm_cell_10/recurrent_kernel/v
,:*2Adam/lstm_5/lstm_cell_10/bias/v
3:1
2!Adam/lstm_6/lstm_cell_11/kernel/v
=:;
2+Adam/lstm_6/lstm_cell_11/recurrent_kernel/v
,:*2Adam/lstm_6/lstm_cell_11/bias/v
ÌBÉ
!__inference__wrapped_model_439908input_4"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2ÿ
-__inference_model_4_lstm_layer_call_fn_441564
-__inference_model_4_lstm_layer_call_fn_442187
-__inference_model_4_lstm_layer_call_fn_442212
-__inference_model_4_lstm_layer_call_fn_442069À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442527
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442842
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442099
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442129À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lambda_5_layer_call_fn_442847
)__inference_lambda_5_layer_call_fn_442852À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
D__inference_lambda_5_layer_call_and_return_conditional_losses_442858
D__inference_lambda_5_layer_call_and_return_conditional_losses_442864À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿ2ü
'__inference_lstm_5_layer_call_fn_442875
'__inference_lstm_5_layer_call_fn_442886
'__inference_lstm_5_layer_call_fn_442897
'__inference_lstm_5_layer_call_fn_442908Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_5_layer_call_and_return_conditional_losses_443059
B__inference_lstm_5_layer_call_and_return_conditional_losses_443210
B__inference_lstm_5_layer_call_and_return_conditional_losses_443361
B__inference_lstm_5_layer_call_and_return_conditional_losses_443512Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
2
)__inference_lambda_6_layer_call_fn_443517
)__inference_lambda_6_layer_call_fn_443522À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
D__inference_lambda_6_layer_call_and_return_conditional_losses_443528
D__inference_lambda_6_layer_call_and_return_conditional_losses_443534À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿ2ü
'__inference_lstm_6_layer_call_fn_443545
'__inference_lstm_6_layer_call_fn_443556
'__inference_lstm_6_layer_call_fn_443567
'__inference_lstm_6_layer_call_fn_443578Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_6_layer_call_and_return_conditional_losses_443729
B__inference_lstm_6_layer_call_and_return_conditional_losses_443880
B__inference_lstm_6_layer_call_and_return_conditional_losses_444031
B__inference_lstm_6_layer_call_and_return_conditional_losses_444182Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
(__inference_dense_5_layer_call_fn_444191¢
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
annotationsª *
 
í2ê
C__inference_dense_5_layer_call_and_return_conditional_losses_444202¢
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
annotationsª *
 
Ò2Ï
(__inference_dense_6_layer_call_fn_444211¢
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
annotationsª *
 
í2ê
C__inference_dense_6_layer_call_and_return_conditional_losses_444221¢
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
annotationsª *
 
ËBÈ
$__inference_signature_wrapper_442162input_4"
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
annotationsª *
 
¢2
-__inference_lstm_cell_10_layer_call_fn_444238
-__inference_lstm_cell_10_layer_call_fn_444255¾
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
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444287
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444319¾
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
kwonlydefaultsª 
annotationsª *
 
¢2
-__inference_lstm_cell_11_layer_call_fn_444336
-__inference_lstm_cell_11_layer_call_fn_444353¾
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
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444385
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444417¾
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
kwonlydefaultsª 
annotationsª *
 
!__inference__wrapped_model_439908q
345678"#()0¢-
&¢#
!
input_4ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_6!
dense_6ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_5_layer_call_and_return_conditional_losses_444202]"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
(__inference_dense_5_layer_call_fn_444191P"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@£
C__inference_dense_6_layer_call_and_return_conditional_losses_444221\()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_6_layer_call_fn_444211O()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¬
D__inference_lambda_5_layer_call_and_return_conditional_losses_442858d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¬
D__inference_lambda_5_layer_call_and_return_conditional_losses_442864d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_lambda_5_layer_call_fn_442847W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_lambda_5_layer_call_fn_442852W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª "ÿÿÿÿÿÿÿÿÿ®
D__inference_lambda_6_layer_call_and_return_conditional_losses_443528f8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ®
D__inference_lambda_6_layer_call_and_return_conditional_losses_443534f8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_lambda_6_layer_call_fn_443517Y8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_lambda_6_layer_call_fn_443522Y8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª "ÿÿÿÿÿÿÿÿÿÄ
B__inference_lstm_5_layer_call_and_return_conditional_losses_443059~345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Ä
B__inference_lstm_5_layer_call_and_return_conditional_losses_443210~345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ´
B__inference_lstm_5_layer_call_and_return_conditional_losses_443361n345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ´
B__inference_lstm_5_layer_call_and_return_conditional_losses_443512n345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_lstm_5_layer_call_fn_442875q345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_5_layer_call_fn_442886q345O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_5_layer_call_fn_442897a345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_5_layer_call_fn_442908a345?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÅ
B__inference_lstm_6_layer_call_and_return_conditional_losses_443729678P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Å
B__inference_lstm_6_layer_call_and_return_conditional_losses_443880678P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 µ
B__inference_lstm_6_layer_call_and_return_conditional_losses_444031o678@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 µ
B__inference_lstm_6_layer_call_and_return_conditional_losses_444182o678@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_lstm_6_layer_call_fn_443545r678P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_6_layer_call_fn_443556r678P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_6_layer_call_fn_443567b678@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_6_layer_call_fn_443578b678@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÏ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444287345¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ï
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_444319345¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¤
-__inference_lstm_cell_10_layer_call_fn_444238ò345¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¤
-__inference_lstm_cell_10_layer_call_fn_444255ò345¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÑ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444385678¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Ñ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_444417678¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¦
-__inference_lstm_cell_11_layer_call_fn_444336ô678¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¦
-__inference_lstm_cell_11_layer_call_fn_444353ô678¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¹
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442099m
345678"#()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442129m
345678"#()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442527l
345678"#()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
H__inference_model_4_lstm_layer_call_and_return_conditional_losses_442842l
345678"#()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_model_4_lstm_layer_call_fn_441564`
345678"#()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_4_lstm_layer_call_fn_442069`
345678"#()8¢5
.¢+
!
input_4ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_4_lstm_layer_call_fn_442187_
345678"#()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_model_4_lstm_layer_call_fn_442212_
345678"#()7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¤
$__inference_signature_wrapper_442162|
345678"#();¢8
¢ 
1ª.
,
input_4!
input_4ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_6!
dense_6ÿÿÿÿÿÿÿÿÿ