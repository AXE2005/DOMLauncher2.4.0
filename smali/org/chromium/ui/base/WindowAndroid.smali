.class public Lorg/chromium/ui/base/WindowAndroid;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final START_INTENT_FAILURE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowAndroid"

.field static final WINDOW_CALLBACK_ERRORS:Ljava/lang/String; = "window_callback_errors"


# instance fields
.field private mAnimationPlaceholderView:Landroid/view/View;

.field private mAnimationsOverContent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplicationContext:Landroid/content/Context;

.field protected mIntentErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeWindowAndroid:J

.field protected mOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private final mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    .line 58
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 82
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    .line 86
    new-instance v0, Lorg/chromium/ui/VSyncMonitor;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/base/WindowAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/VSyncMonitor;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/WindowAndroid;JJJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnVSync(JJJ)V
.end method

.method private requestVSyncUpdate()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->requestUpdate()V

    .line 252
    return-void
.end method


# virtual methods
.method public canResolveActivity(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public cancelIntent(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 147
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t cancel intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 283
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 284
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeDestroy(J)V

    .line 285
    iput-wide v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 287
    :cond_0
    return-void
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNativePointer()J
    .locals 4

    .prologue
    .line 295
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 298
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->isInsideVSync()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public removeIntentCallback(Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)Z
    .locals 3
    .param p1, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    .prologue
    .line 157
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "requestCode":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 160
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 228
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v2, "window_callback_errors"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 231
    .local v0, "errors":Ljava/io/Serializable;
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 233
    check-cast v1, Ljava/util/HashMap;

    .line 234
    .local v1, "intentErrors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 219
    const-string v0, "window_callback_errors"

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 220
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public setAnimationPlaceholderView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    .line 308
    return-void
.end method

.method protected showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 124
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, -0x1

    return v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 138
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method public showError(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    :cond_0
    return-void
.end method

.method public showIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationOverContent(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 321
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    .local v0, "added":Z
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Already Added."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_2
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 333
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 339
    :cond_3
    new-instance v1, Lorg/chromium/ui/base/WindowAndroid$2;

    invoke-direct {v1, p0}, Lorg/chromium/ui/base/WindowAndroid$2;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method
