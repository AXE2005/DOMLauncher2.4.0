.class public Lorg/chromium/mojo/bindings/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAGS_OFFSET:I = 0xc

.field public static final MESSAGE_EXPECTS_RESPONSE_FLAG:I = 0x1

.field public static final MESSAGE_IS_RESPONSE_FLAG:I = 0x2

.field private static final MESSAGE_WITH_REQUEST_ID_NUM_FIELDS:I = 0x3

.field private static final MESSAGE_WITH_REQUEST_ID_SIZE:I = 0x18

.field private static final MESSAGE_WITH_REQUEST_ID_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field public static final NO_FLAG:I = 0x0

.field private static final REQUEST_ID_OFFSET:I = 0x10

.field private static final SIMPLE_MESSAGE_NUM_FIELDS:I = 0x2

.field private static final SIMPLE_MESSAGE_SIZE:I = 0x10

.field private static final SIMPLE_MESSAGE_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final TYPE_OFFSET:I = 0x8


# instance fields
.field private final mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private final mFlags:I

.field private mRequestId:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lorg/chromium/mojo/bindings/MessageHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    .line 18
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/MessageHeader;->SIMPLE_MESSAGE_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 23
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojo/bindings/MessageHeader;->MESSAGE_WITH_REQUEST_ID_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lorg/chromium/mojo/bindings/MessageHeader;->SIMPLE_MESSAGE_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iput-object v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 55
    iput p1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 58
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "requestId"    # J

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lorg/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    sget-object v0, Lorg/chromium/mojo/bindings/MessageHeader;->MESSAGE_WITH_REQUEST_ID_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iput-object v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 66
    iput p1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    .line 67
    iput p2, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    .line 68
    iput-wide p3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 69
    return-void
.end method

.method constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    .line 77
    .local v0, "decoder":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 78
    iget-object v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-static {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->validateDataHeader(Lorg/chromium/mojo/bindings/Struct$DataHeader;)V

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    .line 81
    iget v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v1, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 83
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect message size, expecting at least 24 for a message with a request identifier, but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v3, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    goto :goto_0
.end method

.method private static mustHaveRequestId(I)Z
    .locals 1
    .param p0, "flags"    # I

    .prologue
    .line 212
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateDataHeader(Lorg/chromium/mojo/bindings/Struct$DataHeader;)V
    .locals 3
    .param p0, "dataHeader"    # Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    .line 219
    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-ge v0, v1, :cond_0

    .line 220
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of fields, expecting at least 2, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-ge v0, v2, :cond_1

    .line 225
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size, expecting at least 16, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-eq v0, v2, :cond_2

    .line 231
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size for a message with 2 fields, expecting 16, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    .line 238
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect message size for a message with 3 fields, expecting 24, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    return-void
.end method


# virtual methods
.method public encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct$DataHeader;)V

    .line 142
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 143
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->getFlags()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 144
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 147
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 190
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 192
    check-cast v0, Lorg/chromium/mojo/bindings/MessageHeader;

    .line 193
    .local v0, "other":Lorg/chromium/mojo/bindings/MessageHeader;
    iget-object v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget-object v4, v0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    iget v4, v0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    iget-wide v5, v0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    iget v4, v0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    return v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 133
    sget-boolean v0, Lorg/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->hasRequestId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v0, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    return v0
.end method

.method public hasFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 119
    iget v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    invoke-static {v0}, Lorg/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 171
    const/16 v0, 0x1f

    .line 172
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 173
    .local v1, "result":I
    iget-object v2, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mFlags:I

    add-int v1, v2, v3

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    iget-wide v5, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 176
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mType:I

    add-int v1, v2, v3

    .line 177
    return v1

    .line 173
    :cond_0
    iget-object v2, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mDataHeader:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method setRequestId(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # J

    .prologue
    .line 203
    sget-boolean v0, Lorg/chromium/mojo/bindings/MessageHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/mojo/bindings/MessageHeader;->mustHaveRequestId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 205
    iput-wide p2, p0, Lorg/chromium/mojo/bindings/MessageHeader;->mRequestId:J

    .line 206
    return-void
.end method

.method public validateHeader(I)Z
    .locals 2
    .param p1, "expectedFlags"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->getFlags()I

    move-result v1

    and-int/lit8 v0, v1, 0x3

    .line 155
    .local v0, "knownFlags":I
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public validateHeader(II)Z
    .locals 1
    .param p1, "expectedType"    # I
    .param p2, "expectedFlags"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
