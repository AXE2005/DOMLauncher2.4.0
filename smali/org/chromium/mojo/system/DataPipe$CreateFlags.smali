.class public Lorg/chromium/mojo/system/DataPipe$CreateFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "DataPipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/DataPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/DataPipe$CreateFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_MAY_DISCARD:I = 0x1

.field private static final FLAG_NONE:I

.field public static final NONE:Lorg/chromium/mojo/system/DataPipe$CreateFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    sput-object v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 35
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/DataPipe$CreateFlags;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setMayDiscard(Z)Lorg/chromium/mojo/system/DataPipe$CreateFlags;
    .locals 1
    .param p1, "mayDiscard"    # Z

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->setFlag(IZ)Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    return-object v0
.end method
