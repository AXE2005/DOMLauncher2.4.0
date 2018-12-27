.class Lorg/chromium/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"


# static fields
.field private static final DELAYED_SCHEDULED_WORK:I = 0x2

.field private static final SCHEDULED_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemMessageHandler"


# instance fields
.field private mDelayedScheduledTimeTicks:J

.field private mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

.field private mMessagePumpDelegateNative:J


# direct methods
.method private constructor <init>(J)V
    .locals 6
    .param p1, "messagePumpDelegateNative"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-wide v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 23
    iput-wide v2, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    .line 32
    iput-wide p1, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 35
    :try_start_0
    const-string v2, "android.os.Message"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    .local v1, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setAsynchronous"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    .end local v1    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find android.os.Message class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load Message.setAsynchronous method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "SystemMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while loading Message.setAsynchronous method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static create(J)Lorg/chromium/base/SystemMessageHandler;
    .locals 1
    .param p0, "messagePumpDelegateNative"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/chromium/base/SystemMessageHandler;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/SystemMessageHandler;-><init>(J)V

    return-object v0
.end method

.method private native nativeDoRunLoopOnce(JJ)V
.end method

.method private obtainAsyncMessage(I)Landroid/os/Message;
    .locals 7
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 81
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 82
    iget-object v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 86
    :try_start_0
    iget-object v2, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 101
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "SystemMessageHandler"

    const-string v3, "Illegal access to asynchronous message creation, disabling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object v6, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SystemMessageHandler"

    const-string v3, "Illegal argument for asynchronous message creation, disabling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object v6, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "SystemMessageHandler"

    const-string v3, "Invocation exception during asynchronous message creation, disabling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object v6, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "SystemMessageHandler"

    const-string v3, "Runtime exception during asynchronous message creation, disabling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object v6, p0, Lorg/chromium/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private removeAllPendingMessages()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 77
    return-void
.end method

.method private scheduleDelayedWork(JJ)V
    .locals 5
    .param p1, "delayedTimeTicks"    # J
    .param p3, "millis"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 65
    iget-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v4}, Lorg/chromium/base/SystemMessageHandler;->removeMessages(I)V

    .line 68
    :cond_0
    iput-wide p1, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    .line 69
    invoke-direct {p0, v4}, Lorg/chromium/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/chromium/base/SystemMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 70
    return-void
.end method

.method private scheduleWork()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/SystemMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    .line 53
    :cond_0
    iget-wide v0, p0, Lorg/chromium/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    iget-wide v2, p0, Lorg/chromium/base/SystemMessageHandler;->mDelayedScheduledTimeTicks:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/base/SystemMessageHandler;->nativeDoRunLoopOnce(JJ)V

    .line 54
    return-void
.end method
