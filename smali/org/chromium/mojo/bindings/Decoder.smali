.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Decoder$Validator;
    }
.end annotation


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 106
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 2
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "validator"    # Lorg/chromium/mojo/bindings/Decoder$Validator;
    .param p3, "baseOffset"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    .line 111
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    .line 113
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    .line 114
    return-void
.end method

.method private getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 604
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-direct {v0, v1, v2, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-object v0
.end method

.method private readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 7
    .param p1, "elementSize"    # J
    .param p3, "expectedLength"    # I

    .prologue
    .line 628
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 629
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    iget v5, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    int-to-long v5, v5

    mul-long/2addr v5, p1

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 630
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-eq v1, p3, :cond_1

    .line 634
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_1
    return-object v0
.end method

.method private readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 4
    .param p1, "expectedLength"    # I

    .prologue
    .line 612
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 613
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    .line 614
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-eq v1, p1, :cond_1

    .line 618
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_1
    return-object v0
.end method

.method private validateBufferSize(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 642
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Buffer is smaller than expected."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    return-void
.end method


# virtual methods
.method public readBoolean(II)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 175
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v1

    shl-int v2, v0, p2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBooleans(III)[Z
    .locals 10
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    const/4 v8, 0x1

    .line 242
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v7

    invoke-virtual {p0, p1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 243
    .local v2, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v2, :cond_1

    .line 244
    const/4 v5, 0x0

    .line 259
    :cond_0
    return-object v5

    .line 246
    :cond_1
    invoke-direct {v2, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v6

    .line 247
    .local v6, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v7, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 248
    .local v1, "bytes":[B
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v9, v2, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 249
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 250
    iget v7, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v5, v7, [Z

    .line 251
    .local v5, "result":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 252
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_4

    .line 253
    mul-int/lit8 v7, v3, 0x8

    add-int v0, v7, v4

    .line 254
    .local v0, "booleanIndex":I
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 255
    aget-byte v7, v1, v3

    shl-int v9, v8, v4

    and-int/2addr v7, v9

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    aput-boolean v7, v5, v0

    .line 252
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 251
    .end local v0    # "booleanIndex":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public readByte(I)B
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 167
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public readBytes(III)[B
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 266
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 267
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 274
    :goto_0
    return-object v1

    .line 270
    :cond_0
    const-wide/16 v3, 0x1

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 271
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [B

    .line 272
    .local v1, "result":[B
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 379
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 483
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 484
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 485
    const/4 v2, 0x0

    .line 494
    :cond_0
    return-object v2

    .line 487
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 488
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 489
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 490
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 8

    .prologue
    .line 121
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 122
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    .line 123
    .local v2, "size":I
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 124
    .local v0, "numFields":I
    if-gez v2, :cond_0

    .line 125
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    if-gez v0, :cond_1

    .line 129
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative number of fields. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 135
    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-direct {v1, v2, v0}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    .line 136
    .local v1, "res":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    return-object v1
.end method

.method public readDataHeaderForMap()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 152
    .local v0, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-eq v1, v2, :cond_0

    .line 153
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The size is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-eq v1, v2, :cond_1

    .line 157
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The number of fields is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    return-void
.end method

.method public readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 2
    .param p1, "expectedLength"    # I

    .prologue
    .line 144
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    return-object v0
.end method

.method public readDouble(I)D
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 214
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 215
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(III)[D
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 341
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 342
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    .line 345
    :cond_0
    const-wide/16 v3, 0x8

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 346
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [D

    .line 347
    .local v1, "result":[D
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    goto :goto_0
.end method

.method public readFloat(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 198
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 199
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(III)[F
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 311
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 312
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 315
    :cond_0
    const-wide/16 v3, 0x4

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 316
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [F

    .line 317
    .local v1, "result":[F
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public readHandle(IZ)Lorg/chromium/mojo/system/Handle;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 357
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    sget-object v1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    .line 365
    :goto_0
    return-object v1

    .line 364
    :cond_1
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimHandle(I)V

    .line 365
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/Handle;

    goto :goto_0
.end method

.method public readHandles(III)[Lorg/chromium/mojo/system/Handle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 445
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 446
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 447
    const/4 v2, 0x0

    .line 456
    :cond_0
    return-object v2

    .line 449
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 450
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/Handle;

    .line 451
    .local v2, "result":[Lorg/chromium/mojo/system/Handle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 452
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 190
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 191
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(IZ)",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 423
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    if-nez v0, :cond_0

    .line 424
    const/4 v1, 0x0

    .line 426
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    goto :goto_0
.end method

.method public readInterfaceRequests(III)[Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(III)[",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 586
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 587
    const/4 v2, 0x0

    .line 597
    :cond_0
    return-object v2

    .line 589
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 591
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 592
    .local v2, "result":[Lorg/chromium/mojo/bindings/InterfaceRequest;, "[Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 593
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v4

    aput-object v4, v2, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInts(III)[I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 296
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 297
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 304
    :goto_0
    return-object v1

    .line 300
    :cond_0
    const-wide/16 v3, 0x4

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 301
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [I

    .line 302
    .local v1, "result":[I
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method public readLong(I)J
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 206
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 207
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(III)[J
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 326
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 327
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    .line 330
    :cond_0
    const-wide/16 v3, 0x8

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 331
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [J

    .line 332
    .local v1, "result":[J
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    goto :goto_0
.end method

.method public readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public readMessagePipeHandles(III)[Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 522
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 523
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 524
    const/4 v2, 0x0

    .line 533
    :cond_0
    return-object v2

    .line 526
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 527
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 528
    .local v2, "result":[Lorg/chromium/mojo/system/MessagePipeHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 529
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 223
    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int v0, v4, p1

    .line 224
    .local v0, "basePosition":I
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    .line 225
    .local v2, "pointerOffset":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 226
    if-nez p2, :cond_0

    .line 227
    new-instance v4, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v5, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {v4, v5}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_0
    const/4 v4, 0x0

    .line 234
    :goto_0
    return-object v4

    .line 232
    :cond_1
    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 234
    .local v1, "newPosition":I
    invoke-direct {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    goto :goto_0
.end method

.method public readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 386
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readProducerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 502
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 503
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 504
    const/4 v2, 0x0

    .line 513
    :cond_0
    return-object v2

    .line 506
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 507
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 508
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 509
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<*TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<*TP;>;"
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 411
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p3, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v1

    goto :goto_0
.end method

.method public readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;
    .locals 7
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(III",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TS;TP;>;)[TS;"
        }
    .end annotation

    .prologue
    .line 562
    .local p4, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TS;TP;>;"
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v5

    invoke-virtual {p0, p1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 563
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 564
    const/4 v2, 0x0

    .line 577
    :cond_0
    return-object v2

    .line 566
    :cond_1
    const-wide/16 v5, 0x4

    invoke-direct {v0, v5, v6, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 567
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v5, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    invoke-virtual {p4, v5}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildArray(I)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    .line 568
    .local v2, "result":[Lorg/chromium/mojo/bindings/Interface;, "[TS;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 572
    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v4

    .line 575
    .local v4, "value":Lorg/chromium/mojo/bindings/Interface;, "TS;"
    aput-object v4, v2, v1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v0

    return-object v0
.end method

.method public readSharedBufferHandles(III)[Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 542
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 543
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 544
    const/4 v2, 0x0

    .line 553
    :cond_0
    return-object v2

    .line 546
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 547
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/SharedBufferHandle;

    .line 548
    .local v2, "result":[Lorg/chromium/mojo/system/SharedBufferHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 549
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readShort(I)S
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 183
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public readShorts(III)[S
    .locals 5
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 281
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 282
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    .line 285
    :cond_0
    const-wide/16 v3, 0x2

    invoke-direct {v0, v3, v4, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 286
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v1, v3, [S

    .line 287
    .local v1, "result":[S
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 433
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 434
    .local v0, "arrayNullability":I
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    .line 435
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 436
    const/4 v2, 0x0

    .line 438
    :goto_1
    return-object v2

    .line 433
    .end local v0    # "arrayNullability":I
    .end local v1    # "bytes":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    .restart local v0    # "arrayNullability":I
    .restart local v1    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Handle;->toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    return-object v0
.end method

.method public readUntypedHandles(III)[Lorg/chromium/mojo/system/UntypedHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 464
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 465
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 466
    const/4 v2, 0x0

    .line 475
    :cond_0
    return-object v2

    .line 468
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 469
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    new-array v2, v4, [Lorg/chromium/mojo/system/UntypedHandle;

    .line 470
    .local v2, "result":[Lorg/chromium/mojo/system/UntypedHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 471
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
