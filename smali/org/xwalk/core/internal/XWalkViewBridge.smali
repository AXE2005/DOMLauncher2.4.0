.class public Lorg/xwalk/core/internal/XWalkViewBridge;
.super Lorg/xwalk/core/internal/XWalkViewInternal;
.source "XWalkViewBridge.java"


# static fields
.field private static final WRAPPER_CLASS:Ljava/lang/String; = "org.xwalk.core.Object"


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

.field private clearCachebooleanMethod:Ljava/lang/reflect/Method;

.field private evaluateJavascriptStringValueCallbackMethod:Ljava/lang/reflect/Method;

.field private getAPIVersionMethod:Ljava/lang/reflect/Method;

.field private getNavigationHistoryMethod:Ljava/lang/reflect/Method;

.field private getOriginalUrlMethod:Ljava/lang/reflect/Method;

.field private getRemoteDebuggingUrlMethod:Ljava/lang/reflect/Method;

.field private getTitleMethod:Ljava/lang/reflect/Method;

.field private getUrlMethod:Ljava/lang/reflect/Method;

.field private getXWalkVersionMethod:Ljava/lang/reflect/Method;

.field private hasEnteredFullscreenMethod:Ljava/lang/reflect/Method;

.field private leaveFullscreenMethod:Ljava/lang/reflect/Method;

.field private loadAppFromManifestStringStringMethod:Ljava/lang/reflect/Method;

.field private loadStringStringMethod:Ljava/lang/reflect/Method;

.field private onActivityResultintintIntentMethod:Ljava/lang/reflect/Method;

.field private onDestroyMethod:Ljava/lang/reflect/Method;

.field private onHideMethod:Ljava/lang/reflect/Method;

.field private onNewIntentIntentMethod:Ljava/lang/reflect/Method;

.field private onShowMethod:Ljava/lang/reflect/Method;

.field private pauseTimersMethod:Ljava/lang/reflect/Method;

.field private reloadintMethod:Ljava/lang/reflect/Method;

.field private restoreStateBundleMethod:Ljava/lang/reflect/Method;

.field private resumeTimersMethod:Ljava/lang/reflect/Method;

.field private saveStateBundleMethod:Ljava/lang/reflect/Method;

.field private setBackgroundColorintMethod:Ljava/lang/reflect/Method;

.field private setLayerTypeintPaintMethod:Ljava/lang/reflect/Method;

.field private setNetworkAvailablebooleanMethod:Ljava/lang/reflect/Method;

.field private setResourceClientXWalkResourceClientInternalMethod:Ljava/lang/reflect/Method;

.field private setUIClientXWalkUIClientInternalMethod:Ljava/lang/reflect/Method;

.field private setUserAgentStringStringMethod:Ljava/lang/reflect/Method;

.field private stopLoadingMethod:Ljava/lang/reflect/Method;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 57
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 59
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/xwalk/core/internal/ReflectionHelper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 49
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/xwalk/core/internal/ReflectionHelper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private reflectionInit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 460
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "load"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Ljava/lang/reflect/Method;

    .line 461
    const-string v1, "loadAppFromManifest"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Ljava/lang/reflect/Method;

    .line 462
    const-string v1, "reload"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Ljava/lang/reflect/Method;

    .line 463
    const-string v1, "stopLoading"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Ljava/lang/reflect/Method;

    .line 464
    const-string v1, "getUrl"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Ljava/lang/reflect/Method;

    .line 465
    const-string v1, "getTitle"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Ljava/lang/reflect/Method;

    .line 466
    const-string v1, "getOriginalUrl"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Ljava/lang/reflect/Method;

    .line 467
    const-string v1, "getNavigationHistory"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Ljava/lang/reflect/Method;

    .line 468
    const-string v1, "addJavascriptInterface"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

    .line 469
    const-string v1, "evaluateJavascript"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Ljava/lang/reflect/Method;

    .line 470
    const-string v1, "clearCache"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Ljava/lang/reflect/Method;

    .line 471
    const-string v1, "hasEnteredFullscreen"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Ljava/lang/reflect/Method;

    .line 472
    const-string v1, "leaveFullscreen"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Ljava/lang/reflect/Method;

    .line 473
    const-string v1, "pauseTimers"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Ljava/lang/reflect/Method;

    .line 474
    const-string v1, "resumeTimers"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Ljava/lang/reflect/Method;

    .line 475
    const-string v1, "onHide"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Ljava/lang/reflect/Method;

    .line 476
    const-string v1, "onShow"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Ljava/lang/reflect/Method;

    .line 477
    const-string v1, "onDestroy"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Ljava/lang/reflect/Method;

    .line 478
    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Ljava/lang/reflect/Method;

    .line 479
    const-string v1, "onNewIntent"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Ljava/lang/reflect/Method;

    .line 480
    const-string v1, "saveState"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Ljava/lang/reflect/Method;

    .line 481
    const-string v1, "restoreState"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Ljava/lang/reflect/Method;

    .line 482
    const-string v1, "getAPIVersion"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Ljava/lang/reflect/Method;

    .line 483
    const-string v1, "getXWalkVersion"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Ljava/lang/reflect/Method;

    .line 484
    const-string v1, "setUIClient"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkUIClient"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Ljava/lang/reflect/Method;

    .line 485
    const-string v1, "setResourceClient"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkResourceClient"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Ljava/lang/reflect/Method;

    .line 486
    const-string v1, "setBackgroundColor"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Ljava/lang/reflect/Method;

    .line 487
    const-string v1, "setLayerType"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Ljava/lang/reflect/Method;

    .line 488
    const-string v1, "setUserAgentString"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Ljava/lang/reflect/Method;

    .line 489
    const-string v1, "setNetworkAvailable"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Ljava/lang/reflect/Method;

    .line 490
    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Ljava/lang/reflect/Method;

    .line 492
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public addJavascriptInterfaceSuper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public clearCache(Z)V
    .locals 5
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public clearCacheSuper(Z)V
    .locals 0
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->clearCache(Z)V

    .line 196
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public evaluateJavascriptSuper(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 185
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAPIVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 342
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/internal/ReflectionHelper;->getBridgeOrWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    return-object v0
.end method

.method public getNavigationHistorySuper()Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    .line 161
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 162
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteDebuggingUrlSuper()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 450
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getRemoteDebuggingUrl()Landroid/net/Uri;

    move-result-object v0

    .line 451
    .local v0, "ret":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 452
    .end local v0    # "ret":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 134
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 120
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXWalkVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 356
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasEnteredFullscreenSuper()Z
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v0

    .line 209
    .local v0, "ret":Z
    return v0
.end method

.method public leaveFullscreen()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public leaveFullscreenSuper()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 221
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public loadAppFromManifestSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public loadSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityResult(IILandroid/content/Intent;)V

    .line 287
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-void
.end method

.method public onDestroySuper()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    .line 276
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public onHideSuper()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    .line 254
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 292
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onNewIntentSuper(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 300
    .local v0, "ret":Z
    return v0
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public onShowSuper()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    .line 265
    return-void
.end method

.method public pauseTimers()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public pauseTimersSuper()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    .line 232
    return-void
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public reloadSuper(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->reload(I)V

    .line 96
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public restoreStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    .line 328
    .local v0, "ret":Z
    return v0
.end method

.method public resumeTimers()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public resumeTimersSuper()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    .line 243
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public saveStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    .line 314
    .local v0, "ret":Z
    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public setBackgroundColorSuper(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 405
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setBackgroundColor(I)V

    .line 406
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 5
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 411
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public setLayerTypeSuper(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setLayerType(ILandroid/graphics/Paint;)V

    .line 417
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 5
    .param p1, "networkUp"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public setNetworkAvailableSuper(Z)V
    .locals 0
    .param p1, "networkUp"    # Z

    .prologue
    .line 438
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNetworkAvailable(Z)V

    .line 439
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 5
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 389
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 381
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    if-eqz v0, :cond_0

    .line 382
    check-cast p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V

    .line 386
    :goto_0
    return-void

    .line 384
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setResourceClientSuper(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 394
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 395
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 5
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 370
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 362
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V

    .line 367
    :goto_0
    return-void

    .line 365
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUIClientSuper(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 376
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public stopLoadingSuper()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->stopLoading()V

    .line 107
    return-void
.end method
