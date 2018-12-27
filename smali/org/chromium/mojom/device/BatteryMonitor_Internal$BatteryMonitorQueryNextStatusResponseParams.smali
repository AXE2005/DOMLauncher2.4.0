.class final Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "BatteryMonitor_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/BatteryMonitor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BatteryMonitorQueryNextStatusResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x10


# instance fields
.field public status:Lorg/chromium/mojom/device/BatteryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Struct;-><init>(I)V

    .line 158
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 166
    if-nez p0, :cond_1

    .line 167
    const/4 v2, 0x0

    .line 175
    :cond_0
    :goto_0
    return-object v2

    .line 169
    :cond_1
    new-instance v2, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;

    invoke-direct {v2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;-><init>()V

    .line 170
    .local v2, "result":Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v1

    .line 171
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-lez v3, :cond_0

    .line 172
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 173
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/device/BatteryStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 161
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 181
    sget-object v1, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 182
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 183
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 193
    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 195
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 196
    check-cast v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;

    .line 197
    .local v0, "other":Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
    iget-object v3, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    iget-object v4, v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 198
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/16 v0, 0x1f

    .line 208
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 209
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 210
    return v1
.end method
