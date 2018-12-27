.class public final Lorg/chromium/mojom/device/BatteryStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "BatteryStatus.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x28


# instance fields
.field public charging:Z

.field public chargingTime:D

.field public dischargingTime:D

.field public level:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Struct;-><init>(I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 27
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 29
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 37
    if-nez p0, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 54
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct {v1}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    .line 41
    .local v1, "result":Lorg/chromium/mojom/device/BatteryStatus;
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 42
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-lez v2, :cond_2

    .line 43
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 45
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 46
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 48
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    .line 49
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 51
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 52
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 32
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/BatteryStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 60
    sget-object v1, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 61
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-boolean v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 62
    iget-wide v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 63
    iget-wide v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 64
    iget-wide v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 65
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 77
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lorg/chromium/mojom/device/BatteryStatus;

    .line 79
    .local v0, "other":Lorg/chromium/mojom/device/BatteryStatus;
    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    iget-wide v5, v0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    iget-wide v5, v0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    iget-wide v5, v0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 97
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 100
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 101
    return v1
.end method
