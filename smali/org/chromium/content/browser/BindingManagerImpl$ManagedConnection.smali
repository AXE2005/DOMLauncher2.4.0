.class Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/BindingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedConnection"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoundForBackgroundPeriod:Z

.field private mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private mInForeground:Z

.field private mWasOomProtected:Z

.field final synthetic this$0:Lorg/chromium/content/browser/BindingManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl;Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p2, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 103
    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->dropBindings()V

    return-void
.end method

.method private addStrongBinding()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 59
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->addStrongBinding()V

    goto :goto_0
.end method

.method private dropBindings()V
    .locals 2

    .prologue
    .line 94
    sget-boolean v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManagerImpl;->access$000(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 96
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_1

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->dropOomBindings()V

    goto :goto_0
.end method

.method private removeInitialBinding()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInitialBindingBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->removeInitialBinding()V

    goto :goto_0
.end method

.method private removeStrongBinding()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 69
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isStrongBindingBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection$1;-><init>(Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 82
    .local v1, "doUnbind":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$000(Lorg/chromium/content/browser/BindingManagerImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->this$0:Lorg/chromium/content/browser/BindingManagerImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/BindingManagerImpl;->access$100(Lorg/chromium/content/browser/BindingManagerImpl;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method clearConnection()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 150
    return-void
.end method

.method determinedVisibility()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeInitialBinding()V

    .line 123
    return-void
.end method

.method isConnectionCleared()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOomProtected()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->isOomProtectedOrWasWhenDied()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mWasOomProtected:Z

    goto :goto_0
.end method

.method setBoundForBackgroundPeriod(Z)V
    .locals 1
    .param p1, "nextBound"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 131
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 136
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    .line 137
    return-void

    .line 132
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mBoundForBackgroundPeriod:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding()V

    goto :goto_0
.end method

.method setInForeground(Z)V
    .locals 1
    .param p1, "nextInForeground"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->addStrongBinding()V

    .line 115
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    .line 116
    return-void

    .line 111
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->mInForeground:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 112
    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManagerImpl$ManagedConnection;->removeStrongBinding()V

    goto :goto_0
.end method
