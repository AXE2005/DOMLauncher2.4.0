.class public Lorg/chromium/components/navigation_interception/NavigationParams;
.super Ljava/lang/Object;
.source "NavigationParams.java"


# instance fields
.field public final hasUserGesture:Z

.field public final isExternalProtocol:Z

.field public final isPost:Z

.field public final isRedirect:Z

.field public final pageTransitionType:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZIZZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isPost"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "pageTransitionType"    # I
    .param p5, "isRedirect"    # Z
    .param p6, "isExternalProtocol"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    .line 27
    iput-boolean p3, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->hasUserGesture:Z

    .line 28
    iput p4, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->pageTransitionType:I

    .line 29
    iput-boolean p5, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isRedirect:Z

    .line 30
    iput-boolean p6, p0, Lorg/chromium/components/navigation_interception/NavigationParams;->isExternalProtocol:Z

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/String;ZZIZZ)Lorg/chromium/components/navigation_interception/NavigationParams;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isPost"    # Z
    .param p2, "hasUserGesture"    # Z
    .param p3, "pageTransitionType"    # I
    .param p4, "isRedirect"    # Z
    .param p5, "isExternalProtocol"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/components/navigation_interception/NavigationParams;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/navigation_interception/NavigationParams;-><init>(Ljava/lang/String;ZZIZZ)V

    return-object v0
.end method
