.class final Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationRequestQuitParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Struct;-><init>(I)V

    .line 303
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    .locals 1
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;-><init>()V

    .line 315
    .local v0, "result":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 306
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 1
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 322
    sget-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    .line 323
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    if-ne p1, p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 333
    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 335
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 344
    const/16 v0, 0x1f

    .line 345
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 346
    .local v1, "result":I
    return v1
.end method
