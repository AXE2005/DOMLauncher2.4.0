.class final Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Shell_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Shell_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShellConnectToApplicationParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x18


# instance fields
.field public applicationUrl:Ljava/lang/String;

.field public exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

.field public services:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    sput-object v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Struct;-><init>(I)V

    .line 106
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v4, 0x1

    .line 114
    if-nez p0, :cond_1

    .line 115
    const/4 v1, 0x0

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    new-instance v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;-><init>()V

    .line 118
    .local v1, "result":Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 119
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-lez v2, :cond_2

    .line 120
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Ljava/lang/String;

    .line 122
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    if-le v2, v4, :cond_3

    .line 123
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 125
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->numFields:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 126
    const/16 v2, 0x14

    sget-object v3, Lorg/chromium/mojom/mojo/ServiceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v2, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/ServiceProvider;

    iput-object v2, v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 109
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v4, 0x1

    .line 134
    sget-object v1, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 135
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 136
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 137
    iget-object v1, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    const/16 v2, 0x14

    sget-object v3, Lorg/chromium/mojom/mojo/ServiceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 138
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 150
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 151
    check-cast v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    .line 152
    .local v0, "other":Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 157
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 166
    const/16 v0, 0x1f

    .line 167
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 168
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 169
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 170
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 171
    return v1
.end method
