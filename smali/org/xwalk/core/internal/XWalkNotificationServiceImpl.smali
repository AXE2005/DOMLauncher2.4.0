.class public Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;
.super Ljava/lang/Object;
.source "XWalkNotificationServiceImpl.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkNotificationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkNotificationServiceImpl"

.field private static final XWALK_ACTION_CLICK_NOTIFICATION_SUFFIX:Ljava/lang/String; = ".notification.click"

.field private static final XWALK_ACTION_CLOSE_NOTIFICATION_SUFFIX:Ljava/lang/String; = ".notification.close"

.field private static final XWALK_INTENT_CATEGORY_NOTIFICATION_PREFIX:Ljava/lang/String; = "notification_"

.field private static final XWALK_INTENT_EXTRA_KEY_NOTIFICATION_ID:Ljava/lang/String; = "xwalk.NOTIFICATION_ID"


# instance fields
.field private mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mContext:Landroid/content/Context;

.field private mExistNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mExistReplaceIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCloseReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 64
    new-instance v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$1;-><init>(Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;)Lorg/xwalk/core/internal/XWalkViewInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    return-object v0
.end method

.method private static getCategoryFromNotificationId(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notificationChanged()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "XWalkNotificationServiceImpl"

    const-string v1, "notifications are all cleared,unregister broadcast receiver for close pending intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->unregisterReceiver()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->registerReceiver()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 6

    .prologue
    .line 257
    new-instance v1, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v5}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".notification.close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 261
    .local v3, "id":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->getCategoryFromNotificationId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/util/AndroidRuntimeException;
    const-string v4, "XWalkNotificationServiceImpl"

    invoke-virtual {v0}, Landroid/util/AndroidRuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationCloseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1
    .param p1, "notificationId"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->onNotificationClose(IZ)V

    .line 198
    return-void
.end method

.method public doShowNotification(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 201
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 202
    return-void
.end method

.method public getNotificationIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 130
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 111
    .restart local p1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 112
    .local v1, "originalWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 113
    .local v0, "originalHeight":I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 119
    .local v3, "targetWidth":I
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    .local v2, "targetHeight":I
    if-le v1, v3, :cond_2

    if-le v0, v2, :cond_2

    .line 123
    mul-int v4, v1, v2

    mul-int v5, v0, v3

    if-le v4, v5, :cond_3

    .line 124
    mul-int v4, v0, v3

    div-int v2, v4, v1

    .line 130
    :cond_2
    :goto_1
    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_3
    mul-int v4, v1, v2

    div-int v3, v4, v0

    goto :goto_1
.end method

.method public maybeHandleIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    const-string v3, "xwalk.NOTIFICATION_ID"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "notificationId":I
    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v5}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".notification.close"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->onNotificationClose(IZ)V

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v5}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".notification.click"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->onNotificationClick(I)V

    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public onNotificationClick(I)V
    .locals 3
    .param p1, "notificationId"    # I

    .prologue
    .line 216
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;

    .line 217
    .local v0, "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mReplaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->notificationChanged()V

    .line 225
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->notificationClicked(I)V

    goto :goto_0
.end method

.method public onNotificationClose(IZ)V
    .locals 3
    .param p1, "notificationId"    # I
    .param p2, "byUser"    # Z

    .prologue
    .line 232
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;

    .line 233
    .local v0, "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mReplaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->notificationChanged()V

    .line 241
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->notificationClosed(IZ)V

    goto :goto_0
.end method

.method public onNotificationShown(I)V
    .locals 3
    .param p1, "notificationId"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;

    .line 206
    .local v0, "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->notificationDisplayed(I)V

    goto :goto_0
.end method

.method public setBridge(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V
    .locals 0
    .param p1, "bridge"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 82
    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "replaceId"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "notificationId"    # I

    .prologue
    .line 139
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    invoke-virtual {v9, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    invoke-virtual {v9, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;

    .line 141
    .local v8, "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    iget-object v9, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mNotificationId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 142
    iget-object v3, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 143
    .local v3, "builder":Landroid/app/Notification$Builder;
    iget-object v9, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mMessageNum:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mMessageNum:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 160
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 162
    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 163
    .local v7, "iconRes":I
    if-nez v7, :cond_1

    .line 164
    const v7, 0x1080093

    .line 166
    :cond_1
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 167
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->getNotificationIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    .local v2, "bigIcon":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 170
    :cond_2
    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v9}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 171
    .local v1, "activity":Landroid/content/Context;
    invoke-static/range {p5 .. p5}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->getCategoryFromNotificationId(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "category":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".notification.click"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "xwalk.NOTIFICATION_ID"

    move/from16 v0, p5

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x20100000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 179
    .local v5, "clickIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".notification.close"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "xwalk.NOTIFICATION_ID"

    move/from16 v0, p5

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 183
    .local v6, "closeIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v1, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 185
    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v1, v9, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 188
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_4

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    :goto_1
    move/from16 v0, p5

    invoke-virtual {p0, v0, v9}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->doShowNotification(ILandroid/app/Notification;)V

    .line 190
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->notificationChanged()V

    .line 191
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->onNotificationShown(I)V

    .line 192
    return-void

    .line 145
    .end local v1    # "activity":Landroid/content/Context;
    .end local v2    # "bigIcon":Landroid/graphics/Bitmap;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "clickIntent":Landroid/content/Intent;
    .end local v6    # "closeIntent":Landroid/content/Intent;
    .end local v7    # "iconRes":I
    .end local v8    # "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    :cond_3
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 148
    .restart local v3    # "builder":Landroid/app/Notification$Builder;
    new-instance v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;

    invoke-direct {v8, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;-><init>(Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;)V

    .line 149
    .restart local v8    # "webNotification":Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mNotificationId:Ljava/lang/Integer;

    .line 150
    iput-object p3, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mReplaceId:Ljava/lang/String;

    .line 151
    iput-object v3, v8, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl$WebNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 153
    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 155
    iget-object v9, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistReplaceIds:Ljava/util/HashMap;

    invoke-virtual {v9, p3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .restart local v1    # "activity":Landroid/content/Context;
    .restart local v2    # "bigIcon":Landroid/graphics/Bitmap;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "clickIntent":Landroid/content/Intent;
    .restart local v6    # "closeIntent":Landroid/content/Intent;
    .restart local v7    # "iconRes":I
    :cond_4
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    goto :goto_1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mExistNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->unregisterReceiver()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;->mBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 90
    return-void
.end method
