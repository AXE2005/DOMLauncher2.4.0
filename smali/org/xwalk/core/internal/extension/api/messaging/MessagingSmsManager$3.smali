.class Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;
.super Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;
.source "MessagingSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->registerIntentFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V
    .locals 0
    .param p2, "x0"    # Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    const-string v9, "UUID"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 295
    .local v8, "uuid":Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-object v9, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-static {v9}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->access$100(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;->getResultCode()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v2, 0x1

    .line 298
    .local v2, "error":Z
    :goto_1
    const-string v9, "asyncCallId"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "asyncCallId":Ljava/lang/String;
    const-string v9, "instanceid"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 302
    .local v3, "instanceID":I
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .local v6, "jsonMsg":Lorg/json/JSONObject;
    const-string v9, "asyncCallId"

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v10, "cmd"

    if-eqz v2, :cond_3

    const-string v9, "deliveryerror"

    :goto_2
    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v4, "jsData":Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v5, "jsEvent":Lorg/json/JSONObject;
    const-string v9, "event"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v9, "serviceID"

    const-string v10, "sim0"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v9, "messageID"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v9, "recipients"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 313
    .local v7, "sDateFormat":Ljava/text/SimpleDateFormat;
    const-string v9, "deliveryTimestamps"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v9, "error"

    invoke-virtual {v4, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 315
    iget-object v9, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;->mMessaging:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->postMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v4    # "jsData":Lorg/json/JSONObject;
    .end local v5    # "jsEvent":Lorg/json/JSONObject;
    .end local v6    # "jsonMsg":Lorg/json/JSONObject;
    .end local v7    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 297
    .end local v0    # "asyncCallId":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "error":Z
    .end local v3    # "instanceID":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 304
    .restart local v0    # "asyncCallId":Ljava/lang/String;
    .restart local v2    # "error":Z
    .restart local v3    # "instanceID":I
    .restart local v6    # "jsonMsg":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v9, "deliverysuccess"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
