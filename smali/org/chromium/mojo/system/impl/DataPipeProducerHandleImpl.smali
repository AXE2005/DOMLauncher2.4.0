.class Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "DataPipeProducerHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/DataPipe$ProducerHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p2, "mojoHandle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 22
    return-void
.end method

.method constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 29
    return-void
.end method


# virtual methods
.method public beginWriteData(ILorg/chromium/mojo/system/DataPipe$WriteFlags;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->beginWriteData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;ILorg/chromium/mojo/system/DataPipe$WriteFlags;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public endWriteData(I)V
    .locals 1
    .param p1, "numBytesWritten"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->endWriteData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;I)V

    .line 61
    return-void
.end method

.method public pass()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->pass()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    return-object v0
.end method

.method public writeData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$WriteFlags;)I
    .locals 1
    .param p1, "elements"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->writeData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$WriteFlags;)I

    move-result v0

    return v0
.end method
