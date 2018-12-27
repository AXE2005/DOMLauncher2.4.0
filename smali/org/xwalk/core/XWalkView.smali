.class public Lorg/xwalk/core/XWalkView;
.super Landroid/widget/FrameLayout;
.source "XWalkView.java"


# static fields
.field private static final BRIDGE_CLASS:Ljava/lang/String; = "org.xwalk.core.internal.XWalkViewBridge"

.field public static final RELOAD_IGNORE_CACHE:I = 0x1

.field public static final RELOAD_NORMAL:I


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

.field private bridge:Ljava/lang/Object;

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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 649
    const-string v0, "XWalkViewInternalContextAttributeSetConstructor"

    const-string v1, "org.xwalk.core.internal.XWalkViewBridge"

    new-array v2, v7, [Ljava/lang/Object;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->registerConstructor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    const-string v0, "XWalkViewInternalContextActivityConstructor"

    const-string v1, "org.xwalk.core.internal.XWalkViewBridge"

    new-array v2, v7, [Ljava/lang/Object;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->registerConstructor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    .line 191
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    const-string v1, "XWalkViewInternalContextActivityConstructor"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/xwalk/core/ReflectionHelper;->createInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    .line 194
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 202
    :goto_1
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/xwalk/core/ReflectionHelper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    const-string v1, "XWalkViewInternalContextAttributeSetConstructor"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lorg/xwalk/core/ReflectionHelper;->createInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    .line 171
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 179
    :goto_1
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/xwalk/core/ReflectionHelper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
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

    .line 612
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 613
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "loadSuper"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Ljava/lang/reflect/Method;

    .line 614
    const-string v1, "loadAppFromManifestSuper"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Ljava/lang/reflect/Method;

    .line 615
    const-string v1, "reloadSuper"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Ljava/lang/reflect/Method;

    .line 616
    const-string v1, "stopLoadingSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Ljava/lang/reflect/Method;

    .line 617
    const-string v1, "getUrlSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Ljava/lang/reflect/Method;

    .line 618
    const-string v1, "getTitleSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Ljava/lang/reflect/Method;

    .line 619
    const-string v1, "getOriginalUrlSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Ljava/lang/reflect/Method;

    .line 620
    const-string v1, "getNavigationHistorySuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Ljava/lang/reflect/Method;

    .line 621
    const-string v1, "addJavascriptInterfaceSuper"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

    .line 622
    const-string v1, "evaluateJavascriptSuper"

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Ljava/lang/reflect/Method;

    .line 623
    const-string v1, "clearCacheSuper"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Ljava/lang/reflect/Method;

    .line 624
    const-string v1, "hasEnteredFullscreenSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Ljava/lang/reflect/Method;

    .line 625
    const-string v1, "leaveFullscreenSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Ljava/lang/reflect/Method;

    .line 626
    const-string v1, "pauseTimersSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Ljava/lang/reflect/Method;

    .line 627
    const-string v1, "resumeTimersSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Ljava/lang/reflect/Method;

    .line 628
    const-string v1, "onHideSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Ljava/lang/reflect/Method;

    .line 629
    const-string v1, "onShowSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Ljava/lang/reflect/Method;

    .line 630
    const-string v1, "onDestroySuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Ljava/lang/reflect/Method;

    .line 631
    const-string v1, "onActivityResultSuper"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Ljava/lang/reflect/Method;

    .line 632
    const-string v1, "onNewIntentSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Ljava/lang/reflect/Method;

    .line 633
    const-string v1, "saveStateSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Ljava/lang/reflect/Method;

    .line 634
    const-string v1, "restoreStateSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Ljava/lang/reflect/Method;

    .line 635
    const-string v1, "getAPIVersionSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Ljava/lang/reflect/Method;

    .line 636
    const-string v1, "getXWalkVersionSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Ljava/lang/reflect/Method;

    .line 637
    const-string v1, "setUIClientSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.internal.XWalkUIClientBridge"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Ljava/lang/reflect/Method;

    .line 638
    const-string v1, "setResourceClientSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.internal.XWalkResourceClientBridge"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Ljava/lang/reflect/Method;

    .line 639
    const-string v1, "setBackgroundColorSuper"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Ljava/lang/reflect/Method;

    .line 640
    const-string v1, "setLayerTypeSuper"

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/graphics/Paint;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setLayerTypeintPaintMethod:Ljava/lang/reflect/Method;

    .line 641
    const-string v1, "setUserAgentStringSuper"

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Ljava/lang/reflect/Method;

    .line 642
    const-string v1, "setNetworkAvailableSuper"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Ljava/lang/reflect/Method;

    .line 643
    const-string v1, "getRemoteDebuggingUrlSuper"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Ljava/lang/reflect/Method;

    .line 645
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public clearCache(Z)V
    .locals 5
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
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
    .line 345
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/ReflectionHelper;->getBridgeOrWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/XWalkNavigationHistory;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public leaveFullscreen()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

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

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 491
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method public pauseTimers()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 517
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public resumeTimers()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 504
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 5
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 567
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setLayerTypeintPaintMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 5
    .param p1, "networkUp"    # Z

    .prologue
    .line 592
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V
    .locals 5
    .param p1, "client"    # Lorg/xwalk/core/XWalkResourceClient;

    .prologue
    .line 555
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkResourceClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/XWalkUIClient;)V
    .locals 5
    .param p1, "client"    # Lorg/xwalk/core/XWalkUIClient;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method
