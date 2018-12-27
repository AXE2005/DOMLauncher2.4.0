.class Lorg/chromium/mojom/mojo/Application_Internal;
.super Ljava/lang/Object;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;,
        Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;,
        Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;,
        Lorg/chromium/mojom/mojo/Application_Internal$Stub;,
        Lorg/chromium/mojom/mojo/Application_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final ACCEPT_CONNECTION_ORDINAL:I = 0x1

.field private static final INITIALIZE_ORDINAL:I = 0x0

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/Application;",
            "Lorg/chromium/mojom/mojo/Application$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_QUIT_ORDINAL:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method
