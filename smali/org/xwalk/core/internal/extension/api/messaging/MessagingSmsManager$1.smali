.class Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$1;
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
    .line 201
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$1;->this$0:Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v9, "pdus"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v7, v9

    check-cast v7, [Ljava/lang/Object;

    .line 211
    .local v7, "pdus":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_0

    .line 213
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v5, "jsonMsg":Lorg/json/JSONObject;
    const-string v9, "cmd"

    const-string v10, "received"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    aget-object v9, v7, v2

    check-cast v9, [B

    check-cast v9, [B

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 218
    .local v6, "msgs":Landroid/telephony/SmsMessage;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 219
    .local v3, "jsData":Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 221
    .local v4, "jsMsg":Lorg/json/JSONObject;
    const-string v9, "message"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v9, "messageID"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v9, "type"

    const-string v10, "sms"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v9, "serviceID"

    const-string v10, "sim0"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v9, "from"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, "sDateFormat":Ljava/text/SimpleDateFormat;
    const-string v9, "timestamp"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v9, "body"

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    iget-object v9, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$1;->mMessaging:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->broadcastMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v3    # "jsData":Lorg/json/JSONObject;
    .end local v4    # "jsMsg":Lorg/json/JSONObject;
    .end local v5    # "jsonMsg":Lorg/json/JSONObject;
    .end local v6    # "msgs":Landroid/telephony/SmsMessage;
    .end local v8    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
