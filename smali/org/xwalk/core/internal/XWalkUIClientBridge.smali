.class public Lorg/xwalk/core/internal/XWalkUIClientBridge;
.super Lorg/xwalk/core/internal/XWalkUIClientInternal;
.source "XWalkUIClientBridge.java"


# static fields
.field private static final WRAPPER_CLASS:Ljava/lang/String; = "org.xwalk.core.Object"


# instance fields
.field private enumConsoleMessageTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private enumConsoleMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

.field private enumInitiateByClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private enumInitiateByClassValueOfMethod:Ljava/lang/reflect/Method;

.field private enumJavascriptMessageTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private enumJavascriptMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

.field private enumLoadStatusClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private enumLoadStatusClassValueOfMethod:Ljava/lang/reflect/Method;

.field private onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Ljava/lang/reflect/Method;

.field private onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Ljava/lang/reflect/Method;

.field private onFullscreenToggledXWalkViewInternalbooleanMethod:Ljava/lang/reflect/Method;

.field private onIconAvailableXWalkViewInternalStringMessageMethod:Ljava/lang/reflect/Method;

.field private onJavascriptCloseWindowXWalkViewInternalMethod:Ljava/lang/reflect/Method;

.field private onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Ljava/lang/reflect/Method;

.field private onPageLoadStartedXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

.field private onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Ljava/lang/reflect/Method;

.field private onReceivedIconXWalkViewInternalStringBitmapMethod:Ljava/lang/reflect/Method;

.field private onReceivedTitleXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

.field private onRequestFocusXWalkViewInternalMethod:Ljava/lang/reflect/Method;

.field private onScaleChangedXWalkViewInternalfloatfloatMethod:Ljava/lang/reflect/Method;

.field private onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

.field private openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Ljava/lang/reflect/Method;

.field private shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 52
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    .line 54
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->reflectionInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/xwalk/core/internal/ReflectionHelper;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private ConvertConsoleMessageType(Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertInitiateByInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClassValueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertJavascriptMessageTypeInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertLoadStatusInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClassValueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private reflectionInit()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 367
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.xwalk.core.XWalkUIClient$JavascriptMessageType"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClass:Ljava/lang/Class;

    .line 369
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClass:Ljava/lang/Class;

    const-string v2, "valueOf"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.xwalk.core.XWalkUIClient$ConsoleMessageType"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClass:Ljava/lang/Class;

    .line 371
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClass:Ljava/lang/Class;

    const-string v2, "valueOf"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClassValueOfMethod:Ljava/lang/reflect/Method;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.xwalk.core.XWalkUIClient$InitiateBy"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClass:Ljava/lang/Class;

    .line 373
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClass:Ljava/lang/Class;

    const-string v2, "valueOf"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClassValueOfMethod:Ljava/lang/reflect/Method;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.xwalk.core.XWalkUIClient$LoadStatus"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClass:Ljava/lang/Class;

    .line 375
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClass:Ljava/lang/Class;

    const-string v2, "valueOf"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClassValueOfMethod:Ljava/lang/reflect/Method;

    .line 376
    const-string v1, "onCreateWindowRequested"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClass:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Ljava/lang/reflect/Method;

    .line 377
    const-string v1, "onIconAvailable"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Landroid/os/Message;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Ljava/lang/reflect/Method;

    .line 378
    const-string v1, "onReceivedIcon"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Ljava/lang/reflect/Method;

    .line 379
    const-string v1, "onRequestFocus"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Ljava/lang/reflect/Method;

    .line 380
    const-string v1, "onJavascriptCloseWindow"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Ljava/lang/reflect/Method;

    .line 381
    const-string v1, "onJavascriptModalDialog"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClass:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "org.xwalk.core.XWalkJavascriptResult"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Ljava/lang/reflect/Method;

    .line 382
    const-string v1, "onFullscreenToggled"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Ljava/lang/reflect/Method;

    .line 383
    const-string v1, "openFileChooser"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Ljava/lang/reflect/Method;

    .line 384
    const-string v1, "onScaleChanged"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Ljava/lang/reflect/Method;

    .line 385
    const-string v1, "shouldOverrideKeyEvent"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

    .line 386
    const-string v1, "onUnhandledKeyEvent"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

    .line 387
    const-string v1, "onConsoleMessage"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClass:Ljava/lang/Class;

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Ljava/lang/reflect/Method;

    .line 388
    const-string v1, "onReceivedTitle"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

    .line 389
    const-string v1, "onPageLoadStarted"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

    .line 390
    const-string v1, "onPageLoadStopped"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "org.xwalk.core.XWalkView"

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClass:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Ljava/lang/reflect/Method;

    .line 392
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 295
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    invoke-direct {p0, p5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertConsoleMessageType(Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 287
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 288
    check-cast v1, Lorg/xwalk/core/internal/XWalkViewBridge;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConsoleMessageSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 301
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    .line 303
    .local v0, "ret":Z
    return v0
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    move-object v0, p3

    .line 72
    .local v0, "callbackFinal":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertInitiateByInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/xwalk/core/internal/XWalkUIClientBridge$1;

    invoke-direct {v5, p0, v0}, Lorg/xwalk/core/internal/XWalkUIClientBridge$1;-><init>(Lorg/xwalk/core/internal/XWalkUIClientBridge;Landroid/webkit/ValueCallback;)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindowRequestedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    .line 85
    .local v0, "ret":Z
    return v0
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 189
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V

    .line 194
    :goto_0
    return-void

    .line 192
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    goto :goto_0
.end method

.method public onFullscreenToggledSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    .line 203
    return-void
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 91
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V

    .line 96
    :goto_0
    return-void

    .line 94
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onIconAvailableSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    .line 105
    return-void
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 148
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 153
    :goto_0
    return-void

    .line 151
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0
.end method

.method public onJavascriptCloseWindowSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 162
    return-void
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 175
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertJavascriptMessageTypeInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const/4 v0, 0x3

    aput-object p4, v3, v0

    const/4 v0, 0x4

    aput-object p5, v3, v0

    const/4 v4, 0x5

    instance-of v0, p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_0
    invoke-virtual {p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    invoke-direct {v0, p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p6, v0

    goto :goto_0
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 7
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 167
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 168
    check-cast v1, Lorg/xwalk/core/internal/XWalkViewBridge;

    instance-of v0, p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    move-object v6, p6

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 170
    :goto_1
    return v0

    .line 168
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_0
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    check-cast p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    invoke-direct {v6, p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    goto :goto_0

    .line 170
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_1
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJavascriptModalDialogSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 181
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 183
    .local v0, "ret":Z
    return v0
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 328
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 329
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 331
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 355
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertLoadStatusInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 347
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 348
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 352
    :goto_0
    return-void

    .line 350
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    goto :goto_0
.end method

.method public onPageLoadStoppedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 361
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 115
    :goto_0
    return-void

    .line 113
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedIconSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 124
    return-void
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 309
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 312
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTitleSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 137
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 129
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 134
    :goto_0
    return-void

    .line 132
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0
.end method

.method public onRequestFocusSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 143
    return-void
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 227
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V

    .line 232
    :goto_0
    return-void

    .line 230
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    goto :goto_0
.end method

.method public onScaleChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 240
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    .line 241
    return-void
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 268
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V

    .line 273
    :goto_0
    return-void

    .line 271
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    .line 282
    return-void
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openFileChooserSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectionHelper;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 262
    .local v0, "ret":Z
    return v0
.end method
